# Generated by Django 4.2.6 on 2023-11-03 12:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('students', '0004_teacher'),
    ]

    operations = [
        migrations.CreateModel(
            name='Course',
            fields=[
                ('course_id', models.BigAutoField(max_length=11, primary_key=True, serialize=False)),
                ('course_name', models.CharField(max_length=50)),
                ('scu', models.IntegerField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Major',
            fields=[
                ('major_id', models.BigAutoField(max_length=4, primary_key=True, serialize=False)),
                ('major_name', models.CharField(max_length=50)),
            ],
        ),
    ]