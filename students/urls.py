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
    path('delete_teacher/<int:teacher_id>/', views.delete_teacher, name = 'delete_teacher')
]