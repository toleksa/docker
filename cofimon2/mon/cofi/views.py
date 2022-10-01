from django.shortcuts import render,redirect
from django.template import loader
from django.http import HttpResponse, HttpRequest
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Count, F, Sum, Lookup, Field
from django.db.models.query import QuerySet
#from .models import Babe, SiteBabe, AllBabe, Vote, Novote, BestScore, ExternalSite
import os
import random
import datetime
from dateutil.relativedelta import relativedelta

def main():
    response = "<h1>Hello World!</h1>"
    return HttpResponse(response)

