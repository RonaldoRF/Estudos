#from django.shortcuts import render

from django.http import JsonResponse
from .models import State

def get_states(request):
    states = State.objects.all().values()
    return JsonResponse(list(states), safe=False)
