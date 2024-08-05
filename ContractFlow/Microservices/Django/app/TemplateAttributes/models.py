from django.db import models

class TemplateAttributes(models.Model):
    Id = models.AutoField(primary_key=True)
    TemplateID = models.IntegerField()
    AttributeID = models.IntegerField()
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return f"TemplateID: {self.TemplateID}, AttributeID: {self.AttributeID}"
