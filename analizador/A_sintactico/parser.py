import ply.yacc as yacc
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../..')))
from analizador.A_lexico.lexer import tokens  
from analizador.A_semantico.semantico import AnalizadorSemantico  # Importar el analizador semántico

# 📌 1. Regla de inicio
def p_programa(p):
    '''programa : declaraciones'''
    p[0] = ('programa', p[1])

# 📌 2. Declaraciones
def p_declaraciones(p):
    '''declaraciones : declaraciones declaracion SEMICOLON
                     | declaracion SEMICOLON'''
    p[0] = p[1] + [p[2]] if len(p) == 4 else [p[1]]

# 📌 3. Reglas para cada tipo de declaración
def p_declaracion_nodo(p):
    '''declaracion : NODO LPAREN ID RPAREN'''
    p[0] = ('nodo', p[3])

def p_declaracion_eliminar_nodo(p):
    '''declaracion : ELIMINAR_NODO LPAREN ID RPAREN'''
    p[0] = ('eliminar_nodo', p[3])

def p_declaracion_arista(p):
    '''declaracion : ARISTA LPAREN ID COMMA ID RPAREN
                   | ARISTA LPAREN ID COMMA ID COMMA NO_D RPAREN'''
    if len(p) == 7:
        p[0] = ('arista', p[3], p[5])
    else:
        p[0] = ('arista_no_dirigida', p[3], p[5])

def p_declaracion_eliminar_arista(p):
    '''declaracion : ELIMINAR_ARISTA LPAREN ID COMMA ID RPAREN'''
    p[0] = ('eliminar_arista', p[3], p[5])

def p_declaracion_peso(p):
    '''declaracion : PESO LPAREN ID COMMA ID COMMA NUMBER RPAREN'''
    p[0] = ('peso', p[3], p[5], p[7])

def p_declaracion_ruta_minima(p):
    '''declaracion : RUTA_MINIMA LPAREN ID COMMA ID RPAREN'''
    p[0] = ('ruta_minima', p[3], p[5])

# 📌 4. Manejo de errores sintácticos
def p_error(p):
    if p:
        print(f"🛑 Error de sintaxis en la línea {p.lineno}, columna {p.lexpos}: Token inesperado '{p.value}'")
        print(f"  Contexto: {p.lexer.lexdata.splitlines()[p.lineno - 1]}")
        print(f"  {' ' * (p.lexpos + 10)}^")
    else:
        print("🛑 Error de sintaxis: Fin de archivo inesperado.")

# 📌 5. Construcción del parser
parser = yacc.yacc()

# 📌 6. Función para analizar código
def analizar_codigo(data):
    print("\n📌 Análisis Sintáctico:")
    resultado = parser.parse(data)
    if resultado:
        print("✔️ El análisis sintáctico se completó correctamente.")
        print("📋 Árbol de análisis sintáctico:")
        print(resultado)

        # Llamar al analizador semántico
        semantico = AnalizadorSemantico()
        for declaracion in resultado[1]:
            if not semantico.validar(declaracion):
                print("⚠️ Se encontraron errores en el análisis semántico.")
                return
        print("✔️ El análisis semántico se completó correctamente.")
    else:
        print("⚠️ Se encontraron errores en el análisis sintáctico.")

# 📌 7. Prueba del parser
if __name__ == "__main__":
    pruebas = [
        "nodo(A); nodo(B); arista(A, B);",
        "eliminar_nodo(C);",
        "arista(A, B, no_d);",
        "peso(A, B, 10);",
        "ruta_minima(A, B);",
        "nodo)A;"
    ]

    for i, codigo in enumerate(pruebas):
        print(f"\n🔍 Prueba {i + 1}:")
        analizar_codigo(codigo)