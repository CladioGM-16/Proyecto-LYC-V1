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
    window.guardarTexto = function () {
    let contenido = document.getElementById("codeArea").value;
    let blob = new Blob([contenido], { type: "text/plain" });
    let enlace = document.createElement("a");

    enlace.href = URL.createObjectURL(blob);
    enlace.download = "codigo.txt";
    document.body.appendChild(enlace);
    enlace.click();
    document.body.removeChild(enlace);
    URL.revokeObjectURL(enlace.href);
    };

    // Cargar código desde archivo TXT
    window.cargarTexto = function () {
    let input = document.createElement("input");
    input.type = "file";
    input.accept = ".txt";

    input.onchange = function (event) {
        let file = event.target.files[0];
        if (!file) return;

        let reader = new FileReader();
        reader.onload = function () {
            let codeArea = document.getElementById("codeArea");
            if (codeArea) {
                codeArea.value = reader.result;
                if (typeof updateLineNumbers === "function") {
                    updateLineNumbers();
                }
            } else {
                console.error("❌ No se encontró el área de código.");
            }
        };
        reader.onerror = function () {
            console.error("❌ Error leyendo el archivo.");
        };
        reader.readAsText(file);
    };

    input.click();
    };


    btnAnalizar.addEventListener("click", function () {
        let codigo = codeArea.value.trim();
    
        if (codigo === "") {
            resultado.innerHTML = `<div class="result-box error"><p>Error: El código no puede estar vacío.</p></div>`;
            return;
        }
    
        // Deshabilitar el botón para evitar múltiples clics
        btnAnalizar.disabled = true;
    
        // Mostrar indicador de carga
        resultado.innerHTML = `<div class="result-box"><p>Procesando...</p></div>`;
    
        fetch("/api/analizar/", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ codigo: codigo }),
        })
        .then(response => response.json())  // ✅ Leer siempre JSON, sin importar status HTTP
        .then(data => {
            console.log("✅ Respuesta de la API:", data);
    
            if (!data.success) {
                resultado.innerHTML = `
                    <div class="result-container">
                        <div class="result-box error">
                            <h3>⚠️ Error detectado</h3>
                            <p>${data.error}</p>
                            <pre>${data.errores_lexicograficos ? JSON.stringify(data.errores_lexicograficos, null, 2) : ""}</pre>
                        </div>
                    </div>
                `;
                return;
            }
    
            // 🔍 Verificar si hay errores sintácticos
            if (data.sintaxis && data.sintaxis.errores && data.sintaxis.errores.length > 0) {
                resultado.innerHTML = `
                    <div class="result-container">
                        <div class="result-box">
                            <h3>Tokens:</h3>
                            <pre>${JSON.stringify(data.tokens, null, 2)}</pre>
                        </div>
    
                        <div class="result-box">
                            <h3>Análisis Sintáctico:</h3>
                            <p class="error">${data.sintaxis.mensaje}</p>
                            <h3>Errores Sintácticos:</h3>
                            <pre>${JSON.stringify(data.sintaxis.errores, null, 2)}</pre>
                        </div>
    
                        <div class="result-box">
                            <h3>Análisis Semántico:</h3>
                            <p class="warning">⚠️ No se ejecutó el análisis semántico debido a errores sintácticos.</p>
                        </div>
                    </div>
                `;
                return;
            }
    
            // 🔍 Mostrar resultados cuando no hay errores léxicos ni sintácticos
            const analisisSintacticoExitoso = data.sintaxis && data.sintaxis.mensaje.includes("✔️");
            const analisisSemanticoExitoso = data.semantica && (!data.semantica.errores || data.semantica.errores.length === 0);
    
            resultado.innerHTML = `
                <div class="result-container">
                    <div class="result-box">
                        <h3>Tokens:</h3>
                        <pre>${JSON.stringify(data.tokens, null, 2)}</pre>
                        <h3>Errores Lexicográficos:</h3>
                        <pre>${
                            data.errores_lexicograficos && data.errores_lexicograficos.length 
                                ? JSON.stringify(data.errores_lexicograficos, null, 2) 
                                : "✔️ No se encontraron errores lexicográficos."
                        }</pre>
                    </div>
    
                    <div class="result-box">
                        <h3>Análisis Sintáctico:</h3>
                        <p class="${analisisSintacticoExitoso ? "success" : "error"}">${data.sintaxis.mensaje}</p>
                        <h3>Errores Sintácticos:</h3>
                        <pre>${data.sintaxis.errores.length > 0 ? JSON.stringify(data.sintaxis.errores, null, 2) : "✔️ No se encontraron errores sintácticos."}</pre>
                    </div>
    
                    <div class="result-box">
                        <h3>Análisis Semántico:</h3>
                        <p class="${analisisSemanticoExitoso ? "success" : "error"}">${data.semantica.mensaje}</p>
                        <h3>Errores Semánticos:</h3>
                        <pre>${data.semantica.errores && data.semantica.errores.length > 0 
                            ? JSON.stringify(data.semantica.errores, null, 2) 
                            : "✔️ No se encontraron errores."}</pre>
                    </div>
                </div>
            `;
        })
        .finally(() => {
            btnAnalizar.disabled = false;
        });
    });    
});