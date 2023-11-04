from django import forms
from .models import Course, Major, Student
from .models import Teacher

class StudentForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['student_id', 'full_name', 'email', 'major','gpa']
        labels = {
            'student_id' : 'EduID',
            'full_name' : 'Name',
            'email' : 'Email',
            'major' : 'Major',
            'gpa'   : 'GPA'
        }
        widgets = {
            'student_id' : forms.NumberInput(attrs={'class':'form-control'}),
            'full_name' : forms.TextInput(attrs={'class':'form-control'}),
            'email' : forms.TextInput(attrs={'class':'form-control'}),
            'major' : forms.TextInput(attrs={'class':'form-control'}),
            'gpa'   : forms.NumberInput(attrs={'class':'form-control'})
        }

class TeacherForm(forms.ModelForm):
    class Meta:
        model = Teacher
        fields = ['teacher_id', 'full_name', 'email', 'courses']
        labels = {
            'teacher_id' : 'EduTeachID',
            'full_name' : 'Name',
            'email' : 'Email',
            'courses':'Courses'
        }
        widgets = {
            'teacher_id' : forms.NumberInput(attrs={'class':'form-control'}),
            'full_name' : forms.TextInput(attrs={'class':'form-control'}),
            'email' : forms.TextInput(attrs={'class':'form-control'}),
            'courses' : forms.TextInput(attrs={'class':'form-control'}),
        }

class MajorForm(forms.ModelForm):
    class Meta:
        model = Major
        fields = ['major_id', 'major_name']
        labels = {
            'major_id' : 'MajorID',
            'major_name' : 'Major Name',
        }
        widgets = {
            'major_id' : forms.TextInput(attrs={'class':'form-control'}),
            'major_name' : forms.TextInput(attrs={'class':'form-control'}),
        }


class CourseForm(forms.ModelForm):
    class Meta:
        model = Course
        fields = ['course_id', 'course_name', 'scu']
        labels = {
            'course_id' : 'CourseID',
            'course_name' : 'Course Name',
            'scu': 'SCU'
        }
        widgets = {
            'course_id' : forms.NumberInput(attrs={'class':'form-control'}),
            'course_name' : forms.TextInput(attrs={'class':'form-control'}),
            'scu':forms.NumberInput(attrs={'class':'form-control'}),
        }
