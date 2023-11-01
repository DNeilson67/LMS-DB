from django import forms
from .models import Student

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