import heapq
import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from analizador.algoritmos.dijkstra import dijkstra  # ✅ Importamos Dijkstra correctamente
from analizador.A_lexico.lexer import analizar_codigo as lexer
from analizador.A_sintactico.parser import analizar_codigo as parser
from analizador.A_semantico.semantico import AnalizadorSemantico

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
            print("❌ Error en Django:", traceback.format_exc())  # 🔥 Ver error detallado
            return JsonResponse({"error": str(e)}, status=500)

@csrf_exempt
def analizar_grafo(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            codigo = data.get("codigo", "").strip()

            if not codigo:
                return JsonResponse({"success": False, "error": "El código no puede estar vacío"}, status=400)

            # 🔍 Ejecutar análisis léxico
            tokens, errores_lexicos = lexer(codigo)
            token_list = [{"tipo": token.type, "valor": token.value, "linea": token.lineno, "posicion": token.lexpos} for token in tokens]

            if errores_lexicos:
                return JsonResponse({
                    "success": False,
                    "error": "⚠️ Se detectaron errores léxicos.",
                    "tokens": token_list,
                    "errores_lexicograficos": errores_lexicos  # Aquí estaba el error
                }, status=400)

            # 🔍 Ejecutar análisis sintáctico
            resultado_parser = parser(codigo)

            if not resultado_parser["exito"]:
                return JsonResponse({
                    "success": True,  # Se mantiene True para que el frontend pueda renderizar los tokens
                    "tokens": token_list,
                    "sintaxis": {
                        "mensaje": "⚠️ Se encontraron errores en el análisis sintáctico.",
                        "errores": resultado_parser["errores"],
                    },
                    "semantica": {
                        "mensaje": "⚠️ No se ejecutó el análisis semántico debido a errores sintácticos.",
                        "errores": None
                    }
                })

            # 🔍 Ejecutar análisis semántico
            errores_semanticos = resultado_parser["errores_semanticos"]
            analisis_semantico = "✔️ El análisis semántico se completó correctamente." if not errores_semanticos else "⚠️ Se encontraron errores en el análisis semántico."

            return JsonResponse({
                "success": True,
                "tokens": token_list,
                "sintaxis": {
                    "mensaje": "✔️ El análisis sintáctico se completó correctamente.",
                    "errores": [],
                },
                "semantica": {
                    "mensaje": analisis_semantico,
                    "errores": errores_semanticos
                }
            })

        except json.JSONDecodeError:
            return JsonResponse({"success": False, "error": "Formato JSON inválido"}, status=400)
        except Exception as e:
            import traceback
            print("❌ Error en analizar_grafo:", traceback.format_exc())
            return JsonResponse({"success": False, "error": str(e)}, status=500)

    return JsonResponse({"success": False, "error": "Método no permitido"}, status=405)

