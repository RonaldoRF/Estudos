from django.urls import path
from .views import get_states

urlpatterns = [
    path('', get_states, name='get_states'),
]
