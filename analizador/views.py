from django.shortcuts import render
from django.utils.translation import gettext as _ #este _ Se pude usar en todos, o sea si son variables etc, igual funca

def home(request):

    context = {
        'message': _('Bienvenido a la página principal')
    }
    return render(request, 'home.html', context)

def about(request):
    return render(request, 'about.html')

def info_grafos(request):  
    return render(request, 'info_grafos.html')

def idiomas(request):  
    return render(request, 'idiomas.html')