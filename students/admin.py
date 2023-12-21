from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Major)
admin.site.register(Course)
admin.site.register(SCU)
admin.site.register(Material)
admin.site.register(Assignment)
admin.site.register(Session)
admin.site.register(StudentAssignment)