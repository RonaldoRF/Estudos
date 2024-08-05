from django.db import models
from Users.models import Users

class Templates(models.Model):
    Id = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=100)
    Description = models.TextField(null=True, blank=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='UpdatedBy')

    def __str__(self):
        return self.Name
