from django.db import models
import os
import datetime

def get_upload_path(instance, filename):
    st = datetime.datetime.now().strftime('%Y%m%d-%H%M%S')
    ext = filename.split('.')[-1]
    filename = "%s-%s.%s" % (filename, st, ext)
    return os.path.join(
      "%s" % instance.instance, filename)

class Report(models.Model):
  instance = models.CharField(max_length=20)
  status = models.IntegerField()
  cofistatus = models.IntegerField(blank=True,null=True)
  date = models.DateTimeField(auto_now_add=True)
  document = models.FileField(upload_to=get_upload_path)
  cofidocument = models.FileField(upload_to=get_upload_path,blank=True)

class ValidInstance(models.Model):
    name = models.CharField(max_length=20)
