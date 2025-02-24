import ply.lex as lex

tokens = (
    'NODO', 'ELIMINAR_NODO', 'ARISTA', 'ELIMINAR_ARISTA', 'PESO', 'RUTA_MINIMA', 'NO_D',
    'ID', 'NUMBER', 'LPAREN', 'RPAREN', 'COMMA', 'SEMICOLON'
)


reserved = {
    'nodo': 'NODO',
    'eliminar_nodo': 'ELIMINAR_NODO',
    'arista': 'ARISTA',
    'eliminar_arista': 'ELIMINAR_ARISTA',
    'peso': 'PESO',
    'ruta_minima': 'RUTA_MINIMA',
    'no_d': 'NO_D'
}


t_LPAREN    = r'\('
t_RPAREN    = r'\)'
t_COMMA     = r','
t_SEMICOLON = r';'


def t_ID(t):
    r'[A-Za-z][A-Za-z0-9_]*'
    t.type = reserved.get(t.value.lower(), 'ID')  
    return t


def t_NUMBER(t):
    r'\d+'
    t.value = int(t.value)  
    return t


def t_newline(t):
    r'\n+'
    t.lexer.lineno += len(t.value)  


t_ignore = ' \t'


def t_error(t):
    print(f"🛑 Error léxico: Carácter inválido '{t.value[0]}' en la posición {t.lexpos}")
    t.lexer.skip(1)


lexer = lex.lex()


def analizar_codigo(data):
    lexer.input(data)
    tokens_list = []
    while True:
        tok = lexer.token()
        if not tok:
            break  
        tokens_list.append(tok)
        print(f"Token: {tok.type}, Valor: {tok.value}, Posición: {tok.lexpos}")
    return tokens_list


if __name__ == "__main__":
    codigo_prueba = """
    nodo(A);
    arista(A, B);
    peso(A, B, 10);
    eliminar_nodo(A);
    eliminar_arista(A, B);
    ruta_minima(A, C);
    """
    print("\n📌 Análisis Léxico:")
    analizar_codigo(codigo_prueba)
