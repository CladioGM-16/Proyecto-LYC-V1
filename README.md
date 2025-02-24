# Proyecto-LYC-V1

En caso que lo quieran hacer de manera local usen en la terminal de VSC pongan --> python manage.py runserver

│── analizador/ # Esta es la aplicación principal

│ ├── **init**.py # Archivo de inicio (indica que es un módulo de Python)

│ ├── admin.py # Configuración del panel de administración de Django

│ ├── apps.py # Configuración de la aplicación Django

│ ├── models.py # Modelos de la base de datos (no se usara creo xD)

│ ├── tests.py # Pruebas automaticas

│ ├── views.py # Vistas de la aplicación (lo que se mostrara en las páginas)

│ ├── templates/ # Plantillas

│ ├── static/ # Archivos estaticos (CSS, JS, imagenes)

│── Proyecto_lyc/ # Configuracin del proyecto Django

│ ├── **init**.py # Archivo de inicio (no tocar)

│ ├── settings.py # Configuración principal del proyecto

│ ├── urls.py

│ ├── wsgi.py # Configuración para el despliegue con WSGI (no tocar por ahora)

│ ├── asgi.py # Configuración para el despliegue con ASGI (no tocar por ahora)

│── venv/ # Entorno virtual de Python

│── db.sqlite3 # Base de datos SQLite (no se usa pero Django por defecto lo crea)

│── manage.py # Main

│── .gitignore # carpetas que Git ignorar

Activar entorno virtual .\venv\Scripts\activate
