from django import forms
from .models import Course, Major, Major_Course, Student
from .models import Teacher

class StudentForm(forms.ModelForm):
    class Meta:
        majorChoices = Major.objects.all()
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
            'major' : forms.Select(choices = majorChoices),
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
        }
    courses = forms.ModelMultipleChoiceField(
            queryset= Course.objects.all(),
            widget=forms.CheckboxSelectMultiple
    )

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
        fields = ['course_id', 'course_name', 'scu', 'sem']
        labels = {
            'course_id' : 'CourseID',
            'course_name' : 'Course Name',
            'scu': 'SCU',
            'sem': 'Semester'
        }
        widgets = {
            'course_id' : forms.NumberInput(attrs={'class':'form-control'}),
            'course_name' : forms.TextInput(attrs={'class':'form-control'}),
            'scu':forms.NumberInput(attrs={'class':'form-control'}),
            'sem':forms.NumberInput(attrs={'class':'form-control'})
        }

class Major_CourseForm(forms.ModelForm):
    class Meta:
        model = Major_Course
        fields = ['id', 'major_id', 'course_id']
        labels = {
            'id'        : 'ID',
            'major_id'  : 'MajorID',
            'course_id' : 'CourseID',
        }
        widgets = {
            'major_id'  : forms.Select(choices = Major.objects.all()),
            'course_id' : forms.Select(choices = Course.objects.all())
        }
