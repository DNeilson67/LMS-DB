from django.urls import path
from authy.views import UserProfile, Signup, PasswordChange, PasswordChangeDone, EditProfile

from django.contrib.auth import views as authViews 



urlpatterns = [
    path('admin/profile/edit', EditProfile, name='edit-profile'),
   	path('admin/signup/', Signup, name='signup'),
   	path('admin/login/', authViews.LoginView.as_view(template_name='registration/login.html'), name='login'),
   	path('admin/logout/', authViews.LogoutView.as_view(), {'next_page' : 'index'}, name='logout'),
   	path('admin/changepassword/', PasswordChange, name='change_password'),
   	path('admin/changepassword/done', PasswordChangeDone, name='change_password_done'),
   	path('admin/passwordreset/', authViews.PasswordResetView.as_view(), name='password_reset'),
   	path('admin/passwordreset/done', authViews.PasswordResetDoneView.as_view(), name='password_reset_done'),
   	path('admin/passwordreset/<uidb64>/<token>/', authViews.PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
   	path('admin/passwordreset/complete/', authViews.PasswordResetCompleteView.as_view(), name='password_reset_complete'),
]