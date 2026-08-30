\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# 📱 Mi Primera Aplicación en Flutter

## Información del proyecto

**Autor:** Hernán Ronquillo Y.  
**Proyecto:** Mi Primera Aplicación en Flutter  
**Tecnología:** Flutter  
**Lenguaje:** Dart  
**Editor:** Visual Studio Code  
**Sistema operativo:** macOS  
**Arquitectura:** Intel x86_64  
**Plataforma de prueba:** Android Emulator  
**Paquete externo:** Google Fonts  


# Descripción del proyecto

Este proyecto corresponde al desarrollo de mi primera aplicación utilizando Flutter.

El objetivo principal es poner en práctica los conceptos básicos de Flutter, incluyendo la creación de un proyecto, utilización de widgets, diseño de una interfaz, interacción mediante botones, instalación de paquetes externos y publicación del proyecto en GitHub.

# Objetivos

## Objetivo general
Desarrollar una aplicación básica utilizando Flutter que permita demostrar el uso de widgets, interacción con el usuario, instalación de paquetes externos y publicación del proyecto mediante GitHub.

## Objetivos específicos

- Crear un proyecto utilizando Flutter.
- Utilizar Visual Studio Code como entorno de desarrollo.
- Implementar una pantalla principal.
- Utilizar `MaterialApp` y `Scaffold`.
- Crear una barra superior mediante `AppBar`.
- Utilizar widgets como `Column`, `Row`, `Container` y `Card`.
- Incorporar una fotografía de perfil.
- Personalizar colores y estilos.
- Implementar un botón interactivo.
- Instalar y utilizar el paquete `google_fonts`.
- Utilizar la fuente Poppins en la aplicación.
- Generar un ícono personalizado para la aplicación.
- Ejecutar la aplicación en un emulador Android.
- Publicar el proyecto en GitHub.

# Tecnologías utilizadas

- Flutter 3.47.1
- Dart 3.13.1
- Visual Studio Code
- Android Emulator
- Android SDK
- Git
- GitHub
- Google Fonts

# Requisitos previos
Para ejecutar este proyecto se requiere tener instalado:

- Flutter SDK
- Dart SDK
- Visual Studio Code
- Android Studio
- Android SDK
- Android Emulator
- Git

También se recomienda verificar la instalación de Flutter utilizando:
bash> flutter doctor

# Actividad Integradora 2

## Descripción

Para la Actividad Integradora 2 se continuó trabajando sobre la aplicación desarrollada en la Actividad Integradora 1.

La aplicación "Mi Perfil" fue ampliada incorporando nuevas pantallas, navegación, nuevos widgets, interacciones, manejo de estado mediante `setState()`, un nuevo paquete externo y una mejor organización del código.

El objetivo fue evolucionar la aplicación inicial hacia una aplicación con una estructura más organizada y con mayor interacción con el usuario.
Nuevas funcionalidades implementadas

# En esta segunda actividad se incorporaron las siguientes funcionalidades:

- Cuatro pantallas independientes.
- Navegación entre pantallas mediante `Navigator`.
- Organización del código mediante carpetas.
- Listado de habilidades.
- Sistema de favoritos.
- Cambio dinámico de información mediante `setState()`.
- Mensajes mediante `SnackBar`.
- Ventana de información mediante `AlertDialog`.
- Botones de navegación.
- Botón flotante.
- Opciones de contacto.
- Incorporación del paquete `url_launcher`.
- Uso de nuevos widgets de Flutter.

#Pantallas desarrolladas

## 1. Pantalla de Inicio
La pantalla principal presenta el perfil de Hernán Ronquillo.
Incluye:
- Fotografía.
- Nombre.
- Carrera.
- Descripción.
- Botones para navegar a las demás pantallas.

---

## 2. Pantalla Mi Perfil
Presenta información personal y académica.
Se utiliza:

- `CircleAvatar`
- `Card`
- `ListTile`
- `Divider`
- `Icon`
- `ElevatedButton`

---

## 3. Pantalla Mis Habilidades

Presenta una lista de tecnologías e intereses.

Las habilidades disponibles son:
- Administración de sistemas
- Oracle Database
- Oracle JDE EnterpriseOne
- Flutter
- Programación 
- Tecnologia
El usuario puede seleccionar habilidades como favoritas.

La selección modifica dinámicamente la interfaz mediante `setState()`.

---

## 4. Pantalla Contacto

Permite visualizar diferentes opciones de contacto.
La pantalla incorpora:

- Correo electrónico.
- Telefono.
- Botones.
- Iconos.
- Mensajes mediante `SnackBar`.

  # Nuevos widgets utilizados
Durante esta actividad se incorporaron nuevos widgets de Flutter:

- `ListView`
- `ListTile`
- `Card`
- `CircleAvatar`
- `Divider`
- `Image`
- `Icon`
- `ElevatedButton`
- `IconButton`
- `FloatingActionButton`
- `Padding`
- `SizedBox`
- `Expanded`
- `Container`
