from django.db import models

# Create your models here. (Database)
class Student(models.Model):
    student_id = models.BigAutoField(primary_key=True, auto_created=True, serialize=False)
    full_name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    major = models.CharField(max_length=50)
    gpa = models.FloatField()

    def __str__(self) -> str:
        return f"""
Student Details : \n
ID : {self.student_id}
Name : {self.full_name}
Email : {self.email}
Major  : {self.major}
GPA : {self.gpa}
"""
    
class Teacher(models.Model):
    teacher_id = models.BigAutoField(primary_key=True, auto_created=True, serialize=False)
    full_name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    courses = models.CharField(max_length=50)

    def __str__(self) -> str:
        return f"{self.teacher_id}"