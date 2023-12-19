from django.db import models
from ckeditor.fields import RichTextField
from django.contrib.auth.models import User
from django.urls import reverse
import uuid
# Create your models here. (Database)

class Course(models.Model):
    course_id = models.BigAutoField(primary_key=True, serialize=False)
    course_name = models.CharField(max_length=50)
    scu = models.ForeignKey("scu", on_delete=models.SET_NULL, null = True)
    sem = models.PositiveSmallIntegerField()

    def __str__(self) -> str:
        return f"{self.course_name}"

class SCU(models.Model):
    scu = models.PositiveSmallIntegerField(primary_key=True)
    MaxAbs = models.PositiveSmallIntegerField()
    TotalSec = models.PositiveSmallIntegerField()

    def __str__(self) -> str:
        return f"{self.scu}"
    
class Major(models.Model):
    major_id = models.CharField(primary_key=True, serialize=False, max_length=4, unique = True)
    major_name = models.CharField(max_length=50)

    def __str__(self) -> str:
        return f"{self.major_id}"
    
class Teacher(models.Model):
    teacher_id = models.BigAutoField(primary_key=True, auto_created=True, serialize=False)
    full_name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    courses = models.ManyToManyField(Course)

    def __str__(self) -> str:
        return f"{self.teacher_id}"
    
class Student(models.Model):
    student_id = models.BigAutoField(primary_key=True, auto_created=True, serialize=False)
    full_name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=50, default = "edutify")
    major = models.ForeignKey("major", on_delete=models.SET_NULL, null = True)
    gpa = models.FloatField()
    courses = models.ManyToManyField(Course)

    def __str__(self) -> str:
        return f"""
Student Details : \n
ID : {self.student_id}
Name : {self.full_name}
Email : {self.email}
Major  : {self.major}
GPA : {self.gpa}
"""