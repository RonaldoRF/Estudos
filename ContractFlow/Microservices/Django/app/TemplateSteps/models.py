from django.db import models
from Users.models import Users

class TemplateSteps(models.Model):
    Id = models.AutoField(primary_key=True)
    TemplateID = models.IntegerField()
    StepID = models.IntegerField()
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='UpdatedBy')

    def __str__(self):
        return f"Template {self.TemplateID} - Step {self.StepID}"
