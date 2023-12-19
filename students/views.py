from django.http import HttpResponseRedirect
from django.shortcuts import render,redirect
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import Permission, User
from django.contrib.contenttypes.models import ContentType
from django.shortcuts import get_object_or_404

from .models import *
from .forms import CourseForm, MajorForm, StudentForm, StudentLoginForm, TeacherForm

def index(request):
    return render(request, 'students/index.html', {
        'user' : request.user.is_authenticated,
        'students': Student.objects.all(),
        'teachers': Teacher.objects.all(),
        'majors':Major.objects.all(),
        'courses':Course.objects.all(),
        'SCU' : SCU.objects.all()
    })

# Student Data

def view_student(request, student_id):
    student = Student.objects.get(pk = student_id)
    return HttpResponseRedirect(reverse('index'))

def add_student(request):
    if request.method == 'POST':
        form = StudentForm(request.POST)
        if form.is_valid():
            form.save()

        return render(request, 'students/add_student.html', {
            'form':StudentForm(),
            'success':True
        })
    
    else:
        form = StudentForm()
    return render(request, 'students/add_student.html', {
        'form': StudentForm(),
        'user' : request.user.is_authenticated,
    })
    
def edit_student(request, student_id):
    if request.method == 'POST':
        student = Student.objects.get(pk = student_id)
        form = StudentForm(request.POST, instance=student)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':StudentForm(),
            'success':True,
            'user' : request.user.is_authenticated,
        })
    else:
        student = Student.objects.get(pk=student_id)
        form = StudentForm(instance=student)
    return render(request, 'students/edit.html', {
        'form': form,
        'user' : request.user.is_authenticated,
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
            form.save()

        return render(request, 'students/add_teacher.html', {
            'form':TeacherForm(),
            'success':True,
            'user' : request.user.is_authenticated,
        })
    
    else:
        form = TeacherForm()
    return render(request, 'students/add_teacher.html', {
        'form': TeacherForm(),
        'user' : request.user.is_authenticated,
    })
    
def edit_teacher(request, teacher_id):
    if request.method == 'POST':
        teacher = Teacher.objects.get(pk = teacher_id)
        form = TeacherForm(request.POST, instance=teacher)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':TeacherForm(),
            'success':True,
            'user' : request.user.is_authenticated,
        })
    else:
        teacher = Teacher.objects.get(pk=teacher_id)
        form = TeacherForm(instance=teacher)
    return render(request, 'students/edit.html', {
        'form': form,
        'user' : request.user.is_authenticated,
    })

def delete_teacher(request, teacher_id):
    if request.method == 'POST':
        teacher = Teacher.objects.get(pk=teacher_id)
        teacher.delete()
    return HttpResponseRedirect(reverse("index"))

## Major
def add_major(request):
    if request.method == 'POST':
        form = MajorForm(request.POST)
        if form.is_valid():
            new_major_id = form.cleaned_data['major_id']
            new_major_name= form.cleaned_data['major_name']

        new_teacher = Major(
            major_id = new_major_id,
            major_name = new_major_name
        )

        new_teacher.save()

        return render(request, 'students/add_major.html', {
            'form':MajorForm(),
            'success':True,
            'user' : request.user.is_authenticated,
        })
    
    else:
        form = MajorForm()
    return render(request, 'students/add_major.html', {
        'form': MajorForm(),
        'user' : request.user.is_authenticated,
    })

def delete_major(request, major_id):
    if request.method == 'POST':
        major = Major.objects.get(pk = major_id)
        major.delete()
    return HttpResponseRedirect(reverse("index"))

## Course
def view_course(request, course_id):
    course = Course.objects.get(pk = course_id)
    return HttpResponseRedirect(reverse('index'))
   
def edit_course(request, course_id):
    if request.method == 'POST':
        student = Course.objects.get(pk = course_id)
        form = CourseForm(request.POST, instance=student)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':CourseForm(),
            'success':True,
            'user' : request.user.is_authenticated,
        })
    else:
        student = Course.objects.get(pk=course_id)
        form = CourseForm(instance=student)
    return render(request, 'students/edit.html', {
        'form': form,
        'user' : request.user.is_authenticated,
    })

def add_course(request):
    if request.method == 'POST':
        form = CourseForm(request.POST)
        if form.is_valid():
            new_course_name= form.cleaned_data['course_name']
            new_scu = form.cleaned_data['scu']
            new_sem = form.cleaned_data['sem']

        new_course = Course(
            course_name = new_course_name,
            scu = new_scu,
            sem = new_sem
        )

        new_course.save()

        return render(request, 'students/add_course.html', {
            'form':CourseForm(),
            'success':True,
            'user' : request.user.is_authenticated,
        })
    
    else:
        form = CourseForm()
    return render(request, 'students/add_course.html', {
        'form': CourseForm(),
        'user' : request.user.is_authenticated,
    })

def delete_course(request, course_id):
    if request.method == 'POST':
        course = Course.objects.get(pk=course_id)
        course.delete()
    return HttpResponseRedirect(reverse("index")) 

def student_view_course(request, email, password):
    # Assuming you have a user object and the associated student object
    student_courses = Student.objects.get(email = email, password = password).courses
    return render(request, 'students/classroom.html', {'courses': student_courses})

def view_startpage(request):
    return render(request, 'students/startpage.html')

def login_student(request):
    if request.method == 'POST':
        form = StudentLoginForm(request.POST)
        form.is_valid()
        email = form.cleaned_data['email']
        password = form.cleaned_data['password']
        try:
            Student.objects.get(email = email, password = password).courses.all
        except:
            return render(request, 'students/login_student.html', {
        'form': StudentLoginForm(),
        'retry': True
    })
        return render(request, 'students/classroom.html', {
            'courses': Student.objects.get(email = email, password = password).courses.all
        })
    
    else:
        form = StudentLoginForm()
    return render(request, 'students/login_student.html', {
        'form': StudentLoginForm()
    })


# def dummy_login(request):
#     # Dummy login logic
#     user = authenticate(request)
#     if user is not None:
#         login(request, user)
#         return redirect('student_view_course', student_id=user.student.id)
#     else:
#         return HttpResponseRedirect('Login failed')

