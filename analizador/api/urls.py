from django.urls import path
from .views import run_dijkstra

urlpatterns = [
    path("run_dijkstra/", run_dijkstra, name="run_dijkstra"),
]
