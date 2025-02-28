# semantico.py

class AnalizadorSemantico:
    def __init__(self):
        self.nodos = set()
        self.aristas = set()

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
            self.nodos.remove(id_nodo)
            return True

        elif tipo == 'arista' or tipo == 'arista_no_dirigida':
            _, id_nodo1, id_nodo2 = arbol
            if id_nodo1 not in self.nodos or id_nodo2 not in self.nodos:
                print(f"🛑 Error semántico: Uno o ambos nodos no existen.")
                return False
            self.aristas.add((id_nodo1, id_nodo2))
            return True

        elif tipo == 'eliminar_arista':
            _, id_nodo1, id_nodo2 = arbol
            if (id_nodo1, id_nodo2) not in self.aristas:
                print(f"🛑 Error semántico: La arista '{id_nodo1}-{id_nodo2}' no existe.")
                return False
            self.aristas.remove((id_nodo1, id_nodo2))
            return True

        elif tipo == 'peso':
            _, id_nodo1, id_nodo2, peso = arbol
            if (id_nodo1, id_nodo2) not in self.aristas:
                print(f"🛑 Error semántico: La arista '{id_nodo1}-{id_nodo2}' no existe.")
                return False
            return True

        elif tipo == 'ruta_minima':
            _, id_nodo1, id_nodo2 = arbol
            if id_nodo1 not in self.nodos or id_nodo2 not in self.nodos:
                print(f"🛑 Error semántico: Uno o ambos nodos no existen.")
                return False
            return True

        return True