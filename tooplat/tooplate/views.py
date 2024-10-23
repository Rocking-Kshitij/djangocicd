from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def index(request):
    print("view worked")
    return render(request, "./index.html")