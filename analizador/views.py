from django.shortcuts import render

def home(request):
    return render(request, 'home.html')

def about(request):
    return render(request, 'about.html')

def info_grafos(request):  
    return render(request, 'info_grafos.html')

def idiomas(request):  
    return render(request, 'idiomas.html')