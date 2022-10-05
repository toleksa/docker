from django.urls import path
from django.conf.urls.static import static

from . import views

urlpatterns = [
  path('', views.mainpage, name='mainpage'),
  path('instance/<str:instance_id>', views.instance, name='instance'),
  path('form/', views.report_upload, name='report_upload'),
  path('api/', views.api, name='api'),
]
