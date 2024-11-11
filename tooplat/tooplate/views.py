from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import TemplateView

# Create your views here.

def host_path(request):
    return redirect('/index')

def index(request): # function based view
    return render(request, "./index.html")

def wallet_view(request): # function based view
    return render(request, "./wallet.html")

def profile_view(request): # function based view
    return render(request, "./profile.html")

class SettingPage(TemplateView): # class based view
    template_name = "setting.html"

class HelpPage(TemplateView): # class based view
    template_name = "help-center.html"