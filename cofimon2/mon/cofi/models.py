from django.db import models
import os
import datetime

def get_upload_path(instance, filename):
  st = datetime.datetime.now().strftime('%Y%m%d-%H%M%S')
  ext = filename.split('.')[-1]
  filename = "%s-%s.%s" % (filename, st, ext)
  return os.path.join("%s" % instance.instance, filename)

class Report(models.Model):
  id = models.IntegerField(primary_key=True, unique=True)
  instance = models.CharField(max_length=20, default=None, blank=False, null=False)
  status = models.IntegerField(default=None, blank=False, null=False)
  cofistatus = models.IntegerField(default=None, blank=False, null=False)
  date = models.DateTimeField(auto_now_add=True)
  impfile = models.FileField(upload_to=get_upload_path, blank=False, null=False)
  dlfile = models.FileField(upload_to=get_upload_path, blank=False, null=False)

class ValidInstance(models.Model):
  name = models.CharField(max_length=20, primary_key=True, unique=True)
