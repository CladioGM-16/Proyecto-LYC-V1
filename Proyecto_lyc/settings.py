"""
Django settings for Proyecto_lyc project.

Generated by 'django-admin startproject' using Django 5.1.6.

For more information on this file, see
https://docs.djangoproject.com/en/5.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/5.1/ref/settings/
"""
import os
from pathlib import Path
<<<<<<< HEAD
#from django.utils.translation import gettext_lazy as _    
=======
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ.get('SECRET_KEY', 'clave-segura-de-desarrollo')
# SECURITY WARNING: don't run with debug turned on in production!

# Desactivar DEBUG en producción
DEBUG = "RENDER" not in os.environ

# Lista vacía de ALLOWED_HOSTS
ALLOWED_HOSTS = ["localhost", "127.0.0.1"]
<<<<<<< HEAD
ALLOWED_HOSTS = ['proyecto-lyc.onrender.com', 'localhost', '127.0.0.1']
=======
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350

# Obtener el hostname de Render
RENDER_EXTERNAL_HOSTNAME = os.environ.get("RENDER_EXTERNAL_HOSTNAME")

<<<<<<< HEAD
=======
# Si está definido, lo agregamos a ALLOWED_HOSTS
if RENDER_EXTERNAL_HOSTNAME:
    ALLOWED_HOSTS.append(RENDER_EXTERNAL_HOSTNAME)
# Application definitionz

>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'analizador',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
<<<<<<< HEAD
    'django.middleware.locale.LocaleMiddleware',
=======
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Proyecto_lyc.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
<<<<<<< HEAD
        'DIRS': [
            os.path.join(BASE_DIR, 'analizador/templates'),
        ],
=======
        'DIRS': [os.path.join(BASE_DIR, 'analizador/templates')],
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
<<<<<<< HEAD
                'analizador.context_processors.add_timestamp',  # <-- Agrega esta línea
=======
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
            ],
        },
    },
]

<<<<<<< HEAD

=======
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
WSGI_APPLICATION = 'Proyecto_lyc.wsgi.application'


# Database
# https://docs.djangoproject.com/en/5.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}


# Password validation
# https://docs.djangoproject.com/en/5.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.1/topics/i18n/

<<<<<<< HEAD
LANGUAGE_CODE = 'en'
=======
LANGUAGE_CODE = 'en-us'
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


<<<<<<< HEAD
LANGUAGES = [
    ('es', ('Español')),
    ('en', ('Ingles')),
    ('fr', ('French')),
    ('ru', ('Russian')),
]

LOCALE_PATHS = (
    os.path.join(BASE_DIR, 'locale'),
)

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.1/howto/static-files/

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

=======
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.1/howto/static-files/

STATIC_URL = 'Static/'

STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles")
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "Static")  
]
# Activar compresión y almacenamiento en caché para mejorar rendimiento en producción
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"

# Default primary key field type
# https://docs.djangoproject.com/en/5.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
<<<<<<< HEAD

=======
>>>>>>> 371b854dcd2597cd472953a0d8462ff544a9e350
