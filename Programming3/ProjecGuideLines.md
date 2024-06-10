# Proyecto Articulador (PAR) - Porgramación III
---

- [Proyecto Articulador (PAR) - Porgramación III](#proyecto-articulador-par---porgramación-iii)
  - [Objetivo](#objetivo)
  - [Almacenamiento del Proyecto](#almacenamiento-del-proyecto)
  - [Requerimientos del Proyecto](#requerimientos-del-proyecto)
      - [1. Requisitos Funcionales](#1-requisitos-funcionales)
      - [2. Requisitos No Funcionales](#2-requisitos-no-funcionales)
      - [3. Tecnologías y Herramientas](#3-tecnologías-y-herramientas)
      - [4. Estructura del Proyecto](#4-estructura-del-proyecto)
      - [5. Documentación](#5-documentación)
  - [Tareas del Proyecto](#tareas-del-proyecto)
    - [1. Investigación y Análisis del Tema](#1-investigación-y-análisis-del-tema)
    - [2. Diseño del Sitio Web](#2-diseño-del-sitio-web)
    - [3. Implementación del Sitio Web](#3-implementación-del-sitio-web)
    - [4. Pruebas y Validación](#4-pruebas-y-validación)
    - [6. Despliegue](#6-despliegue)
    - [7. Conclusiones](#7-conclusiones)
    - [8. Futuros Aportes](#8-futuros-aportes)
    - [7. Referencias](#7-referencias)
  - [Entregables](#entregables)
  - [Evaluación](#evaluación)


Esta guía proporciona un marco detallado para desarrollar el proyecto PAR de creación de una página web dinámica utilizando tecnologías Java, asegurando un enfoque estructurado y completo desde el diseño hasta la implementación, pruebas y despliegue.

## Objetivo

El proyecto consiste en diseñar, desarrollar, e implementar una página sitio web sobre el tema seleccionado al principio del semestre, llevarlo hasta una aplicación web. El objetivo es aplicar los conceptos y técnicas aprendidas en el curso de Programación 3 con el fin de crear un sitio web dinámico que sea seguro, optimizado, funcional, etc.

> [!TIP]
> Para optimizar el desarrollo del proyecto y potenciar nuestra creatividad pueden hacer uso de ChatGPT/Copilot o la inteligencia que gusten. 
> 
>***Recuerden la inteligencia nos ayuda y potencia nuestras habilidades, no nos hace el trabajo ni mucho menos nos reemplaza.***

## Almacenamiento del Proyecto

A la fecha **Git** es el control de versiones más utilizado en todo el mundo, tal es la cosa que la mayoría de software que usamos esta alojado en GitHub o GitLab convirtiendolo en una herramienta fundamental para un ingeniero de sistemas. Por esta y muchas más otras razones utilizaremos GitHub para alojar y direccionar el proyecto PAR.

Como este proyecto sera almacenado en GitHub, la idea es escribir todos los reportes en el lenguaje markdown, en internet existen muchas referencias aca les dejo dos: 
- [www.markdowntutorial.com](https://www.markdowntutorial.com/)
- [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#section-links) 

## Requerimientos del Proyecto

Este proyecto es escrito en java y debe cumplir con los siguientes requisitos.

#### 1. Requisitos Funcionales

1. **Autenticación de Usuarios**
   - Inicio de sesión (definan un usuario y clave).
   - Registro de nuevos usuarios (opcional).

2. **Gestión de Contenidos**
   - Creación, edición y eliminación de artículos (carros, hoteles, jugadores, etc).
   - Sistema de categorías para artículos (opcional).

3. **Interfaz de Usuario**
   - Diseño responsivo y amigable.
   - Navegación intuitiva.
   - Formularios de entrada de datos validados.

4. **Buscador Interno (Opcional)**
   - Búsqueda de artículos por palabras clave.
   - Filtrado por categorías y fechas.

Si agregan alguna otra funcionalidad deben mencionarla y describirla en los reportes.

#### 2. Requisitos No Funcionales

1. **Rendimiento**
   - Respuesta rápida a solicitudes del usuario.
   - Optimización para cargas elevadas de tráfico (opcional).

2. **Seguridad**
   - Protección contra inyecciones SQL.
   - Control de acceso basado en roles.

3. **Escalabilidad**
   - Arquitectura modular que permita añadir nuevas funcionalidades.
   - Capacidad para manejar usuarios y datos.

#### 3. Tecnologías y Herramientas

1. **Backend**
   - Java
   - Servlets
   - JSP (JavaServer Pages)
   - JSTL (JavaServer Pages Standard Tag Library)
   - EJBs
   - JSTL SQL Tags

2. **Base de Datos**
   - MySQL

3. **Frontend**
   - HTML5
   - CSS3
   - JavaScript (opcional, para mejorar la interactividad)

4. **Servidor Web**
   - Apache Tomee o Wildfly

5. **IDE de Desarrollo**
   - Eclipse, VSC, o IntelliJ IDEA
   - Maven para gestión de dependencias

#### 4. Estructura del Proyecto

1. **Capas del Proyecto**
   - **Presentación**: JSP, HTML, CSS, JavaScript.
   - **Negocio**: Servlets y EJBs, lógica de negocio en Java.
   - **Datos**: Acceso a base de datos mediante JDBC y JSTL SQL.

2. **Organización del Código**
   - **Model**: Clases Java que representan la lógica de negocio y acceso a datos.
   - **View**: Páginas JSP y recursos estáticos (CSS, imágenes).
   - **Controller**: Servlets que manejan las solicitudes del usuario y actualizan las vistas.

#### 5. Documentación

Toda la documentación debe ir en los reportes que estarán dentro del repositorio y serán escritos usando markdown.

1. **Documentación del Código**
   - Comentarios  en el código fuente.
   - Descripción de clases y métodos.

2. **Manual de Usuario**
   - Guía de instalación y configuración.
   - Instrucciones de uso para usuarios finales.

3. **Manual de Desarrollador**
   - Estructura del proyecto.
   - Instrucciones para añadir nuevas funcionalidades.

Agreguen esta documentación en los reportes, pueden ser documentos simples pero concisos.

## Tareas del Proyecto

El proyecto constará de las siguientes tareas principales, recuerden que cada tarea debe tener un reporte.

### 1. Investigación y Análisis del Tema 

Plantear un problema relacionado al [objetivo](#objetivo) y describir cómo se va a solucionar utilizando las herramientas aprendidas, qué aporte dará cada herramienta/método utilizado. Agregar un objetivo principal y uno o varios complementarios, además mencionar cuales son las aplicaciones de sitio web y como este podría contribuir a la empresa/entidad/sector con la cuál podría estar relacionada.

Identificar que requisitos el sitio web y que características debería tener (escalabiliad, funcionalidad, disponibilidad, etc).

**En esta sección también deben colocar que va hacer cada uno, pueden repartirse el trabajo como quieran pero todos deben participar.**

> [!TIP]
> *Esta sección busca describir y dar un sentido al proyecto, la idea es que cualquiera pueda leerlo y entenderlo*

> [!IMPORTANT]
> **La primera entrega sera realizar la primera tarea y crear el proyecto en GitHub. De una vez creen la sección de referencias y la van llenando.**

### 2. Diseño del Sitio Web

**Historias de Usuario:**

Crear algunas historias de usuario con las funcionalidades deseadas, formato libre.

**Interfaz de Usuario:**

- **Diseño Responsivo:** Utilizar CSS y Bootstrap (opcional) para asegurar que la página sea accesible desde diferentes dispositivos.
- **Navegación Clara:** Asegurar que la navegación entre las diferentes secciones del sitio sea intuitiva y coherente.
- **Componentes Principales:** Crear componentes reutilizables como formularios de registro e inicio de sesión, tablas de usuarios o productos y paneles de control (botones, enlaces, etc).

**Arquitectura:**

- **Modelo-Vista-Controlador (MVC):** Implementar una arquitectura MVC para separar la lógica de negocio de la presentación.
- **Estructura del Proyecto:** Organizar el proyecto en directorios claros y bien definidos (e.g., `src`, `web`, `WEB-INF`). Sigue la estructura que propone por defecto Eclipse.

>[!NOTE]
>Lo más sencillo es agregar toda la carpeta del proyecto, `webapp`, dentro del repositorio así estará autocontenido.

### 3. Implementación del Sitio Web

**Configuración del Entorno:**

1. **Instalar el IDE:** Configurar Eclipse, VSC o IntelliJ IDEA.
2. **Configurar el Servidor de Aplicaciones:** Instalar y configurar Apache Tomee.
3. **Configurar la Base de Datos:** Instalar MySQL  y crear las tablas necesarias.

**Desarrollo de la Funcionalidad:**

1. **Página de Inicio:**
   - Crear la página principal con enlaces de navegación a las secciones (home, productos, servicios, inicio de usuario, etc).

2. **Registro de Usuario:**
   - Crear el formulario de registro, usuario, contraseña y correo.
   - Almacenar los datos en la base de datos.

3. **Inicio de Sesión:**
   - Crear el formulario de inicio de sesión.
   - Implementar el manejo de sesiones para usuarios autenticados (con usuarios con JSP, JSTL, o EJBs).

4. **Gestión de Productos:**
   - Implementar la visualización, edición y eliminación de productos, funcionalidades CRUD.

5. **Interacción con Base de Datos:**
   - Utilizar JSTL-sql para realizar consultas a la base de datos.
   - Recuperar y mostrar datos dinámicos en las páginas JSP.

6. **Lógica de Negocios:**
    - Utilizar EJBs para crear e implementar reglas de negocio.

### 4. Pruebas y Validación

**Pruebas de Integración:**
- Verificar la integración entre los diferentes módulos (e.g., servlets y JSP).

**Pruebas Funcionales:**
- Asegurar que todas las funcionalidades (registro, inicio de sesión, gestión de productos, etc) funcionan correctamente.

**Pruebas de Usabilidad:**
- Realizar pruebas con usuarios para asegurar que la interfaz es intuitiva y fácil de usar.

**Pruebas de Seguridad (Opcional):**
- Verificar la protección contra inyecciones SQL y otros tipos de ataques.

### 6. Despliegue

1. **Empaquetado del Proyecto:**
   - Utilizar Maven para empaquetar la aplicación en un archivo WAR (Web Application Archive) e instalar las dependencias.
   
2. **Configuración del Servidor de Producción:**
   - Instalar y configurar el servidor de aplicaciones en el entorno de producción.

3. **Despliegue de la Aplicación:**
   - Desplegar el archivo WAR en el servidor de producción.
   - Configurar la base de datos en el entorno de producción.

4. **Pruebas Post-despliegue:**
   - Realizar pruebas finales para asegurar que la aplicación funcione correctamente en el entorno de producción.

Debido a que nuestro servidor es el mismo computador del cliente el servidor de producción es el mismo computador, sin embargo en la industria estos servidores son diferentes e independientes.

### 7. Conclusiones 

En esta sección, se deben resumir los resultados obtenidos del proyecto, destacando los logros más importantes y los aprendizajes obtenidos durante el desarrollo. Evaluar si se cumplieron todos los objetivos establecidos y mencionar los desafíos enfrentados y cómo se resolvieron.

### 8. Futuros Aportes

Agrega una sección acerca de las concluciones obtenidas del proyecto y que aportes a futuro (herramientas, diseño, consultas, etc) podrían ser agregados. Dejo algunos ejemplos a continucación pero deben agregar más.

**Mejoras Potenciales:**
- Implementar funcionalidades adicionales como recuperación de contraseñas o perfiles de usuario.
- Mejorar la interfaz de usuario con características más avanzadas como AJAX para actualizaciones en tiempo real.

**Escalabilidad:**
- Optimizar la base de datos y el código para manejar un mayor número de usuarios y datos.
- Considerar la implementación de microservicios para separar componentes críticos del sistema.

**Nuevas Tecnologías:**
- Evaluar el uso de frameworks modernos como Spring para mejorar la eficiencia y mantener el código más limpio y estructurado.
- Explorar la integración con servicios externos como APIs de terceros para ampliar la funcionalidad del sitio web.

### 7. Referencias

Agrega todas las referencias utilizadas: documentos, códigos, de dónde se saco la base de datos, etc.

Ejemplo de algunas referencias que pueden agregar:

1. **JavaServer Pages (JSP):**
   - Sun Microsystems. "JavaServer Pages Technology." Available at: [Oracle JSP Documentation](https://www.oracle.com/java/technologies/javaserverpages.html)

2. **Servlets:**
   - Sun Microsystems. "Java Servlet Technology." Available at: [Oracle Servlet Documentation](https://www.oracle.com/java/technologies/servlet.html)

3. **JSTL (JSP Standard Tag Library):**
   - Sun Microsystems. "JSTL 1.2 Specification." Available at: [JSTL Specification](https://jcp.org/en/jsr/detail?id=52)

4. **JSTL-sql:**
   - Apache Software Foundation. "JSTL SQL Tag Library." Available at: [JSTL SQL Tag Library Documentation](https://jakarta.apache.org/taglibs/standard/tagreference.html#SQLTags)

5. **Apache Tomcat:**
   - The Apache Software Foundation. "Apache Tomcat." Available at: [Apache Tomcat Official Site](https://tomcat.apache.org/)

6. **MySQL:**
   - Oracle Corporation. "MySQL Database." Available at: [MySQL Official Site](https://www.mysql.com/)

7. **Bootstrap:**
   - Bootstrap. "Bootstrap: The world's most popular framework for building responsive, mobile-first sites." Available at: [Bootstrap Official Site](https://getbootstrap.com/)

8.  **Javadoc:**
    - Oracle Corporation. "Javadoc Tool." Available at: [Javadoc Documentation](https://www.oracle.com/technical-resources/articles/java/javadoc-tool.html)

Pueden citar las referencias como prefieran. Pueden incluir libros, tutoriales, guias, etc.

## Entregables

Todos los entregables deben estar en el repositorio. Estos entregables del proyecto incluirán:

1. **Código Fuente:**
   - Proyecto completo con la estructura de directorios organizada.
   - Archivos de código para JSP, Servlets, y clases Java.
   - Archivos de configuración (web.xml, pom.xml).

2. **Documentación del Proyecto:**
   - **Descripción del Proyecto:** Documento markdown detallando el objetivo, alcance y funcionalidades del proyecto.
   - **Manual de Instalación:** Instrucciones paso a paso sobre cómo instalar y configurar el entorno de desarrollo, servidor de aplicaciones y base de datos.
   - **Guía del Usuario:** Manual para los usuarios finales que explique cómo utilizar el sitio web, incluyendo capturas de pantalla y ejemplos de uso.

3. **Base de Datos:**
   - Códigos SQL para la creación de tablas y datos de prueba.
   - Documento detallando el esquema de la base de datos y las relaciones entre las tablas.

4. **Documentación del Código:**
   - Comentarios en el código fuente explicando las partes clave y la lógica detrás de las implementaciones.

5. **Pruebas:**
   - **Pruebas de Integración:** Casos de prueba y resultados de la integración entre los diferentes módulos.
   - **Pruebas Funcionales:** Documentación de las pruebas realizadas para asegurar el correcto funcionamiento de las funcionalidades principales (registro, inicio de sesión, gestión de usuarios).
   - **Pruebas de Seguridad (Opcional):** Resultados de las pruebas de seguridad para verificar la protección contra inyecciones SQL y otros ataques.

6. **Presentación:**
   - **Demo en Vivo:** Presentación en vivo del sitio web en funcionamiento, mostrando todas las funcionalidades implementadas.
   - **Video de Demostración (Opcional):** Grabación de una demo del sitio web en funcionamiento, destacando las principales características y funcionalidades.

7. **Repositorio del Proyecto:**
   - Repositorio en GitHub con el historial de commits y la estructura del proyecto.
   - Instrucciones para clonar el repositorio y ejecutar el proyecto localmente.

>[!NOTE]
>
>Para cada tarea debe existir un reporte. Todos los reportes relacionados con el proyecto, incluyendo la documentación del diseño del sitio web dinámico y los resultados de las pruebas, se crearán utilizando lenguaje Markdown y se almacenarán en un repositorio de control de versiones de GitHub. En este mismo repositorio **deben estar todos los archivos y documentos creados** para el proyecto. 
>
>***Recuerden que todos deben participar activamente en el proyecto***


## Evaluación

El proyecto será evaluado en base a la **calidad** y **completitud** de todas las actividades: calidad del diseño de la base de datos, la implementación correcta y eficiente del sistema, la completitud de la documentación y la presentación de los reportes en Markdown. Los porcentajes son: 

- **Primera Entrega (10%):**
  - Creación de repositorio
  - Descripción del problema
  - Planeación y repartición de tareas
- **Diseño (30%):**
  - Historia de usuarios
  - Interfaz del usuario
  - Arquitectura
- **Implementación (35%):**
  - Configuración del entorno
  - Bases de datos
  - Desarrollo de las funcionalidades
  - Conclusiones
- **Repositorio (15%):**
  - Reportes por cada paso
- **Presentación (10%):**
  - Entendimiento del problema
  - Exposición y desarrollo de idas
  - Respuesta a preguntas

Todos los integrantes del grupo deben participar activamente en el proyecto, si alguien realiza el trabajo que tenia encargado otro compañero no gana puntos adicionales y quien no hizo su trabajo pierde puntos.