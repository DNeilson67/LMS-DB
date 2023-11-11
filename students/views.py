from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse

from .models import Course, Student, Teacher, Major, Major_Course
from .forms import CourseForm, Major_CourseForm, MajorForm, StudentForm, TeacherForm

def index(request):
    return render(request, 'students/index.html', {
        'students': Student.objects.all(),
        'teachers': Teacher.objects.all(),
        'majors':Major.objects.all(),
        'courses':Course.objects.all(),
        'major_courses': Major_Course.objects.all()
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
            form.save()

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
            'success':True
        })
    
    else:
        form = MajorForm()
    return render(request, 'students/add_major.html', {
        'form': MajorForm()
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
            'success':True
        })
    else:
        student = Course.objects.get(pk=course_id)
        form = CourseForm(instance=student)
    return render(request, 'students/edit.html', {
        'form': form
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
            'success':True
        })
    
    else:
        form = CourseForm()
    return render(request, 'students/add_course.html', {
        'form': CourseForm()
    })

def delete_course(request, course_id):
    if request.method == 'POST':
        course = Course.objects.get(pk=course_id)
        course.delete()
    return HttpResponseRedirect(reverse("index")) 


## Major_Course
def view_major_course(request, major_id, course_id):
    major_course = Major_Course.objects.get(major_id = major_id, course_id = course_id)
    return HttpResponseRedirect(reverse('index'))
   
def edit_major_course(request, major_id, course_id):
    if request.method == 'POST':
        student = Major_Course.objects.get(major_id = major_id, course_id = course_id)
        form = Major_CourseForm(request.POST, instance=student)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':Major_CourseForm(),
            'success':True
        })
    else:
        student = Major_Course.objects.get(major_id = major_id, course_id = course_id)
        form = Major_CourseForm(instance=student)
    return render(request, 'students/edit.html', {
        'form': form
    })

def add_major_course(request):
    if request.method == 'POST':
        form = Major_CourseForm(request.POST)
        if form.is_valid():
            form.save

        return render(request, 'students/add_major_course.html', {
            'form':Major_CourseForm(),
            'success':True
        })
    
    else:
        form = Major_CourseForm()
    return render(request, 'students/add_major_course.html', {
        'form': Major_CourseForm()
    })

def delete_major_course(request, major_id, course_id):
    if request.method == 'POST':
        course = Major_Course.objects.get(major_id = major_id, course_id = course_id)
        course.delete()
    return HttpResponseRedirect(reverse("index")) 

