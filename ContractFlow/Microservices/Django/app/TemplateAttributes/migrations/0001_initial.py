# Generated by Django 5.0.7 on 2024-07-30 04:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TemplateAttributes',
            fields=[
                ('Id', models.AutoField(primary_key=True, serialize=False)),
                ('TemplateID', models.IntegerField()),
                ('AttributeID', models.IntegerField()),
                ('CreationDate', models.DateTimeField(auto_now_add=True)),
                ('CreatedBy', models.IntegerField(blank=True, null=True)),
                ('LastUpdateDate', models.DateTimeField(auto_now=True)),
                ('UpdatedBy', models.IntegerField(blank=True, null=True)),
            ],
        ),
    ]
