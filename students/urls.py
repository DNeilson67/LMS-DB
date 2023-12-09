from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name = 'index'),
    #Student Views
    path('<int:student_id>', views.view_student, name = 'view_student'),
    path('add_student/', views.add_student, name = 'add_student'),
    path('edit_student/<int:student_id>/', views.edit_student, name = 'edit_student'),
    path('delete_student/<int:student_id>/', views.delete_student, name = 'delete_student'),
    #Teacher Views
    path('<int:teacher_id>', views.view_teacher, name = 'view_teacher'),
    path('add_teacher/', views.add_teacher, name = 'add_teacher'),
    path('edit_teacher/<int:teacher_id>/', views.edit_teacher, name = 'edit_teacher'),
    path('delete_teacher/<int:teacher_id>/', views.delete_teacher, name = 'delete_teacher'),
    #Major View
    path('add_major/', views.add_major, name = 'add_major'),
    path('delete_major/<slug:major_id>/', views.delete_major, name = 'delete_major'),
    #Course View
    path('<int:course_id>', views.view_course, name = 'view_course'),
    path('add_course/', views.add_course, name = 'add_course'),
    path('edit_course/<int:course_id>/', views.edit_course, name = 'edit_course'),
    path('delete_course/<int:course_id>/', views.delete_course, name = 'delete_course'),
    #Major_Course View
    path('<slug:major_id>/<int:course_id>', views.view_major_course, name = 'view_major_course'),
    path('add_major_course/', views.add_major_course, name = 'add_major_course'),
    path('edit_major_course/<slug:major_id>/<int:course_id>', views.edit_major_course, name = 'edit_major_course'),
    path('delete_major_course/<slug:major_id>/<int:course_id>', views.delete_major_course, name = 'delete_major_course'),
    #Classroom_Course
    path('student_view_course/', views.student_view_course, name = 'student_view_course'),
    # path('dummy_login/', views.dummy_login, name='dummy_login'),

    ]