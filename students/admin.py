from django.contrib import admin
from .models import Student
from .models import Teacher
from .models import Major
from .models import Course

# Register your models here.
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Major)
admin.site.register(Course)