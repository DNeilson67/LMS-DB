from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse

from .models import Student
from .models import Teacher
from .forms import StudentForm, TeacherForm

def index(request):
    return render(request, 'students/index.html', {
        'students': Student.objects.all(),
        'teachers': Teacher.objects.all()
    })

# Student Data

def view_student(request, student_id):
    student = Student.objects.get(pk = student_id)
    return HttpResponseRedirect(reverse('index'))

def add_student(request):
    if request.method == 'POST':
        form = StudentForm(request.POST)
        if form.is_valid():
            new_full_name = form.cleaned_data['full_name']
            new_email= form.cleaned_data['email']
            new_major= form.cleaned_data['major']
            new_gpa = form.cleaned_data['gpa']

        new_student = Student(
            full_name = new_full_name,
            email = new_email,
            major = new_major,
            gpa = new_gpa
        )

        new_student.save()

        return render(request, 'students/add_student.html', {
            'form':StudentForm(),
            'success':True
        })
    
    else:
        form = StudentForm()
    return render(request, 'students/add_student.html', {
        'form': StudentForm()
    })
    
def edit_student(request, student_id):
    if request.method == 'POST':
        student = Student.objects.get(pk = student_id)
        form = StudentForm(request.POST, instance=student)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':StudentForm(),
            'success':True
        })
    else:
        student = Student.objects.get(pk=student_id)
        form = StudentForm(instance=student)
    return render(request, 'students/edit.html', {
        'form': form
    })

def delete_student(request, student_id):
    if request.method == 'POST':
        student = Student.objects.get(pk=student_id)
        student.delete()
    return HttpResponseRedirect(reverse("index"))

# Teachers

def view_teacher(request, teacher_id):
    teacher = Teacher.objects.get(pk = teacher_id)
    return HttpResponseRedirect(reverse('index'))

def add_teacher(request):
    if request.method == 'POST':
        form = TeacherForm(request.POST)
        if form.is_valid():
            new_full_name = form.cleaned_data['full_name']
            new_email= form.cleaned_data['email']
            new_courses= form.cleaned_data['courses']

        new_teacher = Teacher(
            full_name = new_full_name,
            email = new_email,
            courses = new_courses
        )

        new_teacher.save()

        return render(request, 'students/add_teacher.html', {
            'form':TeacherForm(),
            'success':True
        })
    
    else:
        form = TeacherForm()
    return render(request, 'students/add_teacher.html', {
        'form': TeacherForm()
    })
    
def edit_teacher(request, teacher_id):
    if request.method == 'POST':
        teacher = Teacher.objects.get(pk = teacher_id)
        form = TeacherForm(request.POST, instance=teacher)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':TeacherForm(),
            'success':True
        })
    else:
        teacher = Teacher.objects.get(pk=teacher_id)
        form = TeacherForm(instance=teacher)
    return render(request, 'students/edit.html', {
        'form': form
    })

def delete_teacher(request, teacher_id):
    if request.method == 'POST':
        teacher = Teacher.objects.get(pk=teacher_id)
        teacher.delete()
    return HttpResponseRedirect(reverse("index"))
