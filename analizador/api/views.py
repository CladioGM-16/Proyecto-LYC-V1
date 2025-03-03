import heapq
import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from analizador.algoritmos.dijkstra import dijkstra  # ✅ Importamos Dijkstra correctamente
from analizador.A_lexico.lexer import analizar_codigo as lexer
from analizador.A_sintactico.parser import analizar_codigo as parser

@csrf_exempt
def run_dijkstra(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            print("📡 Datos recibidos en Django:", data)

            graph = data.get("graph", {})
            start = data.get("start", None)
            end = data.get("end", None)

            # Validaciones
            if not isinstance(graph, dict):
                return JsonResponse({"error": "El parámetro 'graph' debe ser un diccionario válido."}, status=400)

            if start is None or end is None:
                return JsonResponse({"error": "Los parámetros 'start' y 'end' son obligatorios."}, status=400)

            if int(start) not in graph or int(end) not in graph:
                return JsonResponse({"error": f"Uno o ambos nodos '{start}' y '{end}' no existen en el grafo."}, status=400)

            # Convertir claves del grafo a enteros
            graph = {int(k): [(int(n), w) for n, w in v] for k, v in graph.items()}
            print("🔍 Grafo procesado en Django:", graph)

            distances = dijkstra(graph, int(start))

            if int(end) not in distances or distances[int(end)] == float("inf"):
                return JsonResponse({"error": f"No hay camino de {start} a {end}."}, status=400)

            return JsonResponse({
                "distance": distances[int(end)],
                "distances": distances
            })

        except Exception as e:
            import traceback
            print("❌ Error en Django:", traceback.format_exc())
            return JsonResponse({"error": str(e)}, status=500)

@csrf_exempt
def analizar_grafo(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            codigo = data.get("codigo", "").strip()

            if not codigo:
                return JsonResponse({"success": False, "error": "El código no puede estar vacío"}, status=400)

            # Ejecutar análisis léxico y sintáctico
            tokens = lexer(codigo)
            sintaxis = parser(codigo)

            return JsonResponse({
                "success": True,
                "tokens": [str(token) for token in tokens],
                "sintaxis": sintaxis
            })
        except json.JSONDecodeError:
            return JsonResponse({"success": False, "error": "Formato JSON inválido"}, status=400)
        except Exception as e:
            return JsonResponse({"success": False, "error": str(e)}, status=500)

    return JsonResponse({"success": False, "error": "Método no permitido"}, status=405)
