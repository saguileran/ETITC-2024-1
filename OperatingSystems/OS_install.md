# Ejercicio práctico: Instalación y configuración de Ubuntu y Windows en VirtualBox
---

El objetivo de este ejercicio práctico es profundizar el conocimiento de los alumnos con la instalación y configuración de los sistemas operativos Ubuntu y Windows en VirtualBox. Los alumnos aprenderán a crear máquinas virtuales, particionar discos duros y configurar los parámetros básicos del sistema para ambos sistemas operativos.

## Requisitos
- Un ordenador con VirtualBox instalado
- Imágenes ISO de Ubuntu y Windows
- Conocimientos básicos de particionamiento e instalación de sistemas operativos

## Esquema del Ejercicio

### 1. Introducción a VirtualBox
   - Visión general de VirtualBox
   - Creación de una nueva máquina virtual
   - Asignación de recursos (CPU, RAM, almacenamiento)

### 2. Creación de máquinas virtuales
   - Crear una máquina virtual para Ubuntu
   - Crear una máquina virtual para Windows

     > [!IMPORTANT]
     > Ambas máquinas deben estar creadas con el doble de requisitos mencionados y 100 gb de disco duro.

### 3. Descripción general de particiones
   - Entender las particiones: primarias, extendidas y lógicas
   - Importancia del particionamiento en los sistemas operativos

### 4. Instalación de Ubuntu
   - Arrancar desde la ISO de Ubuntu
   - Seleccionar el idioma deseado
   - Navegando por el proceso de instalación
   - Particionado del disco duro virtual:
     - Partición `/EFI`: Espacio para el UEFI boot
     - Partición `/` (raíz): 20 GB
     - Partición `swap`: 2 GB (o el doble del tamaño de la RAM)
     - Partición `/home`: Espacio restante
   - Finalización de la instalación
   - Configuración básica y actualizaciones 

### 5. Instalación de Windows
   - Arranque desde la ISO de Windows
   - Selección del idioma deseado
   - Navegación por el proceso de instalación
   - Particionado del disco duro virtual:
     - Unidad `C:`: 50 GB (para archivos de sistema y aplicaciones)
     - Unidad `D:`: Espacio restante (para datos de usuario y documentos)
   - Finalización de la instalación
   - Configuración básica y actualizaciones

### 6. Configuración posterior a la instalación
   - Configuración de los ajustes de red
   - Instalación de VirtualBox Guest Additions
   - Instalación de software esencial (por ejemplo, navegadores web, editores de texto, IDEs, krita, etc)

### 7. Entrega de Tareas
   - Realiza capturas de pantalla de los pasos clave del proceso de instalación
   - Redactar un breve informe resumiendo los pasos de instalación y configuración
   - Reflexione sobre los retos a los que se ha enfrentado y cómo los ha superado

## Pasos Detallados

### Parte 1: Introducción a VirtualBox

- Abra VirtualBox y familiarícese con la interfaz.
- Crea una nueva máquina virtual:
  - Haga clic en «Nueva».
  - Nombra la VM (por ejemplo, «Ubuntu VM», «Windows VM»)
  - Seleccione el tipo y la versión del SO
  - Asigne al menos 2 GB de RAM
  - Cree un nuevo disco duro virtual (formato VDI, asignado dinámicamente)


### Parte 2: Creación de Máquinas Virtuales

1. **Ubuntu VM:**
   - Nombre: «Ubuntu VM»
   - Tipo: Linux
   - Versión: Ubuntu (64 bits)
   - RAM: 2048 MB (2 GB)
   - Disco duro: Crear un nuevo disco duro virtual (20 GB mínimo).

2. **VM Windows:**
   - Nombre: «Windows VM»
   - Tipo: Microsoft Windows
   - Versión: Windows 10 (64 bits)
   - RAM: 4096 MB (4 GB)
   - Disco duro: Crear un nuevo disco duro virtual (60 GB mínimo)

### Parte 3: Visión general del particionado

- **Partición primaria:** La partición principal de arranque donde se instala el SO.
- **Partición Extendida:** Un contenedor para particiones lógicas, utilizado cuando se necesitan más de cuatro particiones.
- **Partición lógica:** Particiones dentro de una partición extendida.

### Parte 4: Instalar Ubuntu

1. Inicie la VM de Ubuntu y seleccione la ISO de Ubuntu como disco de arranque.
2. Siga las instrucciones en pantalla para instalar Ubuntu:
   - Seleccione «Instalar Ubuntu»
   - Seleccione «Algo más» cuando se le pregunte por el tipo de instalación para particionar manualmente el disco.
3. Crear particiones:
   - **Root (`/`) Partición:** Seleccionar espacio libre > Añadir > Tipo: Primaria, Tamaño: 20 GB, Punto de montaje: `/`
   - **Partición de intercambio (swap):** Seleccione espacio libre > Añadir > Tipo: Lógica, Tamaño: 2 GB, Usar como: área de intercambio
   - **Partición para el boot (EFI):** Seleccione espacio libre > Añadir > Tipo: Lógica, Tamaño: 512 bytes, Usar como: EFI
   - **Partición Home (`/home`):** Seleccione el espacio libre > Añadir > Tipo: Lógica, Tamaño: Espacio restante, Punto de montaje: `/home`. Pueden usar el tutorial [Linux partitioning
   - recommendations](https://www.youtube.com/watch?v=Wc4GjV_Ahb8) hast el minuto 7.

4. Completa la instalación y configura una cuenta de usuario.
5. Tras la instalación, actualice el sistema e instale los controladores necesarios. Usar códigos `sudo apt update && sudo apt upgrade`.


### Parte 5: Instalación de Windows

1. Inicie la VM de Windows y seleccione la ISO de Windows como disco de arranque.
2. Siga las instrucciones en pantalla para instalar Windows:
   - Elija «Personalizado: Instalar sólo Windows».
   - 3. En la pantalla de particiones, cree dos particiones:
     - **Unidad C:** Seleccione el espacio no asignado > Nuevo > Tamaño: 40 GB > Aplicar
     - **Unidad D:** Selecciona el espacio sin asignar restante > Nuevo > Aplicar.
3. Completa la instalación y configura una cuenta de usuario.
4. Tras la instalación, actualice el sistema e instale los controladores necesarios.

### Parte 6: Configuración Post-Instalación

- **Configuración de red:** Asegúrese de que las máquinas virtuales pueden acceder a Internet.
- **VirtualBox Guest Additions:** Instalar para un mejor rendimiento y características adicionales. Algunas referencias:
  - [Instalar las Guest Additions para trabajar con VirtualBox](https://www.softzone.es/programas/sistema/instalar-guest-addition-virtual-box/)
   - [Chapter 4. Guest Additions](https://www.virtualbox.org/manual/ch04.html)
   - [How do I install Guest Additions in a VirtualBox VM?](https://askubuntu.com/questions/22743/how-do-i-install-guest-additions-in-a-virtualbox-vm)

- **Software Esencial:**
  - Ubuntu: `sudo apt install build-essential curl nano wget openjdk-21-jdk`
  - Windows: Descargar e instalar software de fuentes de confianza.

### Parte 7: Entrega de tareas

- Haz capturas de pantalla de lo siguiente:
  - Particionamiento durante la instalación de Ubuntu
  - Partición durante la instalación de Windows
  - Pantalla final del escritorio de ambos sistemas operativos
- Comenta las capturas de pantalla como si fueran un informe resumiendo:
  - Los pasos de instalación de ambos sistemas operativos
  - Los pasos de configuración realizados tras la instalación
  - Desafíos encontrados y soluciones encontradas
- Envíe las capturas de pantalla y el informe en un único archivo PDF.

## Actividad Complementaria

Ahora instala windows server y reporta el proceso.

> [!NOTE]
> Pueden realizar los reportes escribiendo en word o utilizando lenguaje markdown que es el principal de github.

## Referencias

- [BIOS, CMOS, UEFI - What's the difference?](https://www.youtube.com/watch?v=LGz0Io_dh_I&t=1s)
- [BIOS and UEFI As Fast As Possible](https://www.youtube.com/watch?v=zIYkol851dU)

---

Este ejercicio práctico proporcionará experiencia práctica en la instalación de sistemas operativos, particionado y configuración básica, que son habilidades esenciales para los estudiantes de ingeniería de sistemas.
