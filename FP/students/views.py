from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
from .models import Student
from .forms import StudentForm

# Create your views here.
def index(request):
    return render(request, 'students/index.html', {
        'students': Student.objects.all()
    })

def view_student(request, id):
    student = Student.objects.get(pk = id)
    return HttpResponseRedirect(reverse('index'))

def add(request):
    if request.method == 'POST':
        form = StudentForm(request.POST)
        if form.is_valid():
            new_student_id = form.cleaned_data['student_id']
            new_full_name = form.cleaned_data['full_name']
            new_email= form.cleaned_data['email']
            new_major= form.cleaned_data['major']
            new_gpa = form.cleaned_data['gpa']

        new_student = Student(
            student_id = new_student_id,
            full_name = new_full_name,
            email = new_email,
            major = new_major,
            gpa = new_gpa
        )

        new_student.save()

        return render(request, 'students/add.html', {
            'form':StudentForm(),
            'success':True
        })
    else:
        form = StudentForm()
    return render(request, 'students/add.html', {
        'form': StudentForm()
    })
    
def edit(request, id):
    if request.method == 'POST':
        student = Student.objects.get(pk = id)
        form = StudentForm(request.POST, instance=student)
        if form.is_valid():
            form.save()
        return render(request, 'students/edit.html', {
            'form':StudentForm(),
            'success':True
        })
    else:
        student = Student.objects.get(pk=id)
        form = StudentForm(instance=student)
    return render(request, 'students/edit.html', {
        'form': form
    })

def delete(request, id):
    if request.method == 'POST':
        student = Student.objects.get(pk=id)
        student.delete()
    return HttpResponseRedirect(reverse("index"))