from django.urls import path
from .views import analizar_grafo, run_dijkstra  # Importamos las vistas

urlpatterns = [
    path("run_dijkstra/", run_dijkstra, name="run_dijkstra"),
    path("analizar/", analizar_grafo, name="analizar_grafo"),
]