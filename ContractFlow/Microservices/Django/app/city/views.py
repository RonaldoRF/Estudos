#from django.shortcuts import render

from django.http import JsonResponse
from .models import City

def get_cities(request):
    cities = City.objects.all().values()
    return JsonResponse(list(cities), safe=False)
