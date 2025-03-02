import heapq
import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from analizador.algoritmos.dijkstra import dijkstra  # ✅ Importamos desde el archivo correcto

@csrf_exempt
def run_dijkstra(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            print("📡 Datos recibidos en Django:", data)  # 🔥 Verifica lo que llega

            graph = data.get("graph", {})
            start = data.get("start", None)
            end = data.get("end", None)

            if not graph or start is None or end is None:
                return JsonResponse({"error": "Faltan parámetros 'graph', 'start' o 'end'"}, status=400)

            # Convertir claves de graph a enteros
            graph = {int(k): [(int(n), w) for n, w in v] for k, v in graph.items()}
            print("🔍 Grafo procesado en Django:", graph)  # 🔍 Verifica si se convirtió bien

            distances = dijkstra(graph, int(start))

            if int(end) not in distances or distances[int(end)] == float("inf"):
                return JsonResponse({"error": f"No hay camino de {start} a {end}."}, status=400)

            return JsonResponse({
                "distance": distances[int(end)],
                "distances": distances  # ✅ Devuelve todas las distancias para resaltar la ruta
            })


        except Exception as e:
            import traceback
            print(" Error en Django:", traceback.format_exc())  # 🔥 Ver error detallado
            return JsonResponse({"error": str(e)}, status=500)
