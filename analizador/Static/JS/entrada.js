document.addEventListener("DOMContentLoaded", function () {
    // Variables del editor de código
    const codeArea = document.getElementById("codeArea");
    const lineNumbers = document.getElementById("lineNumbers");
    const btnAnalizar = document.getElementById("btnAnalizar");
    const resultado = document.getElementById("resultado");

    // Actualizar los números de línea en el editor
    function updateLineNumbers() {
        const lines = codeArea.value.split("\n");
        let numbersHTML = "";
        for (let i = 1; i <= lines.length; i++) {
            numbersHTML += `<div>${i}</div>`;
        }
        lineNumbers.innerHTML = numbersHTML;
    }

    // Sincronizar scroll entre el área de código y los números de línea
    function syncScroll() {
        requestAnimationFrame(() => {
            lineNumbers.scrollTop = codeArea.scrollTop;
        });
    }

    // Manejar eventos de entrada y scroll
    codeArea.addEventListener("scroll", syncScroll);
    codeArea.addEventListener("input", updateLineNumbers);
    codeArea.addEventListener("paste", function () {
        setTimeout(updateLineNumbers, 10);
    });

    // Inicializar números de línea
    updateLineNumbers();

    // Atajos de teclado para guardar (Ctrl+S) y cargar (Ctrl+O) código
    document.addEventListener("keydown", function (event) {
        if (event.ctrlKey && event.key === "s") {
            event.preventDefault();
            guardarTexto();
        } else if (event.ctrlKey && event.key === "o") {
            event.preventDefault();
            cargarTexto();
        }
    });

    // Guardar código en archivo TXT
    function guardarTexto() {
        try {
            let contenido = codeArea.value;
            if (!contenido.trim()) {
                alert("No hay contenido para guardar.");
                return;
            }
            let blob = new Blob([contenido], { type: "text/plain" });
            let enlace = document.createElement("a");
            enlace.href = URL.createObjectURL(blob);
            enlace.download = "codigo.txt";
            enlace.click();
        } catch (error) {
            console.error("Error al guardar el archivo:", error);
        }
    }

    // Cargar código desde archivo TXT
    function cargarTexto() {
        let input = document.createElement("input");
        input.type = "file";

        input.onchange = function (event) {
            let file = event.target.files[0];
            if (!file) return;

            let reader = new FileReader();
            reader.onload = function () {
                try {
                    codeArea.value = reader.result;
                    updateLineNumbers();
                } catch (error) {
                    console.error("Error al cargar el archivo:", error);
                }
            };
            reader.onerror = function () {
                console.error("Error leyendo el archivo");
            };
            reader.readAsText(file);
        };

        input.click();
    }

    // Función para analizar el código ingresado con la API
    btnAnalizar.addEventListener("click", function () {
        let codigo = codeArea.value.trim();

        if (codigo === "") {
            resultado.innerHTML = `<p style="color: red;">Error: El código no puede estar vacío.</p>`;
            return;
        }

        // Deshabilitar el botón para evitar múltiples clics
        btnAnalizar.disabled = true;

        // Mostrar indicador de carga
        resultado.innerHTML = `<p style="color: blue;">Procesando...</p>`;

        fetch("/api/analizar/", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ codigo: codigo }),
        })
        .then(response => {
            if (!response.ok) {
                throw new Error(`Error del servidor: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            if (data.success) {
                resultado.innerHTML = `
                    <h3>Tokens:</h3> <pre>${JSON.stringify(data.tokens, null, 2)}</pre>
                    <h3>Análisis Sintáctico:</h3> <pre>${JSON.stringify(data.sintaxis, null, 2)}</pre>
                `;
            } else {
                resultado.innerHTML = `<p style="color: red;">Error: ${data.error}</p>`;
            }
        })
        .catch(error => {
            resultado.innerHTML = `<p style="color: red;">Error en la API: ${error.message}</p>`;
        })
        .finally(() => {
            // Habilitar el botón después de completar la solicitud
            btnAnalizar.disabled = false;
        });
    });
});
