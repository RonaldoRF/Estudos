from django.db import models
from Users.models import Users

class TemplateElements(models.Model):
    Id = models.AutoField(primary_key=True)
    TemplateAttributeID = models.IntegerField()
    ElementTypeID = models.IntegerField()  # Tipo de elemento (ex: 'input', 'select', 'textarea')
    PositionX = models.IntegerField()  # Posição X na página
    PositionY = models.IntegerField()  # Posição Y na página
    Width = models.IntegerField()  # Largura do elemento
    Height = models.IntegerField()  # Altura do elemento
    Style = models.TextField(blank=True, null=True)  # JSON contendo estilos CSS (ex: {"color": "red", "fontSize": "12px"})
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='UpdatedBy')

    def __str__(self):
        return f"TemplateElement {self.Id}"
