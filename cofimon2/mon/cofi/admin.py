from django.contrib import admin

from .models import Report
from .models import ValidInstance

admin.site.register(Report)
admin.site.register(ValidInstance)
