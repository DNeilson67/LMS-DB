from django.urls import path

from . import views

urlpatterns = [
    path('', views.view_startpage, name = ''),
    path('student/login', views.login_student, name = 'student_login'),
    path('admin/dashboard', views.admindashboard, name = 'admin_dashboard'),
    path('admin/dashboard/search', views.get_student_search, name = 'get_student_search'),
    #Student Views
    path('<int:student_id>', views.view_student, name = 'view_student'),
    path('admin/add_student/', views.add_student, name = 'add_student'),
    path('admin/edit_student/<int:student_id>/', views.edit_student, name = 'edit_student'),
    path('admin/delete_student/<int:student_id>/', views.delete_student, name = 'delete_student'),
    #Teacher Views
    path('<int:teacher_id>', views.view_teacher, name = 'view_teacher'),
    path('admin/add_teacher/', views.add_teacher, name = 'add_teacher'),
    path('admin/edit_teacher/<int:teacher_id>/', views.edit_teacher, name = 'edit_teacher'),
    path('admin/delete_teacher/<int:teacher_id>/', views.delete_teacher, name = 'delete_teacher'),
    #Major View
    path('admin/add_major/', views.add_major, name = 'add_major'),
    path('admin/delete_major/<slug:major_id>/', views.delete_major, name = 'delete_major'),
    #Course View
    path('<int:course_id>', views.view_course, name = 'view_course'),
    path('admin/add_course/', views.add_course, name = 'add_course'),
    path('admin/edit_course/<int:course_id>/', views.edit_course, name = 'edit_course'),
    path('admin/delete_course/<int:course_id>/', views.delete_course, name = 'delete_course'),
    #Classroom_Course
    path('student_view_course/', views.student_view_course, name = 'student_view_course'),
    # Student Dashboard
    path('student/dashboard', views.index, name = 'student_dashboard'),
    path('student/timetable', views.view_timetable, name = 'student_timetable'),
    path('student/exam', views.view_exam, name = 'student_exam'),
    path('student/changepass', views.view_change_password, name = 'student_change_password'),
    ]