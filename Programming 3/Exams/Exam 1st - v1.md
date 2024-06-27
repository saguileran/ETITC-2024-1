# Parcial Final - Práctica

---
**Tabla de Contenido**
- [Parcial Final - Práctica](#parcial-final---práctica)
  - [Requisitos](#requisitos)
  - [Tareas](#tareas)
    - [Parte 1: Configuración de la Base de Datos](#parte-1-configuración-de-la-base-de-datos)
    - [Parte 2: Implementación de EJBs](#parte-2-implementación-de-ejbs)
    - [Parte 3: Implementación de JSP y JSTL](#parte-3-implementación-de-jsp-y-jstl)
    - [Parte 4: Configuración del Servidor y Despliegue](#parte-4-configuración-del-servidor-y-despliegue)
    - [Parte 5: Instrucciones Finales](#parte-5-instrucciones-finales)
  - [Evaluación](#evaluación)

---

En esta práctica de parcial final, implementaremos una aplicación web para la gestión de una biblioteca. La aplicación permitirá realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) para gestionar los libros. Utilizaremos tecnologías Java Server Pages (JSP), Java Standard Tag Library (JSTL) y JSTL-SQL, junto con Enterprise JavaBeans (EJBs) para la lógica de negocios y de presentación. La aplicación también se conectará a una base de datos para almacenar y recuperar información sobre los libros.

## Requisitos

1. **Entorno de Desarrollo:**
   - IDE compatible con Java EE (Eclipse, IntelliJ IDEA, NetBeans, etc.)
   - Servidor de aplicaciones Java EE (Apache TomEE, WildFly, GlassFish, etc.)
   - Base de datos (MySQL, PostgreSQL, etc.)

2. **Componentes a Implementar:**
   - **EJBs:** Implementación de la lógica de negocios.
   - **JSP y JSTL:** Páginas para la interacción con el usuario, capa de presentación.
   - **JSTL-SQL:** Conexión y operaciones en la base de datos.

## Tareas

### Parte 1: Configuración de la Base de Datos

1. **Crear la Base de Datos:**

    Crea una base de datos con los siguientes campos y agrega cinco campos más donde incluyas una fecha de prestamo y una fecha de entrega, guardalas en la base de datos con formato date o si tienes problemas como una string (aunque no es recomendado). No olvides cambiar el nombre de la biblioteca a uno de tu gusto.

    ```sql
    CREATE DATABASE Biblioteca_Nombre;

    USE Biblioteca_Nombre;

    CREATE TABLE Libros (
        id INT AUTO_INCREMENT PRIMARY KEY,
        titulo VARCHAR(255) NOT NULL,
        autor VARCHAR(255) NOT NULL
        paginas int NOT NULL;
        # agregar cinco atributos más
    );
    ```

    >[!IMPORTANT]
    >Recuerda que el usuario de la base de datos es `dba` y su clave es `123456789.eT`.

2. **Poblar la Tabla de Libros:**

    Agrega dos libros a la tabla **Libros** mediante la terminal o Workbrench.

### Parte 2: Implementación de EJBs

1. **Interfaz y Clase para los Libros:**

    Crea una clase llamada `Libro` que guarde los mismo atributos de la base de datos en una clase EJB, esta debe ser `remoto` y `stateless`. Al crear la sesión EJB la interfaz se crea automaticamente agrega los siguientes métodos dentro de la clase:

    ```java
    public interface LibroRemoto {
        // imprime toda la información del libro
        void setLibro(int id, String titulo, ...); 
        // lógica de negocios
        int tiempoPrestamo();
        double timepoLectura();
    }
    ```

    En esta clase agrega un método que calcule el tiempo que duro el usuario con el libro y otro método que calcule cuánto tardaria un usuario promedio, que lee una página en 10 minutos, en leer todo el libro. Como se definieron los métodos en la interfaz debes agregar `@Override` encima de cada método definido en la clase Libro, ejemplo:

    ```java
    public class Libro implements LibroRemoto {
        // declaración de atributos
        ...
        // declaración métodos
        @Override
        public void setLibro(int id, String titulo, ...){
            // implementar método aquí
            ...
        }
        ...
    }
    ```

    >[!NOTE]
    >Cuando crees la clase usando Eclipse, puedes definir si quieres crear de una vez la clase, si no cambias nada por defecto Eclipse crea la interfaz.


### Parte 3: Implementación de JSP y JSTL

1. **Página JSP para Listar Libros:**

    Agrega un archivo JSP llamado `index.jsp` que permita ver los libros, muestre la tabla **Libros**, e ir a los formularios para agregar, actualizar, o eliminar libros.

    Después agrega un servlet llamado `Libros` que muestre el contenido en el archivo `index.jsp`. Esto nos permitira re direccionar todo al url `\Libros` en vez de a `index.jsp`.

2. **Página JSP para Agregar Libro:**

    Crea un formulario para agregar libros, este debe llamarse `agregarLibro.jsp` y debe ejecutar la acción de guardar el libro. Recuerda que debes pasarle todas los campos requeridos para poder insertar datos a la tabla **Libros**.

3. **Página JSP para Guardar Libro (Procesar el formulario, acción):**

    Crea un JSP que se llame `guardarLibro.jsp` y ejecute la acción de agregar el libro a la base de datos, después de guardarlo debe redireccionar al servlet `\Libros` para ver los libros. Además convierte este jsp en un servlet para que funcione sin agregar una extensión al url.

4. **Formulario y Acción para Eliminar un Libro**

    Crea dos archivos JSP para eliminar un libro por el titulo, debes crear el formulario donde se pide el titulo y la acción que elimina el libro. La acción después de eliminar el libro debe redireccionar a el servlet `\Libros`.

5. **Formulario y Acción para Actualizar un Libro**

    Crea dos archivos JSP para actualizar un libro utilizando el indice y actualizando al menos dos campos (titulo, autor, etc). Debes crear el formulario donde se piden los campos y la acción que actualice el libro. La acción después de actualizar el libro debe redireccionar a el servlet `\Libros`.

### Parte 4: Configuración del Servidor y Despliegue

1. **Configurar el servidor de aplicaciones:**
   - Asegúrate de que tu servidor de aplicaciones esté configurado para soportar EJBs y JPS. Por esta razón usaremos Tomee y no Tomcat.
   - Configura el DataSource en el servidor para apuntar a la base de datos `Biblioteca_Nombre`.

2. **Desplegar la aplicación:**
   - Compila y empaqueta la aplicación como un archivo WAR. Para esto crea un proyecto dinámico y conviertelo a Maven.
   - Despliega el proyecto dinámico en el servidor de aplicaciones Tomee.

### Parte 5: Instrucciones Finales

- **Documentación:** Incluye una breve documentación sobre el parcial donde se agreguen pantallazos de que las funcionalidades están trabajando correctamente, utiliza el archivo README.md para realizar este reporte.
- **Pruebas:** Realiza pruebas para verificar que todas las funcionalidades CRUD funcionan correctamente. Agrega, actualiza, y elimina libros utilizando los formularios. Debes agregar pantallazos de que están funcionando correctamente.
- **Entrega:** Entrega el proyecto completo, incluyendo el código fuente y la base de datos, a través del sistema de gestión de tareas de la universidad, Campus Virtual. Por facilidad crea un repositorio llamado `ParcialFinal` y sube toda la aplicación allí, no olvides el archivo markdown.

>[!NOTE]
>El entregable sera el enlace al repositorio con todo lo requerido, además exportar la aplicación como un WAR y anexarla en el repositorio.

## Evaluación

La evaluación se basará en los siguientes criterios:
- Correctitud y funcionalidad de las operaciones CRUD.
- Uso adecuado de EJBs para la lógica de negocios.
- Implementación correcta de JSP, JSTL y JSTL-SQL.
- Conexión y operaciones con la base de datos.

---

Esta práctica tiene como objetivo evaluar tus conocimientos y habilidades en el desarrollo de aplicaciones web utilizando Java EE, enfocándote en la integración de componentes front y backend, así como en la manipulación de bases de datos.