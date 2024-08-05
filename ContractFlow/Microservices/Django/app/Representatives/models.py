from django.db import models

class Representatives(models.Model):
    Id = models.AutoField(primary_key=True)
    CustomerId = models.IntegerField()
    RepresentativeName = models.CharField(max_length=100)
    Position = models.CharField(max_length=50, null=True, blank=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.RepresentativeName
