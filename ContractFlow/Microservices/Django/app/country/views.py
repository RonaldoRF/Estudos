#from django.shortcuts import render

from django.http import JsonResponse
from .models import Country

def get_countries(request):
    countries = Country.objects.all().values()
    return JsonResponse(list(countries), safe=False)
