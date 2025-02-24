"""
URL configuration for mi_proyecto project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from analizador.views import home, about, info_grafos, idiomas
from django.conf.urls.i18n import i18n_patterns  # ✅ Importamos i18n_patterns



urlpatterns = [
    path('', home, name='home'),
    path('about/', about, name='about'),
    path('info_grafos/', info_grafos, name='info_grafos'),
    path('idiomas/', idiomas, name='idiomas'),
]

urlpatterns += [
    path("i18n/", include("django.conf.urls.i18n")),
]
