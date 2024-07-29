from django.urls import path
from .views import get_street

urlpatterns = [
    path('', get_street, name='get_street'),
]
