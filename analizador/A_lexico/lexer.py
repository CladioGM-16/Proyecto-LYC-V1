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
    print(f"Actualizando número de línea a {t.lexer.lineno}")

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
    raise Exception(f"Error léxico en la posición {t.lexpos}, línea {t.lineno}")
    # print(f"🛑 Error léxico: Carácter inválido '{t.value[0]}' en la posición {t.lexpos}")
    # t.lexer.skip(1)

# Crear una instancia del lexer
lexer = lex.lex()

# Función para analizar el código de entrada y devolver una lista de tokens
def analizar_codigo(data):
    lexer.input(data)
    tokens_list = []
    while True:
        tok = lexer.token()
        if not tok:
            break  
        tokens_list.append(tok)
        
    return tokens_list

# Código principal para probar el lexer
if __name__ == "__main__":
    codigo_prueba = "nodo(A);\narista(A, B);"
    print("\n📌 Análisis Léxico:")
    tokens = analizar_codigo(codigo_prueba)
    print("\n📋 Lista de Tokens:")
    for token in tokens:
        print(f"Tipo: {token.type}, Valor: {token.value}, Línea: {token.lineno}, Posición: {token.lexpos}")
