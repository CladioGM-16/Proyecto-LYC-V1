from django.db import models

class Graph(models.Model):
    name = models.CharField(max_length=100, unique=True)
    nodes = models.JSONField()  # Guarda nodos en formato JSON
    edges = models.JSONField()  # Guarda aristas en formato JSON

    def __str__(self):
        return self.name
