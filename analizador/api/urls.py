from django.urls import path
from .views import analizar_grafo, run_dijkstra  # Importamos las vistas

urlpatterns = [
    path("analizar/", analizar_grafo, name="analizar_grafo"),
    path("dijkstra/", run_dijkstra, name="run_dijkstra"),
]