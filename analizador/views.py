from django.shortcuts import render

<<<<<<< HEAD
from django.utils.translation import gettext as _ #este _ Se pude usar en todos, o sea si son variables etc, igual funca

def home(request):

    context = {
        'message': _('Bienvenido a la página principal')
    }
    return render(request, 'home.html', context)
from django.utils.timezone import now  # Importamos la función para obtener el timestamp

def home(request):
    return render(request, 'home.html', {'timestamp': now().timestamp()})

def about(request):
    return render(request, 'about.html', {'timestamp': now().timestamp()})

def info_grafos(request):  
    return render(request, 'info_grafos.html', {'timestamp': now().timestamp()})

def idiomas(request):  
    return render(request, 'idiomas.html', {'timestamp': now().timestamp()})

def crear_grafos(request):
    return render(request, 'crear_grafo.html')
=======
def home(request):
    return render(request, 'home.html')

def about(request):
    return render(request, 'about.html')

def info_grafos(request):  
    return render(request, 'info_grafos.html')

def idiomas(request):  
    return render(request, 'idiomas.html')
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
