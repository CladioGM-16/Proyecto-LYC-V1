import ply.lex as lex

# Definición de los nombres de los tokens que el lexer reconocerá
tokens = (
    'NODO', 'ELIMINAR_NODO', 'ARISTA', 'ELIMINAR_ARISTA', 'PESO', 'RUTA_MINIMA', 'NO_D',
    'ID', 'NUMBER', 'LPAREN', 'RPAREN', 'COMMA', 'SEMICOLON'
)

# Diccionario de palabras reservadas y sus tokens correspondientes
reserved = {
    'nodo': 'NODO',
    'eliminar_nodo': 'ELIMINAR_NODO',
    'arista': 'ARISTA',
    'eliminar_arista': 'ELIMINAR_ARISTA',
    'peso': 'PESO',
    'ruta_minima': 'RUTA_MINIMA',
    'no_d': 'NO_D'
}

# Definiciones de tokens simples usando expresiones regulares
t_LPAREN    = r'\('
t_RPAREN    = r'\)'
t_COMMA     = r','
t_SEMICOLON = r';'

# Función para reconocer identificadores y palabras reservadas
def t_ID(t):
    r'[A-Za-z][A-Za-z0-9_]*'
    t.type = reserved.get(t.value.lower(), 'ID')  
    return t

# Función para reconocer números
def t_NUMBER(t):
    r'\d+'  
    t.value = int(t.value)  
    return t

# Función para manejar nuevas líneas
def t_newline(t):
    r'\n+'
    t.lexer.lineno += len(t.value)

# Ignorar espacios y tabulaciones
t_ignore = ' \t'

# Comentarios de una línea
def t_COMMENT(t):
    r'//.*'  
    pass

# Comentarios multilínea
def t_COMMENT_BLOCK(t):
    r'/\*.*?\*/'  
    pass

# Función para manejar errores léxicos
def t_error(t):
    print(f"🛑 Error léxico en la línea {t.lineno}, posición {t.lexpos}:")
    print(f"  Carácter inválido: '{t.value[0]}'")
    
    line_start = max(t.lexer.lexdata.rfind('\n', 0, t.lexpos) + 1, 0)  
    line_end = t.lexer.lexdata.find('\n', t.lexpos)
    if line_end == -1: line_end = len(t.lexer.lexdata)  
    line = t.lexer.lexdata[line_start:line_end]  
    
    # Mostrar la línea donde ocurrió el error
    print(f"  Línea del error: {line}")
    print(f"  {' ' * (t.lexpos - line_start+ 17)}^")    

    # Marcar error_ocurrido como True
    t.lexer.error_ocurrido = True  # Establecer bandera de error

    # No lanzar excepción, solo continuar con el siguiente carácter
    t.lexer.skip(1)  # Ignorar el carácter inválido y continuar el análisis


# Crear una instancia del lexer
lexer = lex.lex()

# Función para analizar el código de entrada y devolver una lista de tokens
def analizar_codigo(data):
    if not data:  # Verificar si la entrada está vacía
        print("🚫 La entrada está vacía. No se encontraron tokens.")
        return []  # Regresar una lista vacía

    lexer.input(data)
    lexer.error_ocurrido = False  # Inicializar bandera de error
    tokens_list = []
    
    # Procesar cada token en el código
    while True:
        tok = lexer.token()
        if not tok:
            break  # No más tokens
        tokens_list.append(tok)

    # Mostrar mensaje de éxito o error solo al final del proceso
    if lexer.error_ocurrido:
        print("⚠️ El análisis léxico terminó con errores.")
    else:
        print("✔️ El análisis léxico se completó correctamente.")
    
    return tokens_list

# Código principal para probar el lexer
if __name__ == "__main__":
    # Ejemplo de código válido
    print("\n📌 Análisis Léxico:")
    codigo_prueba = "nodo(a)\nnodo(@)"
    tokens = analizar_codigo(codigo_prueba)
    print("\n📋 Lista de Tokens:")
    for token in tokens:
        print(f"Tipo: {token.type}, Valor: {token.value}, Línea: {token.lineno}, Posición: {token.lexpos}")
