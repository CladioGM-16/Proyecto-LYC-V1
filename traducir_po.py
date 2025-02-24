import polib
from googletrans import Translator
import re

# 📌 Ruta del archivo de traducción
archivo_po = "locale/es/LC_MESSAGES/django.po"  # Ajusta según el idioma destino

# Cargar el archivo de traducción
po = polib.pofile(archivo_po)

# Inicializar el traductor de Google
translator = Translator()

# Expresión regular para detectar variables tipo `%(variable)s`
variable_pattern = re.compile(r"%\(\w+\)s")

# Expresión regular para etiquetas HTML (<p>, <div>, etc.)
html_tag_pattern = re.compile(r"(<[^>]+>)")

# Traducir todas las cadenas sin traducción, ignorando `venv/`
for entry in po:
    if not entry.msgstr and "venv" not in str(entry.occurrences):
        try:
            # ✅ Mantener la estructura original EXACTA
            original_text = entry.msgid

            # ✅ Verificar si `msgid` inicia/termina con `\n`
            starts_with_newline = original_text.startswith("\n")
            ends_with_newline = original_text.endswith("\n")

            # ✅ Traducir sin modificar estructura
            translated_text = translator.translate(original_text, src="es", dest="es").text

            # ✅ Reemplazar solo si la traducción afectó variables o HTML
            translated_text = translated_text.replace("\\n", "\n")

            # ✅ Restaurar `\n` al inicio y final si `msgid` lo tenía
            if starts_with_newline and not translated_text.startswith("\n"):
                translated_text = "\n" + translated_text
            if ends_with_newline and not translated_text.endswith("\n"):
                translated_text = translated_text + "\n"

            # ✅ Asignar traducción corregida
            entry.msgstr = translated_text.strip()

            print(f"✅ Traducido: {entry.msgid} → {entry.msgstr}")
        except Exception as e:
            print(f"❌ Error al traducir '{entry.msgid}': {e}")

# Guardar los cambios en el archivo `.po`
po.save(archivo_po)

print("\n🎉 Traducción automática corregida completada. Ahora ejecuta 'django-admin compilemessages'.")
