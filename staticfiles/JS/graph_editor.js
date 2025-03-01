let network;
let nodes = new vis.DataSet([]);
let edges = new vis.DataSet([]);
let editModeNodes = false;
let editModeEdges = false;
let editModeDelete = false;
let selectedNode = null;
let nodeCounter = 1; // 🔥 Contador global de nodos para IDs únicos

function initGraph() {
    let container = document.getElementById("mynetwork");
    let data = { nodes: nodes, edges: edges };

    let options = {
        interaction: { dragNodes: false, zoomView: false, dragView: false },
        physics: false,
        manipulation: { enabled: false }
    };

    network = new vis.Network(container, data, options);
    attachClickEvent();
    updateButtons();
}

// 📌 **Registrar eventos de clic**
function attachClickEvent() {
    network.off("click");
    network.on("click", function (params) {
        if (editModeNodes) {
            addNodeAtClick(params.pointer.canvas.x, params.pointer.canvas.y);
        } else if (editModeEdges) {
            handleEdgeSelection(params.pointer.DOM);
        } else if (editModeDelete) {
            deleteElement(params);
        }
    });
}

// ➕ **Agregar nodo en la posición donde se hace clic con un ID único**
function addNodeAtClick(x, y) {
    let newNode = {
        id: nodeCounter++,
        label: `${nodeCounter - 1}`,
        x: x,
        y: y
    };
    nodes.add(newNode);
    network.redraw();
}

// 🔗 **Manejo de selección para agregar aristas**
function handleEdgeSelection(pointer) {
    let clickedNode = network.getNodeAt(pointer);
    if (clickedNode) {
        if (!selectedNode) {
            selectedNode = clickedNode;
        } else {
            if (selectedNode !== clickedNode) {
                showEdgeForm(selectedNode, clickedNode);
            }
            selectedNode = null;
        }
    }
}

// 🏗 **Formulario para definir peso y dirección de la arista**
function showEdgeForm(fromNode, toNode) {
    let weight = prompt("Ingrese el peso de la arista:");
    if (!weight || isNaN(weight)) {
        alert("Debe ingresar un número válido.");
        selectedNode = null;
        return;
    }
    let directed = confirm("¿La arista debe ser dirigida?");
    edges.add({
        id: `${fromNode}-${toNode}`, // 🔥 ID único
        from: fromNode,
        to: toNode,
        label: weight,
        arrows: directed ? "to" : "",
        color: { color: "black" }  // 🔹 Aristas inician en negro
    });

    selectedNode = null;
    network.redraw();
}

// ❌ **Eliminar nodo/arista al hacer clic en Modo Eliminar**
function deleteElement(params) {
    let nodeId = network.getNodeAt(params.pointer.DOM);
    let edgeId = network.getEdgeAt(params.pointer.DOM);

    if (nodeId) {
        nodes.remove(nodeId);
    } else if (edgeId) {
        edges.remove(edgeId);
    }

    network.redraw();
    attachClickEvent();
}

// 🔄 **Alternar modos**
function toggleEditModeNodes() { editModeNodes = !editModeNodes; editModeEdges = editModeDelete = false; updateButtons(); }
function toggleEditModeEdges() { editModeEdges = !editModeEdges; editModeNodes = editModeDelete = false; updateButtons(); }
function toggleEditModeDelete() { editModeDelete = !editModeDelete; editModeNodes = editModeEdges = false; updateButtons(); }

// 🔄 **Actualizar estados de los botones**
function updateButtons() {
    document.getElementById("editModeNodesBtn").innerText = editModeNodes ? "Desactivar Agregar Nodos" : "Modo Agregar Nodos";
    document.getElementById("editModeEdgesBtn").innerText = editModeEdges ? "Desactivar Agregar Aristas" : "Modo Agregar Aristas";
    document.getElementById("editModeDeleteBtn").innerText = editModeDelete ? "Desactivar Eliminar" : "Modo Eliminar";
}

// 📌 **Inicializar la red**
document.addEventListener("DOMContentLoaded", initGraph);

document.addEventListener("DOMContentLoaded", function () {
    let boton = document.getElementById("ejecutarDijkstra");
    if (boton) boton.addEventListener("click", runDijkstraFromJS);
});

function runDijkstraFromJS() {
    let startNode = prompt("Ingrese el ID del nodo de inicio:");
    let endNode = prompt("Ingrese el ID del nodo de destino:");

    if (!startNode || !endNode) {
        alert("Debes ingresar los nodos de inicio y destino.");
        return;
    }

    let graph = {};
    nodes.forEach(node => graph[node.id] = []);

    edges.forEach(edge => {
        let from = edge.from;
        let to = edge.to;
        let weight = parseInt(edge.label);
        graph[from].push([to, weight]);
        if (!edge.arrows) graph[to].push([from, weight]);  // 🔥 Asegurar bidireccionalidad si no es dirigido
    });

    console.log("📡 Enviando JSON a Django:", JSON.stringify({ graph, start: startNode, end: endNode }));

    fetch("/api/run_dijkstra/", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ graph, start: startNode, end: endNode })
    })
    .then(response => response.json())
    .then(data => {
        console.log("✅ Respuesta de Django:", data);
        if (data.error) {
            alert("Error: " + data.error);
        } else {
            alert(`La distancia más corta de ${startNode} a ${endNode} es: ${data.distance}`);
            highlightShortestPath(startNode, endNode, data.distances);
        }
    })
    .catch(error => {
        console.error("❌ Error en fetch:", error);
        alert("Ocurrió un error al ejecutar el algoritmo.");
    });
}

// 🔴 **Función para resaltar la ruta más corta**
function highlightShortestPath(startNode, endNode, distances) {
    let pathEdges = [];
    let currentNode = parseInt(endNode);

    console.log("🔍 Buscando ruta más corta...");
    console.log("🌍 Distancias recibidas:", distances);

    if (!(currentNode in distances) || distances[currentNode] === Infinity) {
        console.error(`❌ El nodo ${endNode} no es alcanzable desde ${startNode}.`);
        return;
    }

    // 🔥 Restaurar todas las aristas a negro antes de resaltar la nueva ruta
    edges.forEach(edge => {
        edges.update({ id: edge.id, color: { color: 'black' } });
    });

    // 🔥 Crear un diccionario de predecesores
    let prev = {};
    edges.forEach(edge => {
        let from = parseInt(edge.from);
        let to = parseInt(edge.to);
        let weight = parseInt(edge.label);

        if (distances[from] + weight === distances[to]) {
            prev[to] = from;
        } else if (distances[to] + weight === distances[from]) { // Para grafos no dirigidos
            prev[from] = to;
        }
    });

    console.log("📌 Diccionario de predecesores:", prev);

    // 🔍 Construir la ruta más corta de atrás hacia adelante
    while (currentNode !== parseInt(startNode)) {
        if (!(currentNode in prev)) {
            console.error("❌ No se encontró un camino válido.");
            return;
        }
        let from = prev[currentNode];

        // Encontrar la arista que conecta `from` -> `currentNode`
        edges.forEach(edge => {
            if ((edge.from == from && edge.to == currentNode) || (edge.from == currentNode && edge.to == from)) {
                pathEdges.push(edge.id);
            }
        });

        currentNode = from;
    }

    console.log("🚀 Ruta encontrada, resaltando en rojo:", pathEdges);

    // 🔥 Aplicar color rojo a las aristas del camino más corto
    pathEdges.forEach(edgeId => {
        edges.update({ id: edgeId, color: { color: 'red' } });
    });

    network.redraw();
}


