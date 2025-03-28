��    z      �  �   �      H
  i  I
  �   �  G  �  �   �  �   �  w   �  :  ;  L  v  �   �  �   �  �   9  �     �   	  �   �  �   �  �   [  �   "  �   �  �   b  �   \  �  &  �    �   �  �   K     �   �   "  �   �"  �   5#  s   �#  n   A$  �   �$  �  t%  �  ;'  N  )  �  d+  �  Y-  w   ./  �   �/  �  /0  �   �3  o  �4    .6  |  �7  E  +9  _  q:  �   �;    �<  W  �=  �  �>  }   �@  �   A  �   �A     xB     �B     �B     �B  !   �B     �B     �B  
   �B     �B  :   C     OC  #   [C  
   C     �C     �C     �C     �C     �C  2   �C     D     D     /D     <D     KD     [D  
   hD     sD      {D     �D     �D     �D     �D  -   �D     E     E     (E     7E  
   LE  @   WE     �E     �E     �E     �E     �E  	   �E     �E     F     F     .F     5F     <F     CF     JF     QF     XF     _F  /   sF     �F     �F  3   �F     G     G     *G     ;G     KG     QG     lG      �G  +   �G  B  �G  �   I  �   �I  �   �J  �   zK  �   L  >   �L  �   �L  �   �M  �   �N  d   1O  �   �O  �   6P  �   �P  �   �Q  {   ,R  �   �R  ]   2S  �   �S  �   T  �   �T  L  UU    �V  d   �W  �   %X  �   �X  \   vY  x   �Y  `   LZ  <   �Z  D   �Z  �   /[  C  �[  k  ]  �  s^  p  `  a  �a  N   �b  c   9c  �  �c  �   Uf    g  0   h  "  Qi  �   tj    Zk  �   bl  �   �l  �   �m  �   �n  ^   �o  �   p  �   �p  	   q     q     +q     >q     Lq     eq     kq     pq     yq  .   �q  
   �q  !   �q  	   �q     �q     r     r     r     ,r  -   ?r     mr     ur     �r     �r     �r     �r     �r     �r     �r  
   �r     �r     s     s  +   s     Gs     Ws     gs     }s  
   �s  ;   �s     �s  	   �s     �s     �s     t     "t     (t     <t     Ht     Vt     ]t     dt     kt     rt     yt     �t     �t  .   �t     �t     �t  ;   �t     .u     ?u     Ou     \u     lu     ru     �u     �u  (   �u             ^   Z             '   B      I   T   h   +   P   k   )   W       4       H   o   d   ,   3   A   !             5   \   s   w             J   q   b              :   U   e          (   *   9      M       Y   @      n   m      Q       <      f   #   .   ?       u   G   R      O   	                8   z       l      p              0       ]                  v   C   =      F   "   L   %   S               K   2          7                   c   1           g       -   6   &   
          `   V   $   X         i      [           j   N           a   /   t          D   y               ;       _   r   >      E   x    
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
               ALGORITMO DE Análisis Léxico Análisis Sintáctico Autómata a Pila Bienvenido a la página principal Camino: Cargar Compilador Complejidad Computacional Crear un prototipo de interfaz en herramientas de diseño. Definición Diseñada por LyCenciados Corruptos Distancia: Documentación Documentation Donde: EJEMPLO DIJKSTRA En esta estructura: Existe un camino entre cualquier par de vértices. Finalización: Frameworks y Herramientas Grafo Conexo Grafo Dirigido Grafo Ponderado Grafo Simple Gramática Guardar Historia de la Teoría de Grafos Identificador Inicialización: Introducción Intérprete Las aristas tienen un peso o valor numérico. Lenguaje Formal Lista de Adyacencias Marco Teórico Matriz de Adyacencia Multigrafo No tiene lazos ni múltiples aristas entre los mismos vértices. Nodos procesados: Nombre de nodo Números Números enteros positivos Objetivo General Objetivos Objetivos Específicos Observación Palabra reservada Paso 1 Paso 2 Paso 3 Paso 4 Paso 5 Paso 6 Paso 7 Pasos del Algoritmo Permite múltiples aristas entre dos vértices. REPRESENTACIÓN DE GRAFOS Resultado aquí... Si hay un 0, significa que no existe tal conexión. Sobre los Grafos Símbolos especiales TEORIA DE GRAFOS TIPOS DE GRAFOS Token Usando un Fibonacci Heap:  Usando un heap binario: Usando una matriz de adyacencia: es un conjunto finito de vértices o nodos. Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
The algorithm stops when all nodes have been
processed or when a specific destination node is reached (if
only a particular minimum path is sought).Can
rebuild the shortest path storing the predecessors
of each node. 
The distance of the node origin in 0 and that of the
other nodes in infinity.A priority tail is used to
Process the nodes with less known distance. 
The node is extracted with the lowest accumulated distance from the tail.
Their neighbors are traveled and, if a shorter route is located
Towards them, their distance is updated.It is inserted again
In the priority tail if your distance changes. 
Now, we see that a new candidate, the vertex e, and the
vertex c, but this time through d.But the minimum path
It arises when adding the vertex c. 
As we can see, a new candidate has been added, the
vertex f, through vertex b.The minimum path found in
All the graph is as follows: 
E is a set of edges or edges, which connect pairs of
Vertices 
In the penultimate step, another candidate appears again: the
vertex e, but this time through vertex f.Of all
forms, the minimum path changes again to resume the road
that had been following in the previous steps: 
In this antepenultimate step, three candidate vertices are added,
The vertices g, z and e.The latter was already but in this
occasion appears through vertex f.In this case the road
Minimum, which changes a bit with respect to the previous one, is: 
Finally, we reach the last step, in which only one is added
candidate, vertex z through the vertex e.The minimum path
And final obtained is: 
The one who has a lower weight is chosen from adjacent nodes
In the edge, in this case, the node d. 
<b> Identifier: </b> is the name assigned to variables,
functions, classes, objects or any entity defined by the
User in a programming language.               
<b> reserved word: </b> are predefined terms in a language
of programming and are usually reserved words, which means
that cannot be used as identifiers.               
<b> battery: </b> Data structure that follows the Lifo principle (last
In, first out), which means that the last element to enter
It is the first to leave.               
<b> Special symbols: </b> are characters that fulfill functions
specific within language, such as separators, delimitors or
Expression terminators               
<b> transitions: </b> indicate how the automaton of a state changes
to another depending on an input symbol.               
<strong> distance: </strong> the distance between two nodes u and v is
the minimal amount of axes that I must move to arrive from
u a v. 
<strong> neighborhood: </strong> two nodes are adjacent if there is a
edge that unites them. 
Develop a syntactic analyzer that validates the correct
graph structure according to the rules defined in the
grammar.               
Since the <strong> 1950 </strong> decade, graphs have been used
widely in sociometry and social networks, allowing analyzing
relations between people and organizational structures. 
Design a formal grammar for the definition of graphs,
including reserved words, identifiers, numbers and
Special symbols.               
Dijkstra algorithm is an efficient method to find the
shorter path from a node of origin to all other nodes
In a weighted graph, provided that the weights of the edges are
not negative.It was developed in 1956 by the scientist
computer Edsger W. Dijkstra and has become a
Fundamental tool in graph theory and optimization of
Routes 
The origin of graph theory dates back to the 18th century with the
Königsberg bridges problem, raised by
<strong> Leonhard Euler in 1736 </strong>.Euler showed no
There was a path that toured all the bridges without repeating them,
thus laying the basis of graph theory and topology. 
The first book on graph theory was written by
<strong> kőnig </strong> in <strong> 1936 </strong>. 
In <strong> 1847, Gustav Kirchhoff </strong> applied the theory of
Graphs in electrical circuits, formulating the laws of Kirchhoff. 
In <strong> 1852, Francis Guthrie </strong> proposed the problem of
The four colors, resolved in <strong> 1976 </strong>.In
<strong> 1857, Arthur Cayley </strong> used graphs to
count chemical isomers. 
Implement a lexical analyzer that identifies and classifies the
Input tokens.               
Incorporate a semantic analysis that verifies the coherence of the
Information represented in the graphs.               
The complexity of the algorithm depends on the data structure
used to handle the priority tail: 
The edges have a specific direction represented with
arrows 
Each entry contains a list with the nodes to which it is
connected. 
Develop an analyzer for the validation of structures of
graphs, allowing the detection of errors in its definition and
representation.             
Django is an open source website based on python,
Designed to facilitate the rapid development of web applications
safe and scalable.Use the model-vista-controller pattern
(MVC).Provides tools for database management,
user authentication and interface generation of
Administration, among other functionalities.             
The lexical analysis is the first phase in the compilation process or
Interpretation of a program, taking care of transforming the code
source in a sequence of minimum meaning units called
TokensDuring this phase, the lexical analyzer scan the code,
eliminating blank spaces and comments, and categorizing each
element in its respective type of token             
The lexical analysis transforms the code into tokens, the analysis
Syntactic verifies the structure of language, and analysis
semantic ensures that expressions make sense within the
program context.These techniques are widely used in
Compilers, interpreters and code validation tools
For well -established programming languages, such as
used in databases, numbers processing and others
Traditional domains.             
Syntactic analysis is the phase of a compiler or interpreter that
Verify if a tokens sequence meets the rules
grammaticals of a programming language.It is based on grammars
context free and is usually represented by trees of
Pilage derivation or automatons.Its objective is to structure
correctly entry so that it can be interpreted or executed
No errors.             
In software development, lexical, syntactic analyzers
and semantics play an essential role in interpretation and
source code validation.These components guarantee that
programs are understandable and functional when detecting errors before
of execution, which avoids problems that could prevent
Correct reading or execution of instructions.             
An array or dictionary is used, where each index or key
It represents a node. 
If in position (i, j) there is a 1, it means that there is a connection
between node I and J node. 
However, when it comes to graphs, the development of
specialized tools to analyze your formal representation
It is less common.Despite its importance in multiple disciplines,
such as networks, optimization and intelligence
artificial, automatic graphic validation for graphs follows
being a little explored area.This project aims
Design a specific grammar for the representation of graphs and
develop lexical, syntactic and semantic analyzers that
They validate their correct writing and structure.In doing so, it seeks
offer an innovative solution that allows accurate validation
of graphs in various contexts, facilitating its interpretation and use
In computational applications.             
A battery automaton is a computational model that extends
finite automatons when incorporating a battery, allowing you to recognize
more complex grammars, such as context free.             
A compiler is a program that translates source code written in a
High level language to low -level language, such as code
Machine.This process occurs before execution, allowing
that the program is executed independently without the need for
original code.             
An interpreter is a program that runs line code line by
Line without generating an executable file.This facilitates purification
and allows interactive execution, although it may be slower than
A compiler.Languages ​​like Python and Javascript use
Interpreters to execute their programs.             
A formal language is a set of defined symbols chains
by precise rules, used in logic, mathematics and
computing.It is used in the design of programming languages ​​and
communication protocols, guaranteeing well -defined structures
and understandable by machines and humans.             
A token is the smallest lexical unit with meaning within
A programming language.Each line of code is composed of
several tokens, which can represent reserved words,
Identifiers, operators, numbers or special symbols.             
A grammar is a set of rules that describe how
form valid expressions in formal language.It is used in the
Construction of programming languages ​​and defines the structure
correct of the instructions that the compiler or interpreter must
process.             
It is a square matrix of n × n size (where n is the number of
vertices) in which each cell indicates whether there is an edge between two
Vertices 
The adjacencia list is a representation of a graph in which
Each node has associated a set (or list) of adjacent nodes, it is
say, those with whom it has a direct connection through a
edge. 
Graphs can be represented in various ways in computer science
and graph theory.The two most common forms are matrix of
adjacencia and adjacencia list.Each has its advantages and
disadvantages depending on the type of graph and the problem you want
solve. 
<p>
Hello my name is Jhair Hi Hi Hi Hi Hi Hi Hi
Hihola Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi
Hi Hi Hihola Hi Hi Hi Hi Hi Hi Hihola Hi
Hi Hihola Hi Hi Hi Hi Hi Hi Hihola Hi
Hello hello hello hello hello hello
</p>
<p>%(message)s</p>  
<b> states: </b> represent the different phases of processing
of the entrance.                
<b> numbers: </b> represent numerical values ​​that can be
used in mathematical calculations and securities assignments.               A graph is a mathematical structure that represents relationships
Between a set of objects.Is formally defined as a couple
tidy: Algorithm Lexical analysis Syntactic analysis PILA Automata Welcome to the main page Path: Load Compiler Computational complexity Create an interface prototype in design tools. Definition Designed by LyCenciados Corruptos Distance: documentation Documentation Where: Dijkstra example In this structure: There is a path between any pair of vertices. Ending: Frameworks and tools Risked graph Directed graph Weighted graph Simple graph Grammar Save History of graph theory Identifier Initialization: Introduction Interpreter The edges have a numerical weight or value. Formal language Adjacecian list Theoretical framework Adjacencia matrix Multigraph It has no ties or multiple edges between the same vertices. Processed nodes: Node name Numbers Positive whole numbers General objective Goals Specific objectives Observation Reserved word Step 1 Step 2 Step 3 Step 4 Step 5 Step 6 Step 7 Steps of the algorithm It allows multiple edges between two vertices. Graph representation Result here ... If there is a 0, it means that there is no such connection. About the Graphs Special symbols Graph theory Types of graphs Token Using a Fibonacci Heap: Using a binary heap: Using an adjacencia matrix: It is a finite set of vertices or nodes. 