from django.shortcuts import render
from django.utils.timezone import now  # Importamos la función para obtener el timestamp

def home(request):
    return render(request, 'home.html', {'timestamp': now().timestamp()})

def about(request):
    return render(request, 'about.html', {'timestamp': now().timestamp()})

def info_grafos(request):  
    return render(request, 'info_grafos.html', {'timestamp': now().timestamp()})

def idiomas(request):  
    return render(request, 'idiomas.html', {'timestamp': now().timestamp()})
