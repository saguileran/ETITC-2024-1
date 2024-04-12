# Tutorial: Uso de Pipes en Ubuntu

## Introducción
Los pipes, representados por el símbolo `|`, son una característica poderosa de los sistemas operativos basados en Unix, como Ubuntu. Permiten conectar la salida de un comando con la entrada de otro, lo que facilita el procesamiento de datos y la automatización de tareas. En este tutorial, exploraremos cómo usar pipes en Ubuntu con ejemplos prácticos.

## 1. Uso Básico de Pipes
- Para utilizar un pipe, simplemente coloca el símbolo `|` entre dos comandos en la terminal. La salida del primer comando se convertirá en la entrada del segundo comando.
  ```bash
  comando1 | comando2
  ```

## 2. Ejemplos de Pipes

#### a) Uso de `cat` y `grep` para buscar texto en un archivo
```bash
cat archivo.txt | grep "patrón_de_búsqueda"
```
Esto mostrará todas las líneas en `archivo.txt` que contienen el patrón de búsqueda especificado.

#### b) Uso de `echo` y `wc` para contar palabras
```bash
echo "Este es un ejemplo de conteo de palabras" | wc -w
```
Esto contará el número de palabras en la cadena de texto especificada.

#### c) Uso de `ls` y `grep` para buscar archivos específicos
```bash
ls | grep ".txt"
```
Esto mostrará todos los archivos en el directorio actual que tengan la extensión `.txt`.

#### d) Uso de `nano` y `grep` para buscar texto en un archivo abierto con nano
```bash
nano archivo.txt | grep "patrón_de_búsqueda"
```
Esto abrirá `archivo.txt` en el editor nano y luego mostrará todas las líneas que contienen el patrón de búsqueda especificado.

#### e) Uso de `touch` y `echo` para crear y escribir en un archivo
```bash
echo "Este es un nuevo archivo" | touch nuevo_archivo.txt
```
Esto creará un nuevo archivo llamado `nuevo_archivo.txt` con el contenido especificado.

#### f) Uso de `g++` y `./` para compilar y ejecutar un programa C++
```bash
g++ programa.cpp -o programa_ejecutable | ./programa_ejecutable
```
Esto compilará el programa `programa.cpp` y luego ejecutará el programa compilado.

## Conclusión
Los pipes son una herramienta poderosa en Ubuntu que permiten la transferencia de datos entre comandos de manera eficiente. Con los ejemplos proporcionados, puedes comenzar a experimentar con pipes y descubrir cómo pueden mejorar tu flujo de trabajo en la terminal de Ubuntu. Experimenta con diferentes combinaciones de comandos para automatizar tareas y procesar datos de manera efectiva.


# Tutorial: Uso de top y htop para Monitorear Procesos en Linux

## Introducción
Tanto `top` como `htop` son herramientas de línea de comandos que permiten a los usuarios de Linux monitorear los procesos en ejecución en el sistema. En este tutorial, aprenderemos cómo utilizar estas herramientas para visualizar y administrar los procesos, así como crear y eliminar procesos a través de la terminal.

## 1. Uso de top
- `top` es una herramienta de línea de comandos que muestra una lista en tiempo real de los procesos en ejecución en el sistema, así como información sobre el uso de la CPU, la memoria y otros recursos del sistema.
- Para ejecutar `top`, simplemente escriba `top` en la terminal y presione Enter.
- Puede presionar `q` para salir de `top`.

## 2. Uso de htop
- `htop` es una versión mejorada de `top` con una interfaz más fácil de usar y más características.
- Para ejecutar `htop`, primero debes instalarlo si no está instalado. Puedes hacerlo ejecutando `sudo apt install htop`.
- Luego, escribe `htop` en la terminal y presiona Enter.
- `htop` proporciona una interfaz interactiva que te permite navegar y administrar los procesos con facilidad.

## 3. Creación de Procesos
- Puedes crear un nuevo proceso en Linux utilizando el comando `&` al final de un comando. Esto ejecutará el comando en segundo plano, liberando así la terminal.
  ```bash
  comando &
  ```
  Por ejemplo, para ejecutar el script `mi_script.sh` en segundo plano, puedes usar:
  ```bash
  ./mi_script.sh &
  ```

## 4. Eliminación de Procesos
- Para eliminar un proceso, puedes usar el comando `kill` seguido del ID del proceso. Por ejemplo, si el ID del proceso es `1234`, puedes usar:
  ```bash
  kill 1234
  ```

## Conclusión
`top` y `htop` son herramientas valiosas para monitorear y administrar procesos en sistemas Linux. Con la capacidad de ver información detallada sobre el uso de recursos del sistema y la capacidad de crear y eliminar procesos a través de la terminal, estas herramientas son esenciales para cualquier administrador de sistemas o usuario avanzado de Linux.

##  Ejercicio
1. Abre la terminal y ejecuta `top`. Observa la lista de procesos y la información proporcionada.
2. Luego, instala `htop` si aún no lo has hecho usando `sudo apt install htop`.
3. Ejecuta `htop` y explora sus características. Compara la interfaz de usuario de `htop` con la de `top`.
4. Intenta crear un nuevo proceso en segundo plano utilizando el comando `&`, que sea un proceso con el comando `nano`.
5. Finalmente, elimina un proceso utilizando el comando `kill`.

Este ejercicio te ayudará a familiarizarte con el uso de `top` y `htop`, así como a practicar la creación y eliminación de procesos a través de la terminal en Linux.

# Tutorial: Ejemplo de Estados de Procesos, Prioridad y Programación de Módulos del Kernel en Linux


Primero iniciemos instalado c++, el entorno y compilador, para ello ejecutemos el siguiente comando 

```bash
sudo apt install build-essential
g++ nombre_del_archivo.cpp
```

## 1. Estados de Procesos

```cpp
#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == -1) {
        std::cerr << "Fallo en la creación del proceso hijo\n";
        return 1;
    } else if (pid == 0) {
        // Proceso hijo
        std::cout << "Proceso hijo: " << getpid() << "\n";
        // Simular algún trabajo
        for (int i = 0; i < 5; ++i) {
            std::cout << "Trabajando...\n";
            sleep(1);
        }
    } else {
        // Proceso padre
        std::cout << "Proceso padre: " << getpid() << "\n";
        // Esperar a que el proceso hijo termine
        wait(NULL);
        std::cout << "Proceso hijo terminado.\n";
    }

    return 0;
}
```

**Equivalente en Bash para Verificar el Estado del Proceso:**
```bash
# Lista todos los procesos con sus estados
ps -eo pid,ppid,state,command
```

## 2. Prioridad de Procesos y Jerarquía

```cpp
#include <iostream>
#include <sys/resource.h>
#include <unistd.h>

int main() {
    int prioridad = getpriority(PRIO_PROCESS, getpid());
    std::cout << "Prioridad original del proceso: " << prioridad << "\n";

    // Establecer una nueva prioridad
    nice(10); // Aumentar la prioridad
    prioridad = getpriority(PRIO_PROCESS, getpid());
    std::cout << "Nueva prioridad del proceso: " << prioridad << "\n";

    return 0;
}
```

**Equivalente en Bash para Cambiar la Prioridad del Proceso:**
```bash
# Cambiar la prioridad de un proceso (requiere sudo)
sudo renice 10 -p <pid>
```

## 3. Programación para el Kernel de Linux (Módulo del Kernel)

```cpp
#include <linux/module.h>
#include <linux/kernel.h>

int init_module() {
    printk(KERN_INFO "¡Hola, kernel!\n");
    return 0;
}

void cleanup_module() {
    printk(KERN_INFO "¡Adiós, kernel!\n");
}
```

**Equivalente en Bash para Cargar y Descargar el Módulo del Kernel:**
```bash
# Cargar el módulo del kernel (requiere sudo)
sudo insmod nombre_del_modulo.ko

# Descargar el módulo del kernel (requiere sudo)
sudo rmmod nombre_del_modulo
```

Estos ejemplos proporcionan una comprensión más detallada del trabajo con procesos, prioridades y programación del kernel en C++ en sistemas Linux. Además, se proporcionan comandos de Bash para realizar operaciones similares en la línea de comandos para interacciones a nivel de sistema.

## Conclusción

Las conclusiones sobre el tutorial de ejemplo de estados de procesos, prioridad y programación de módulos del kernel en Linux pueden ser las siguientes:

1. **Entendimiento Profundo del Funcionamiento del Sistema:** Este tutorial ofrece una visión detallada sobre cómo funcionan los procesos en Linux, cómo se gestionan sus prioridades y cómo se programa para el kernel del sistema operativo.

2. **Integración de Conocimientos en Diferentes Niveles:** Al proporcionar ejemplos en C++ para la manipulación de procesos y prioridades, así como ejemplos en Bash para operaciones de línea de comandos, el tutorial une conceptos de programación a nivel de usuario con operaciones a nivel del sistema operativo.

3. **Aplicabilidad en la Práctica:** Los ejemplos presentados en el tutorial son aplicables en situaciones reales de administración y desarrollo de sistemas Linux. Desde el monitoreo de procesos hasta la manipulación de prioridades y la programación de módulos del kernel, los conceptos cubiertos son fundamentales para cualquier profesional de la informática que trabaje en entornos Linux.

4. **Facilitación del Aprendizaje Continuo:** Además de proporcionar los ejemplos de código, el tutorial incluye enlaces a recursos adicionales que pueden ayudar a los estudiantes a profundizar en los temas presentados y continuar su aprendizaje sobre el funcionamiento interno de los sistemas Linux.

En resumen, este tutorial proporciona una base sólida para comprender y trabajar con los conceptos esenciales relacionados con procesos, prioridades y programación de módulos del kernel en sistemas Linux, lo que beneficia tanto a estudiantes como a profesionales en el campo de la informática.

## Lecturas y enlaces de interes:

### Introducción a Github

- [git - la guía sencilla](https://rogerdudler.github.io/git-guide/index.es.html)
- [La guía para principiantes de Git y Github](https://www.freecodecamp.org/espanol/news/guia-para-principiantes-de-git-y-github/)
- [Guías de GitHub Education](https://docs.github.com/es/education/guides)

### Códigos de muestra

- [Simple bash scripts](https://github.com/ruanyf/simple-bash-scripts?tab=readme-ov-file)
- [Useful Bash Scripts](https://github.com/mertcangokgoz/UsefulBashScripts)
- [A collection of useful scripts for Linux, Windows & Mac.
](https://github.com/miguelgfierro/scripts)
- [Operating Systems Concepts 10th edition - Github](https://github.com/dalmia/Operating-Systems)
