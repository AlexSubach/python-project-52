from django.urls import reverse_lazy
from django.views.generic.base import TemplateView
from django.contrib.auth.views import LoginView, LogoutView


class IndexView(TemplateView):
    template_name = "index.html"


class LoginUser(LoginView):
    success_message = "Вы залогинены"
    template_name = "login.html"

    def get_success_url(self):
        return reverse_lazy("index")


class LogoutUser(LogoutView):
    pass
