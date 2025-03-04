from django.contrib import admin
from django.urls import path, include  # ✅ Importamos include para registrar las rutas de la API

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('api.urls')),  # ✅ Esto enlaza las rutas de la API
]
