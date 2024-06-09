# Informe Sobre la Instalación del Sistema Operativo Ubuntu en una Máquina Virtual

**Curso:** Sistemas Operativos I

**Instructor:** Sebastián Aguilera Novoa

---

## Tabla de Contenido

- [Informe Sobre la Instalación del Sistema Operativo Ubuntu en una Máquina Virtual](#informe-sobre-la-instalación-del-sistema-operativo-ubuntu-en-una-máquina-virtual)
  - [Tabla de Contenido](#tabla-de-contenido)
    - [1. Introducción](#1-introducción)
      - [Propósito](#propósito)
      - [Alcance](#alcance)
    - [2. Requisitos Previos a la Instalación](#2-requisitos-previos-a-la-instalación)
      - [Requisitos de hardware](#requisitos-de-hardware)
      - [Requisitos de software](#requisitos-de-software)
    - [3. Configuración de la Máquina Virtual (MV)](#3-configuración-de-la-máquina-virtual-mv)
      - [Elección del software de virtualización](#elección-del-software-de-virtualización)
      - [Creación de la máquina virtual](#creación-de-la-máquina-virtual)
    - [4. Proceso de Instalación de Ubuntu](#4-proceso-de-instalación-de-ubuntu)
      - [Descarga de la ISO de Ubuntu](#descarga-de-la-iso-de-ubuntu)
      - [Configuración de la máquina virtual](#configuración-de-la-máquina-virtual)
      - [Pasos de la instalación](#pasos-de-la-instalación)
    - [5. Configuración Posterior a la Instalación](#5-configuración-posterior-a-la-instalación)
      - [Actualizaciones del Sistema](#actualizaciones-del-sistema)
      - [Instalar software esencial](#instalar-software-esencial)
      - [Configuración de los ajustes del sistema](#configuración-de-los-ajustes-del-sistema)
      - [Instalación software adicional](#instalación-software-adicional)
    - [6. Pruebas y verificación](#6-pruebas-y-verificación)
      - [Rendimiento del sistema](#rendimiento-del-sistema)
      - [Pruebas de funcionalidad](#pruebas-de-funcionalidad)
    - [7. Conclusión](#7-conclusión)
      - [Resumen del proceso](#resumen-del-proceso)
      - [Observaciones y desafíos](#observaciones-y-desafíos)
      - [Comentarios Sobre Ubuntu 22.04](#comentarios-sobre-ubuntu-2204)
    - [8. Referencias](#8-referencias)
      - [Sitios Web](#sitios-web)
      - [Documentos](#documentos)
      - [Tutoriales](#tutoriales)
    - [9. Apéndices](#9-apéndices)
      - [Apéndice A: Capturas de pantalla](#apéndice-a-capturas-de-pantalla)
      - [Apéndice B: Consejos para solucionar problemas](#apéndice-b-consejos-para-solucionar-problemas)

---

### 1. Introducción

#### Propósito
El propósito de este informe es documentar el proceso de instalación del sistema operativo Ubuntu en un entorno de máquina virtual. Esto incluye pasos detallados desde los requisitos previos a la instalación hasta la configuración y pruebas posteriores a la instalación.

#### Alcance
Este informe cubre la instalación de Ubuntu 22.04 LTS en Oracle VirtualBox, destacando cada fase del proceso de instalación. 

### 2. Requisitos Previos a la Instalación

#### Requisitos de hardware
- Procesador: Procesador de doble núcleo o superior mínimo de 1.1 GHz (se recomiendan 2 GHz)
- MEMORIA RAM: Mínimo 2 GB (se recomiendan 4 GB)
- Espacio en disco: Al menos 20 GB de almacenamiento libre (se recomiendan 40 GB)
- Conexión a Internet: Para descargar software y actualizaciones
- Arquitectura: 64-bit

Mayor información puede ser encontrada en [Installation Guide - System Requirements for Ubuntu](https://docs.cpanel.net/installation-guide/system-requirements-ubuntu/).


#### Requisitos de software
- Software de virtualización: Oracle VirtualBox (versión 6.1 o posterior)
- Archivo ISO de Ubuntu: Ubuntu 22.04.4 LTS (Jammy Jellyfish)

### 3. Configuración de la Máquina Virtual (MV)

#### Elección del software de virtualización
Para esta instalación, se elige Oracle VirtualBox debido a su amplio soporte y facilidad de uso.

#### Creación de la máquina virtual
1. **Abre VirtualBox** y haz clic en «Nuevo» para crear una nueva máquina virtual.
2. **Nombra la VM** (por ejemplo, «Ubuntu 22.04»), establece el tipo en «Linux» y la versión en «Ubuntu (64 bits)».
3. **Asigne memoria**: Asigna al menos 2 GB de memoria RAM.
4. **Crear un disco duro virtual**: Seleccione «Crear un disco duro virtual ahora» y siga las instrucciones para asignar al menos 25 GB de almacenamiento.

<p float="left" style="text-align:center">
  <img src="images/Elemetaryos_VM_requirements.png" width="800" />
</p>
***Es una imágen de ejemplo, cambiar y adaptar***

### 4. Proceso de Instalación de Ubuntu

#### Descarga de la ISO de Ubuntu
- Descargue el archivo ISO de Ubuntu 22.04 LTS desde el sitio web oficial de Ubuntu, [Ubuntu 22.04.4 LTS (Jammy Jellyfish)](https://releases.ubuntu.com/jammy/).

#### Configuración de la máquina virtual
1. **Montar la ISO**: Vaya a la configuración de la VM, en «Almacenamiento», conecte la ISO de Ubuntu descargada al controlador IDE.
2. 2. **Configuración de red**: Asegúrese de que el adaptador de red está configurado en «NAT» para el acceso a Internet durante la instalación.

#### Pasos de la instalación
1. **Arrancar la máquina virtual**: Haga clic en «Inicio» para arrancar desde la ISO.
2. **Seleccionar Instalar Ubuntu**: Sigue las instrucciones en pantalla.
3. **Disposición del teclado**: Elige la distribución de teclado que prefieras.
4. **Actualizaciones y otro software**: Opta por instalar software de terceros para gráficos y hardware Wi-Fi.
5. **Tipo de instalación**: Seleccione «Borrar disco e instalar Ubuntu» (esto afecta sólo al disco virtual).
6. **Configurar cuenta de usuario**: Introduzca su nombre, nombre del ordenador, nombre de usuario y contraseña. 
7. **Completar instalación**: Haga clic en «Instalar ahora» y espere a que se complete el proceso. Una vez hecho esto, reinicie la máquina virtual.


<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

### 5. Configuración Posterior a la Instalación

#### Actualizaciones del Sistema
- Abra un terminal y ejecute
  ```bash
  sudo apt update
  sudo apt upgrade
  ```

<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

#### Instalar software esencial
- Instale software adicional según sea necesario, como por ejemplo
  ```bash
  sudo apt install build-essential
  sudo apt install openjdk-21-jdk
  ```

<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

#### Configuración de los ajustes del sistema
- Ajuste la configuración de la pantalla, configure los ajustes de red y personalice el entorno de escritorio según sea necesario.

<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

#### Instalación software adicional
- Instale un software adicional que no se haya utilizado antes.

<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

### 6. Pruebas y verificación

#### Rendimiento del sistema
- Comprueba el rendimiento del sistema utilizando herramientas como `top` o `htop`, o incluso `glances`.

<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

#### Pruebas de funcionalidad
- Verifique la instalación del software, la conectividad a Internet y la funcionalidad básica del sistema.

<p float="left" style="text-align:center">
  <img src="images/nombre_de_la_imagen.png" width="800" alt="aqui va una foto, editar el campo src con el nombre correcto"/>
</p>

### 7. Conclusión

#### Resumen del proceso
Este informe detalla los pasos para instalar Ubuntu 22.04 LTS en un entorno VirtualBox, desde la configuración inicial hasta la configuración y las pruebas posteriores a la instalación.

#### Observaciones y desafíos
- Proceso de instalación sin problemas, con ajustes menores necesarios para un rendimiento óptimo.
- Posibles problemas de compatibilidad de hardware que se resolvieron mediante actualizaciones del sistema.

#### Comentarios Sobre Ubuntu 22.04

Como programador que usa Ubuntu todos los días, puedo decir que es una experiencia fantástica. Ubuntu es fácil de usar, rápido y muy estable. Su interfaz es intuitiva y bonita, lo que hace que trabajar sea agradable. La comunidad es muy amigable y siempre hay alguien dispuesto a ayudar. Además, las actualizaciones regulares mantienen todo funcionando perfectamente. 

En resumen, Ubuntu es una excelente opción para cualquier programador. 

>[!NOTE]
>En lo personal amo y disfruto utilizar Ubuntu todos los días, facilita mucho mi trabajo y optimiza los procesos que debo llevar a cabo. Mi calificación es 11/10 <3

### 8. Referencias

#### Sitios Web

- [ChatGPT - OpenAI](https://chatgpt.com/)
- [Ubuntu](https://ubuntu.com/)

#### Documentos

#### Tutoriales

### 9. Apéndices

#### Apéndice A: Capturas de pantalla
- Incluya capturas de pantalla adicionales del proceso de instalación, si es necesario.

#### Apéndice B: Consejos para solucionar problemas
- Problemas comunes y sus soluciones durante la instalación, si existieron.


---

Esta plantilla proporciona una guía completa para que los estudiantes documenten su instalación de Ubuntu en una máquina virtual, asegurando claridad y exhaustividad en su informe.