# Generated by Django 4.2.6 on 2023-11-05 15:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('students', '0020_remove_teacher_courses_teacher_courses'),
    ]

    operations = [
        migrations.RenameField(
            model_name='teacher',
            old_name='courses',
            new_name='course',
        ),
    ]