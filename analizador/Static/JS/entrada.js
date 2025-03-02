document.addEventListener("DOMContentLoaded", function () {
    const codeArea = document.getElementById("codeArea");
    const lineNumbers = document.getElementById("lineNumbers");

    function updateLineNumbers() {
        const lines = codeArea.value.split("\n");
        let numbersHTML = "";
        for (let i = 1; i <= lines.length; i++) {
            numbersHTML += `<div>${i}</div>`;
        }
        lineNumbers.innerHTML = numbersHTML;
    }

    function syncScroll() {
        lineNumbers.scrollTop = codeArea.scrollTop;
    }

   
    codeArea.addEventListener("scroll", syncScroll);
    

    codeArea.addEventListener("input", updateLineNumbers);


    updateLineNumbers();
});
//(las funciones aun esta pon verse son ideas de paco supongo de pgt)
// guarda el contenido en un doc txt
function guardarTexto() {
    let contenido = document.getElementById("codeArea").value;
    let blob = new Blob([contenido], { type: "text/plain" });
    let enlace = document.createElement("a");

    enlace.href = URL.createObjectURL(blob);
    enlace.download = "codigo.txt";
    enlace.click();
}
// carga el contenido de un doc txt (solo es formato)
function cargarTexto() {
    let input = document.createElement("input");
    input.type = "file";

    input.onchange = function (event) {
        let file = event.target.files[0];
        let reader = new FileReader();

        reader.onload = function () {
            document.getElementById("codeArea").value = reader.result;
            updateLineNumbers();
        };

        reader.readAsText(file);
    };

    input.click();
}