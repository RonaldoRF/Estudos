from django.http import JsonResponse
from .models import Street

def get_street(request):
    streets = User.objects.all().values()
    return JsonResponse(list(streets), safe=False)