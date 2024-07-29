from django.urls import path
from .views import get_countries

urlpatterns = [
    path('', get_countries, name='get_countries'),
]
