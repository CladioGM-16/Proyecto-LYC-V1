��    y      �  �   �      8
  i  9
  �   �  G  �  �   �  �   �  w   �  :  +  L  f  �   �  �   �  �   )  �     �   �  �   �  �   �  �   K  �     �   �  �   R  �   L  �    �  
  �   �  �   ;     �   �   	"  �   �"  �   %#  s   �#  n   1$  �   �$  �  d%  �  +'  N  )  �  T+  �  I-  w   /  �   �/  �  0  �   �3  o  �4    6  |  �7  E  9  _  a:  �   �;    z<  W  �=  �  �>  }   x@  �   �@  �   �A     hB     uB     �B     �B  !   �B     �B     �B  
   �B     �B  :   C     ?C  #   KC  
   oC     zC     �C     �C     �C  2   �C     �C     �C     D     D     -D     =D  
   JD     UD      ]D     ~D     �D     �D     �D  -   �D     �D     �D     
E     E  
   .E  @   9E     zE     �E     �E     �E     �E  	   �E     �E     �E     �E     F     F     F     %F     ,F     3F     :F     AF  /   UF     �F     �F  3   �F     �F     �F     G     G     -G     3G     NG      fG  +   �G  i  �G  �   I  �   J  �   �J  �   �K  �   VL  F   M  �   KM  �   5N  �   1O  h   �O  �   5P  �   �P  �   �Q  �   2R  r   �R  �   HS  V   �S  �   -T  �   �T  �   sU  �  V  >  �W  q   �X  �   8Y  �   �Y  V   �Z  n   �Z  l   Z[  H   �[  I   \  �   Z\  q  �\  �  _^  �  �_  �  �a    Zc  R   �d  c   -e    �e  �   �h  &  Ri  6  yj  3  �k    �l    �m  �   o  �   �o    mp  e  �q  R   �r  �   As  �   �s     Ot     \t     nt     �t  !   �t     �t     �t  
   �t     �t  :   �t     &u  #   2u  
   Vu     au     pu     wu     �u  2   �u     �u     �u     �u     v     v     $v  
   1v     <v      Dv     ev     sv     �v     �v  -   �v     �v     �v     �v      w  
   w  @    w     aw     sw     �w     �w     �w  	   �w     �w     �w     �w     �w     �w     x     x     x     x     !x     (x  /   <x     lx     �x  3   �x     �x     �x     �x     y     y     y     4y      Ly  +   my             ]   Y             '   B      H   S   g   +   O   j   )   V       4       G   n   c   ,   3   A   !             5   [   r   v             I   p   a              :   T   d          (   *   9      L       X   @      m   l      P       <      e   #   .   ?       t   F   Q      N   	                8   y       k      o              0       \                  u   C   =      E   "   K   %   R               J   2          7                   b   1           f       -   6   &   
          _   U   $   W         h      Z           i   M           `   /   s              x               ;       ^   q   >      D   w    
                  El algoritmo se detiene cuando todos los nodos han sido
                  procesados o cuando se alcanza un nodo destino específico (si
                  se busca solo un camino mínimo en particular). Se puede
                  reconstruir el camino más corto almacenando los predecesores
                  de cada nodo.
                   
                  Se establece la distancia del nodo origen en 0 y la de los
                  demás nodos en infinito. Se usa una cola de prioridad para
                  procesar los nodos con menor distancia conocida.
                   
                  Se extrae el nodo con la menor distancia acumulada de la cola.
                  Se recorren sus vecinos y, si se encuentra una ruta más corta
                  hacia ellos, se actualiza su distancia. Se inserta nuevamente
                  en la cola de prioridad si su distancia cambia.
                   
                Ahora, vemos que se añade un nuevo candidato, el vértice e, y el
                vértice c, pero esta vez a través del d. Pero el camino mínimo
                surge al añadir el vértice c.
                 
                Como podemos comprobar, se han añadido un candidato nuevo, el
                vértice f, a través del vértice b. El mínimo camino hallado en
                todo el grafo hasta ahora es el siguiente:
                 
                E es un conjunto de aristas o edges, que conectan pares de
                vértices.
                 
                En el penúltimo paso, vuelve a aparecer otro candidato: el
                vértice e, pero esta vez a través del vértice f. De todas
                formas, el camino mínimo vuelve a cambiar para retomar el camino
                que venía siguiendo en los pasos anteriores:
                 
                En este antepenúltimo paso, se añaden tres vértices candidatos,
                los vértices g, z y e. Este último ya estaba pero en esta
                ocasión aparece a través del vértice f. En este caso el camino
                mínimo, que cambia un poco con respecto al anterior, es:
                 
                Por fin, llegamos al último paso, en el que sólo se añade un
                candidato, el vértice z a través del vértice e. El camino mínimo
                y final obtenido es:
                 
                Se escoge de los nodos adyacentes aquel que tiene una menor peso
                en la arista, en este caso, el nodo d.
                 
              <b>Identificador:</b> Es el nombre que se le asigna a variables,
              funciones, clases, objetos o cualquier entidad definida por el
              usuario en un lenguaje de programación.
               
              <b>Palabra reservada:</b> Son términos predefinidos en un lenguaje
              de programación y suelen ser palabras reservadas, lo que significa
              que no pueden usarse como identificadores.
               
              <b>Pila:</b> Estructura de datos que sigue el principio LIFO (Last
              In, First Out), lo que significa que el último elemento en entrar
              es el primero en salir.
               
              <b>Símbolos especiales:</b> Son caracteres que cumplen funciones
              específicas dentro del lenguaje, como separadores, delimitadores o
              terminadores de expresiones
               
              <b>Transiciones:</b> Indican cómo cambia el autómata de un estado
              a otro en función de un símbolo de entrada.
               
              <strong>Distancia:</strong> La distancia entre dos nodos u y v es
              la mínima cantidad de ejes por los que debo moverme para llegar de
              u a v.
               
              <strong>Vecindad:</strong> Dos nodos son adyacentes si existe una
              arista que los une.
               
              Desarrollar un analizador sintáctico que valide la correcta
              estructura de los grafos según las reglas definidas en la
              gramática.
               
              Desde la década de <strong>1950</strong>, los grafos se han usado
              ampliamente en sociometría y redes sociales, permitiendo analizar
              relaciones entre personas y estructuras organizacionales.
               
              Diseñar una gramática formal para la definición de grafos,
              incluyendo palabras reservadas, identificadores, números y
              símbolos especiales.
               
              El algoritmo de Dijkstra es un método eficiente para encontrar el
              camino más corto desde un nodo de origen a todos los demás nodos
              en un grafo ponderado, siempre que los pesos de las aristas sean
              no negativos. Fue desarrollado en 1956 por el científico
              informático Edsger W. Dijkstra y se ha convertido en una
              herramienta fundamental en teoría de grafos y optimización de
              rutas.
               
              El origen de la teoría de grafos se remonta al siglo XVIII con el
              problema de los puentes de Königsberg, planteado por
              <strong>Leonhard Euler en 1736</strong>. Euler demostró que no
              existía un camino que recorriera todos los puentes sin repetirlos,
              sentando así las bases de la teoría de grafos y la topología.
               
              El primer libro sobre teoría de grafos fue escrito por
              <strong>Dénes Kőnig</strong> en <strong>1936</strong>.
               
              En <strong>1847, Gustav Kirchhoff</strong> aplicó la teoría de
              grafos en circuitos eléctricos, formulando las leyes de Kirchhoff.
               
              En <strong>1852, Francis Guthrie</strong> propuso el problema de
              los cuatro colores, resuelto en <strong>1976</strong>. En
              <strong>1857, Arthur Cayley</strong> utilizó los grafos para
              contar isómeros químicos.
               
              Implementar un analizador léxico que identifique y clasifique los
              tokens de entrada.
               
              Incorporar un análisis semántico que verifique la coherencia de la
              información representada en los grafos.
               
              La complejidad del algoritmo depende de la estructura de datos
              utilizada para manejar la cola de prioridad:
               
              Las aristas tienen una dirección específica representada con
              flechas.
               
            Cada entrada contiene una lista con los nodos a los que está
            conectado.
             
            Desarrollar un analizador para la validación de estructuras de
            grafos, permitiendo la detección de errores en su definición y
            representación.
             
            Django es un framework web de código abierto basado en Python,
            diseñado para facilitar el desarrollo rápido de aplicaciones web
            seguras y escalables. Utiliza el patrón Modelo-Vista-Controlador
            (MVC). Proporciona herramientas para la gestión de bases de datos,
            autenticación de usuarios y generación de interfaces de
            administración, entre otras funcionalidades.
             
            El análisis léxico es la primera fase en el proceso de compilación o
            interpretación de un programa, encargándose de transformar el código
            fuente en una secuencia de unidades mínimas de significado llamadas
            tokens. Durante esta fase, el analizador léxico escanea el código,
            eliminando espacios en blanco y comentarios, y categorizando cada
            elemento en su respectivo tipo de token
             
            El análisis léxico transforma el código en tokens, el análisis
            sintáctico verifica la estructura del lenguaje, y el análisis
            semántico asegura que las expresiones tengan sentido dentro del
            contexto del programa. Estas técnicas son ampliamente utilizadas en
            compiladores, intérpretes y herramientas de validación de código
            para lenguajes de programación bien establecidos, como los
            utilizados en bases de datos, procesamiento de números y otros
            dominios tradicionales.
             
            El análisis sintáctico es la fase de un compilador o intérprete que
            verifica si una secuencia de tokens cumple con las reglas
            gramaticales de un lenguaje de programación. Se basa en gramáticas
            libres de contexto y suele representarse mediante árboles de
            derivación o autómatas de pila. Su objetivo es estructurar
            correctamente la entrada para que pueda ser interpretada o ejecutada
            sin errores.
             
            En el desarrollo de software, los analizadores léxicos, sintácticos
            y semánticos juegan un papel esencial en la interpretación y
            validación de código fuente. Estos componentes garantizan que los
            programas sean comprensibles y funcionales al detectar errores antes
            de la ejecución, lo que evita problemas que podrían impedir la
            correcta lectura o ejecución de instrucciones.
             
            Se utiliza un array o diccionario, donde cada índice o clave
            representa un nodo.
             
            Si en la posición (i,j) hay un 1, significa que existe una conexión
            entre el nodo i y el nodo j.
             
            Sin embargo, cuando se trata de grafos, el desarrollo de
            herramientas especializadas para analizar su representación formal
            es menos común. A pesar de su importancia en múltiples disciplinas,
            como la teoría de redes, la optimización y la inteligencia
            artificial, la validación automática de gramáticas para grafos sigue
            siendo un área poco explorada. Este proyecto tiene como objetivo
            diseñar una gramática específica para la representación de grafos y
            desarrollar analizadores léxicos, sintácticos y semánticos que
            validen su correcta escritura y estructura. Al hacerlo, se busca
            ofrecer una solución innovadora que permita una validación precisa
            de grafos en diversos contextos, facilitando su interpretación y uso
            en aplicaciones computacionales.
             
            Un autómata de pila es un modelo computacional que extiende los
            autómatas finitos al incorporar una pila, permitiéndole reconocer
            gramáticas más complejas, como las libres de contexto.
             
            Un compilador es un programa que traduce código fuente escrito en un
            lenguaje de alto nivel a un lenguaje de bajo nivel, como el código
            de máquina. Este proceso ocurre antes de la ejecución, permitiendo
            que el programa se ejecute de manera independiente sin necesidad del
            código original.
             
            Un intérprete es un programa que ejecuta código fuente línea por
            línea sin generar un archivo ejecutable. Esto facilita la depuración
            y permite una ejecución interactiva, aunque puede ser más lento que
            un compilador. Lenguajes como Python y JavaScript utilizan
            intérpretes para ejecutar sus programas.
             
            Un lenguaje formal es un conjunto de cadenas de símbolos definidos
            por reglas precisas, utilizadas en lógica, matemáticas y
            computación. Se emplea en el diseño de lenguajes de programación y
            protocolos de comunicación, garantizando estructuras bien definidas
            y comprensibles por máquinas y humanos.
             
            Un token es la unidad léxica más pequeña con significado dentro de
            un lenguaje de programación. Cada línea de código está compuesta por
            varios tokens, que pueden representar palabras reservadas,
            identificadores, operadores, números o símbolos especiales.
             
            Una gramática es un conjunto de reglas que describen cómo se pueden
            formar expresiones válidas en un lenguaje formal. Se usa en la
            construcción de lenguajes de programación y define la estructura
            correcta de las instrucciones que el compilador o intérprete debe
            procesar.
             
          Es una matriz cuadrada de tamaño N×N (donde N es el número de
          vértices) en la que cada celda indica si hay una arista entre dos
          vértices.
           
          La lista de adyacencia es una representación de un grafo en la que
          cada nodo tiene asociado un conjunto (o lista) de nodos adyacentes, es
          decir, aquellos con los que tiene una conexión directa mediante una
          arista.
           
          Los grafos pueden representarse de diversas maneras en la informática
          y la teoría de grafos. Las dos formas más comunes son matriz de
          adyacencia y lista de adyacencia. Cada una tiene sus ventajas y
          desventajas dependiendo del tipo de grafo y del problema que se quiera
          resolver.
           
      <p>
        HOLA MI NOMBRE ES JHAIR HOLA HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA
        HOLAHOLA HOLA HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA
        HOLA HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLA
        HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLA HOLA
        HOLA HOLA HOLA HOLA HOLA HOLA HOLA
      </p>
      <p>%(message)s</p>
        
              <b>Estados:</b> Representan las distintas fases del procesamiento
              de la entrada.
                
              <b>Números:</b> Representan valores numéricos que pueden ser
              utilizados en cálculos matemáticos y asignaciones de valores.
                
              Un grafo es una estructura matemática que representa relaciones
              entre un conjunto de objetos. Se define formalmente como un par
              ordenado:
               ALGORITMO DE Análisis Léxico Análisis Sintáctico Autómata a Pila Bienvenido a la página principal Camino: Cargar Compilador Complejidad Computacional Crear un prototipo de interfaz en herramientas de diseño. Definición Diseñada por LyCenciados Corruptos Distancia: Documentación Donde: EJEMPLO DIJKSTRA En esta estructura: Existe un camino entre cualquier par de vértices. Finalización: Frameworks y Herramientas Grafo Conexo Grafo Dirigido Grafo Ponderado Grafo Simple Gramática Guardar Historia de la Teoría de Grafos Identificador Inicialización: Introducción Intérprete Las aristas tienen un peso o valor numérico. Lenguaje Formal Lista de Adyacencias Marco Teórico Matriz de Adyacencia Multigrafo No tiene lazos ni múltiples aristas entre los mismos vértices. Nodos procesados: Nombre de nodo Números Números enteros positivos Objetivo General Objetivos Objetivos Específicos Observación Palabra reservada Paso 1 Paso 2 Paso 3 Paso 4 Paso 5 Paso 6 Paso 7 Pasos del Algoritmo Permite múltiples aristas entre dos vértices. REPRESENTACIÓN DE GRAFOS Resultado aquí... Si hay un 0, significa que no existe tal conexión. Sobre los Grafos Símbolos especiales TEORIA DE GRAFOS TIPOS DE GRAFOS Token Usando un Fibonacci Heap:  Usando un heap binario: Usando una matriz de adyacencia: es un conjunto finito de vértices o nodos. Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
 
El algoritmo se detiene cuando todos los nodos han sido
procesados o cuando se alcanza un nodo destino específico (si
se busca solo un camino mínimo en particular). Se puede
reconstruir el camino más corto almacenando los predecesores
de cada nodo. 
Se establece la distancia del nodo origen en 0 y la de los
demás nodos en infinito. Se usa una cola de prioridad para
procesar los nodos con menor distancia conocida. 
Se extrae el nodo con la menor distancia acumulada de la cola.
Se recorren sus vecinos y, si se encuentra una ruta más corta
hacia ellos, se actualiza su distancia. Se inserta nuevamente
en la cola de prioridad si su distancia cambia. 
Ahora, vemos que se añade un nuevo candidato, el vértice e, y el
vértice c, pero esta vez a través del d. Pero el camino mínimo
surge al añadir el vértice c. 
Como podemos comprobar, se han añadido un candidato nuevo, el
vértice f, a través del vértice b. El mínimo camino hallado en
todo el grafo hasta ahora es el siguiente: 
E es un conjunto de aristas o edges, que conectan pares de
vértices. 
En el penúltimo paso, vuelve a aparecer otro candidato: el
vértice e, pero esta vez a través del vértice f. De todas
formas, el camino mínimo vuelve a cambiar para retomar el camino
que venía siguiendo en los pasos anteriores: 
En este antepenúltimo paso, se añaden tres vértices candidatos,
los vértices g, z y e. Este último ya estaba pero en esta
ocasión aparece a través del vértice f. En este caso el camino
mínimo, que cambia un poco con respecto al anterior, es: 
Por fin, llegamos al último paso, en el que sólo se añade un
candidato, el vértice z a través del vértice e. El camino mínimo
y final obtenido es: 
Se escoge de los nodos adyacentes aquel que tiene una menor peso
en la arista, en este caso, el nodo d. 
<b>Identificador:</b> Es el nombre que se le asigna a variables,
funciones, clases, objetos o cualquier entidad definida por el
usuario en un lenguaje de programación. 
<b>Palabra reservada:</b> Son términos predefinidos en un lenguaje
de programación y suelen ser palabras reservadas, lo que significa
que no pueden usarse como identificadores. 
<b>Pila:</b> Estructura de datos que sigue el principio LIFO (Last
In, First Out), lo que significa que el último elemento en entrar
es el primero en salir. 
<b>Símbolos especiales:</b> Son caracteres que cumplen funciones
específicas dentro del lenguaje, como separadores, delimitadores o
terminadores de expresiones 
<b>Transiciones:</b> Indican cómo cambia el autómata de un estado
a otro en función de un símbolo de entrada. 
<strong>Distancia:</strong> La distancia entre dos nodos u y v es
la mínima cantidad de ejes por los que debo moverme para llegar de
u a v. 
<strong>Vecindad:</strong> Dos nodos son adyacentes si existe una
arista que los une. 
Desarrollar un analizador sintáctico que valide la correcta
estructura de los grafos según las reglas definidas en la
gramática. 
Desde la década de <strong>1950</strong>, los grafos se han usado
ampliamente en sociometría y redes sociales, permitiendo analizar
relaciones entre personas y estructuras organizacionales. 
Diseñar una gramática formal para la definición de grafos,
incluyendo palabras reservadas, identificadores, números y
símbolos especiales. 
El algoritmo de Dijkstra es un método eficiente para encontrar el
camino más corto desde un nodo de origen a todos los demás nodos
en un grafo ponderado, siempre que los pesos de las aristas sean
no negativos. Fue desarrollado en 1956 por el científico
informático Edsger W. Dijkstra y se ha convertido en una
herramienta fundamental en teoría de grafos y optimización de
rutas. 
El origen de la teoría de grafos se remonta al siglo XVIII con el
problema de los puentes de Königsberg, planteado por
<strong>Leonhard Euler en 1736</strong>. Euler demostró que no
existía un camino que recorriera todos los puentes sin repetirlos,
sentando así las bases de la teoría de grafos y la topología. 
El primer libro sobre teoría de grafos fue escrito por
<strong>Dénes Kőnig</strong> en <strong>1936</strong>. 
En <strong>1847, Gustav Kirchhoff</strong> aplicó la teoría de
grafos en circuitos eléctricos, formulando las leyes de Kirchhoff. 
En <strong>1852, Francis Guthrie</strong> propuso el problema de
los cuatro colores, resuelto en <strong>1976</strong>. En
<strong>1857, Arthur Cayley</strong> utilizó los grafos para
contar isómeros químicos. 
Implementar un analizador léxico que identifique y clasifique los
tokens de entrada. 
Incorporar un análisis semántico que verifique la coherencia de la
información representada en los grafos. 
La complejidad del algoritmo depende de la estructura de datos
utilizada para manejar la cola de prioridad: 
Las aristas tienen una dirección específica representada con
flechas. 
Cada entrada contiene una lista con los nodos a los que está
conectado. 
Desarrollar un analizador para la validación de estructuras de
grafos, permitiendo la detección de errores en su definición y
representación. 
Django es un framework web de código abierto basado en Python,
diseñado para facilitar el desarrollo rápido de aplicaciones web
seguras y escalables. Utiliza el patrón Modelo-Vista-Controlador
(MVC). Proporciona herramientas para la gestión de bases de datos,
autenticación de usuarios y generación de interfaces de
administración, entre otras funcionalidades. 
El análisis léxico es la primera fase en el proceso de compilación o
interpretación de un programa, encargándose de transformar el código
fuente en una secuencia de unidades mínimas de significado llamadas
tokens. Durante esta fase, el analizador léxico escanea el código,
eliminando espacios en blanco y comentarios, y categorizando cada
elemento en su respectivo tipo de token 
El análisis léxico transforma el código en tokens, el análisis
sintáctico verifica la estructura del lenguaje, y el análisis
semántico asegura que las expresiones tengan sentido dentro del
contexto del programa. Estas técnicas son ampliamente utilizadas en
compiladores, intérpretes y herramientas de validación de código
para lenguajes de programación bien establecidos, como los
utilizados en bases de datos, procesamiento de números y otros
dominios tradicionales. 
El análisis sintáctico es la fase de un compilador o intérprete que
verifica si una secuencia de tokens cumple con las reglas
gramaticales de un lenguaje de programación. Se basa en gramáticas
libres de contexto y suele representarse mediante árboles de
derivación o autómatas de pila. Su objetivo es estructurar
correctamente la entrada para que pueda ser interpretada o ejecutada
sin errores. 
En el desarrollo de software, los analizadores léxicos, sintácticos
y semánticos juegan un papel esencial en la interpretación y
validación de código fuente. Estos componentes garantizan que los
programas sean comprensibles y funcionales al detectar errores antes
de la ejecución, lo que evita problemas que podrían impedir la
correcta lectura o ejecución de instrucciones. 
Se utiliza un array o diccionario, donde cada índice o clave
representa un nodo. 
Si en la posición (i,j) hay un 1, significa que existe una conexión
entre el nodo i y el nodo j. 
Sin embargo, cuando se trata de grafos, el desarrollo de
herramientas especializadas para analizar su representación formal
es menos común. A pesar de su importancia en múltiples disciplinas,
como la teoría de redes, la optimización y la inteligencia
artificial, la validación automática de gramáticas para grafos sigue
siendo un área poco explorada. Este proyecto tiene como objetivo
diseñar una gramática específica para la representación de grafos y
desarrollar analizadores léxicos, sintácticos y semánticos que
validen su correcta escritura y estructura. Al hacerlo, se busca
ofrecer una solución innovadora que permita una validación precisa
de grafos en diversos contextos, facilitando su interpretación y uso
en aplicaciones computacionales. 
Un autómata de pila es un modelo computacional que extiende los
autómatas finitos al incorporar una pila, permitiéndole reconocer
gramáticas más complejas, como las libres de contexto. 
Un compilador es un programa que traduce código fuente escrito en un
lenguaje de alto nivel a un lenguaje de bajo nivel, como el código
de máquina. Este proceso ocurre antes de la ejecución, permitiendo
que el programa se ejecute de manera independiente sin necesidad del
código original. 
Un intérprete es un programa que ejecuta código fuente línea por
línea sin generar un archivo ejecutable. Esto facilita la depuración
y permite una ejecución interactiva, aunque puede ser más lento que
un compilador. Lenguajes como Python y JavaScript utilizan
intérpretes para ejecutar sus programas. 
Un lenguaje formal es un conjunto de cadenas de símbolos definidos
por reglas precisas, utilizadas en lógica, matemáticas y
computación. Se emplea en el diseño de lenguajes de programación y
protocolos de comunicación, garantizando estructuras bien definidas
y comprensibles por máquinas y humanos. 
Un token es la unidad léxica más pequeña con significado dentro de
un lenguaje de programación. Cada línea de código está compuesta por
varios tokens, que pueden representar palabras reservadas,
identificadores, operadores, números o símbolos especiales. 
Una gramática es un conjunto de reglas que describen cómo se pueden
formar expresiones válidas en un lenguaje formal. Se usa en la
construcción de lenguajes de programación y define la estructura
correcta de las instrucciones que el compilador o intérprete debe
procesar. 
Es una matriz cuadrada de tamaño N×N (donde N es el número de
vértices) en la que cada celda indica si hay una arista entre dos
vértices. 
La lista de adyacencia es una representación de un grafo en la que
cada nodo tiene asociado un conjunto (o lista) de nodos adyacentes, es
decir, aquellos con los que tiene una conexión directa mediante una
arista. 
Los grafos pueden representarse de diversas maneras en la informática
y la teoría de grafos. Las dos formas más comunes son matriz de
adyacencia y lista de adyacencia. Cada una tiene sus ventajas y
desventajas dependiendo del tipo de grafo y del problema que se quiera
resolver. 
<p>
HOLA MI NOMBRE ES JHAIR HOLA HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA
HOLAHOLA HOLA HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA
HOLA HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLA
HOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLAHOLA HOLA HOLA
HOLA HOLA HOLA HOLA HOLA HOLA HOLA
</p>
      <p>%(message)s</p>
        
<b>Estados:</b> Representan las distintas fases del procesamiento
de la entrada.  
<b>Números:</b> Representan valores numéricos que pueden ser
utilizados en cálculos matemáticos y asignaciones de valores.  
Un grafo es una estructura matemática que representa relaciones
entre un conjunto de objetos. Se define formalmente como un par
ordenado: ALGORITMO DE Análisis Léxico Análisis Sintáctico Autómata a Pila Bienvenido a la página principal Camino: Cargar Compilador Complejidad Computacional Crear un prototipo de interfaz en herramientas de diseño. Definición Diseñada por LyCenciados Corruptos Distancia: Documentación Donde: EJEMPLO DIJKSTRA En esta estructura: Existe un camino entre cualquier par de vértices. Finalización: Frameworks y Herramientas Grafo Conexo Grafo Dirigido Grafo Ponderado Grafo Simple Gramática Guardar Historia de la Teoría de Grafos Identificador Inicialización: Introducción Intérprete Las aristas tienen un peso o valor numérico. Lenguaje Formal Lista de Adyacencias Marco Teórico Matriz de Adyacencia Multigrafo No tiene lazos ni múltiples aristas entre los mismos vértices. Nodos procesados: Nombre de nodo Números Números enteros positivos Objetivo General Objetivos Objetivos Específicos Observación Palabra reservada Paso 1 Paso 2 Paso 3 Paso 4 Paso 5 Paso 6 Paso 7 Pasos del Algoritmo Permite múltiples aristas entre dos vértices. REPRESENTACIÓN DE GRAFOS Resultado aquí... Si hay un 0, significa que no existe tal conexión. Sobre los Grafos Símbolos especiales TEORIA DE GRAFOS TIPOS DE GRAFOS Token Usando un Fibonacci Heap: Usando un heap binario: Usando una matriz de adyacencia: es un conjunto finito de vértices o nodos. 