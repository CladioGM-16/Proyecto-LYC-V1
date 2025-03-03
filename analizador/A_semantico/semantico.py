# semantico.py

from collections import deque

class AnalizadorSemantico:
    def __init__(self):
        self.nodos = set()
        self.aristas = set()
        self.pesos = {}  # 📌 Diccionario para almacenar pesos de aristas

    def validar(self, arbol):
        if not arbol:
            return False

        tipo = arbol[0]

        if tipo == 'nodo':
            _, id_nodo = arbol
            if id_nodo in self.nodos:
                print(f"🛑 Error semántico: El nodo '{id_nodo}' ya existe.")
                return False
            self.nodos.add(id_nodo)
            return True

        elif tipo == 'eliminar_nodo':
            _, id_nodo = arbol
            if id_nodo not in self.nodos:
                print(f"🛑 Error semántico: El nodo '{id_nodo}' no existe.")
                return False
            # 🚨 Verificar si el nodo tiene aristas activas
            if any(id_nodo in arista for arista in self.aristas):
                print(f"🛑 Error semántico: No se puede eliminar el nodo '{id_nodo}' porque tiene aristas asociadas.")
                return False
            self.nodos.remove(id_nodo)
            return True

        elif tipo == 'arista' or tipo == 'arista_no_dirigida':
            _, id_nodo1, id_nodo2 = arbol
            if id_nodo1 not in self.nodos or id_nodo2 not in self.nodos:
                print(f"🛑 Error semántico: Uno o ambos nodos no existen.")
                return False
            if (id_nodo1, id_nodo2) in self.aristas or (id_nodo2, id_nodo1) in self.aristas:
                print(f"🛑 Error semántico: La arista '{id_nodo1}-{id_nodo2}' ya existe.")
                return False
            if id_nodo1 == id_nodo2:
                print(f"🛑 Error semántico: No se permite una arista entre un nodo y sí mismo ('{id_nodo1}').")
                return False
            self.aristas.add((id_nodo1, id_nodo2))
            return True

        elif tipo == 'eliminar_arista':
            _, id_nodo1, id_nodo2 = arbol
            if (id_nodo1, id_nodo2) not in self.aristas and (id_nodo2, id_nodo1) not in self.aristas:
                print(f"🛑 Error semántico: La arista '{id_nodo1}-{id_nodo2}' no existe.")
                return False
            self.aristas.discard((id_nodo1, id_nodo2))
            self.aristas.discard((id_nodo2, id_nodo1))
            return True

        elif tipo == 'peso':
            _, id_nodo1, id_nodo2, peso = arbol
            if (id_nodo1, id_nodo2) not in self.aristas and (id_nodo2, id_nodo1) not in self.aristas:
                print(f"🛑 Error semántico: La arista '{id_nodo1}-{id_nodo2}' no existe.")
                return False
            if peso < 0:
                print(f"🛑 Error semántico: No se permiten pesos negativos en las aristas ('{id_nodo1}-{id_nodo2}', peso: {peso}).")
                return False
            self.pesos[(id_nodo1, id_nodo2)] = peso
            return True

        elif tipo == 'ruta_minima':
            _, id_nodo1, id_nodo2 = arbol
            if id_nodo1 not in self.nodos or id_nodo2 not in self.nodos:
                print(f"🛑 Error semántico: Uno o ambos nodos no existen.")
                return False
            # 🚀 Validar si hay un camino entre ambos nodos antes de calcular ruta mínima
            if not self.hay_camino(id_nodo1, id_nodo2):
                print(f"🛑 Error semántico: No existe un camino entre '{id_nodo1}' y '{id_nodo2}'.")
                return False
            return True

        return True

    def hay_camino(self, inicio, fin):
        if inicio == fin:
            return True
        visitados = set()
        cola = deque([inicio])

        while cola:
            nodo_actual = cola.popleft()
            if nodo_actual == fin:
                return True
            if nodo_actual not in visitados:
                visitados.add(nodo_actual)
                for vecino1, vecino2 in self.aristas:
                    if vecino1 == nodo_actual and vecino2 not in visitados:
                        cola.append(vecino2)
                    elif vecino2 == nodo_actual and vecino1 not in visitados:
                        cola.append(vecino1)

        return False  # 🚨 No hay conexión entre los nodos

