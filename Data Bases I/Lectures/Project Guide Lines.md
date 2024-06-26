# Proyecto Articulador (PAR) - Bases de Datos I

---

## Tabla de Contenido

- [Proyecto Articulador (PAR) - Bases de Datos I](#proyecto-articulador-par---bases-de-datos-i)
  - [Tabla de Contenido](#tabla-de-contenido)
  - [Objetivo](#objetivo)
  - [Tema Seleccionado](#tema-seleccionado)
  - [Almacenamiento del Proyecto](#almacenamiento-del-proyecto)
  - [Tareas del Proyecto](#tareas-del-proyecto)
      - [1. Investigación y Análisis del Tema](#1-investigación-y-análisis-del-tema)
      - [2. Diseño de la Base de Datos](#2-diseño-de-la-base-de-datos)
      - [3. Implementación de la Base de Datos](#3-implementación-de-la-base-de-datos)
      - [4. Pruebas y Validación](#4-pruebas-y-validación)
      - [6. Conclusiones y Futuros Aportes](#6-conclusiones-y-futuros-aportes)
      - [7. Referencias](#7-referencias)
  - [Entregables](#entregables)
  - [Evaluación](#evaluación)



## Objetivo

El proyecto consiste en diseñar, desarrollar, e implementar una base de datos para el tema seleccionado por el grupo. El objetivo es aplicar los conceptos y técnicas aprendidas en el curso de Bases de Datos I con el fin de crear una base de datos funcional, eficiente, y óptima. 

> [!TIP]
>Para optimizar el desarrollo del proyecto y potenciar nuestra creatividad pueden hacer uso de ChatGPT/Copilot o la inteligencia que gusten. 
>
>***Recuerden la inteligencia nos ayuda y potencia nuestras habilidades, no nos hace el trabajo ni mucho menos nos reemplaza.***

## Tema Seleccionado

Deben utilizar uno de los conjuntos de datos con los cuales han venido trabajando, discutan y seleccionen un conjunto de datos del grupo que tenga más de 100 tuplas y 20 atributos, recuerden que si lo ven necesario pueden agregas diferentes atributos para cumplir con el requisito. Quienes quieran cambiar de tema no olviden que la idea ha sido hacer todo lo que hemos visto y practicado en clase pero aplicado a nuestro conjunto de datos seleccionado desde el inicio, para ir adelantando trabajo, entonces tendrán que hacer los mismos procesos que ya hemos adelantado. 

Este proyecto sera almacenado en GitHub y la idea es escribir todos los reportes el lenguaje markdown, en internet existen muchas referencias aca les dejo dos: 
- [www.markdowntutorial.com](https://www.markdowntutorial.com/)
- [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#section-links) 

Recuerden que este conjunto de datos fue seleccionado al inicio y no debe ser un conjunto de datos ya creado y que ya este en su forma relacional. **Quienes presenten algo que ya estaba hecho serán penalizados.** Para verificar que no pasa esto, deben agregar al repositorio la base de datos original e ir mostrando como en cada paso se logra pasar de un archivo csv, un simple conjunto de datos (dataset), a una base de datos relacional. 

## Almacenamiento del Proyecto

A la fecha **Git** es el control de versiones más utilizado en todo el mundo, tal es la cosa que la mayoría de software que usamos esta alojado en GitHub o GitLab convirtiendolo en una herramienta fundamental para un ingeniero de sistemas. Por esta y muchas más otras razones utilizaremos GitHub para alojar y direccionar el proyecto PAR.

## Tareas del Proyecto

El proyecto constará de las siguientes tareas principales:

#### 1. Investigación y Análisis del Tema

Plantear un problema relacionado al [objetivo](#objetivo) y describir cómo se va a solucionar utilizando las herramientas aprendidas, qué aporte dará cada herramienta/método utilizado. Agrega un objetivo principal y uno o varios complementarios, además mencionar cuales son las aplicaciones de su base de datos y como esta podría contribuir a la empresa-entidad de donde fue obtenida.

Identificar que requisitos tiene la base de datos y que características debería tener (escalabiliad, flexibilidad, granularidad, etc).

**En esta sección también deben agregar la distribuición del trabajo, que va hacer cada uno. Pueden repartirse el trabajo como quieran pero todos deben comentar y participar en Github.**

> [!TIP]
> *Esta sección busca describir y dar un sentido al proyecto, la idea es que cualquiera pueda leerlo y entenderlo.*

> [!IMPORTANT]
> **La primera entrega sera realizar la primera tarea y crear el proyecto en GitHub. De una vez creen la sección de referencias y la van llenando.**


#### 2. Diseño de la Base de Datos

Basado en los requerimientos identificados, diseña el esquema de la base de datos utilizando técnicas como el Modelo Entidad-Relación (ER) o EER y la normalización, aplica por lo menos las tres primeras formas normales. Menciona como se están realizando estos procesos y agrega al repositorio los documentos y archivos generados en esta tarea, similar a como se hizo con los talleres. No olvides de describir como se están relacionando los datos y que entidades y objetos fueron creados.


#### 3. Implementación de la Base de Datos

Una vez completado el diseño, procede a implementar la base de datos utilizando un Sistema de Gestión de Bases de Datos (SGBD) apropiado, en nuestro caso MySQL. Describe como se realizó este proceso y agrega los códigos y modelos generados por MySQL al repositorio. También debes agregar la base de datos cruda, en formato csv, u los códigos generador por Workbrench al importar los datos.

#### 4. Pruebas y Validación

Realiza pruebas para verificar la integridad y la eficiencia de la base de datos, para ello crea preguntas sobre la base de datos que puedas resolver utilizando consultas de MySQL, debes crear mínimo 15 preguntas y anexar su respuesta (imágenes o texto) en el archivo markdown que serán creadas como reporte para este paso. Las preguntas deben ser 5 fáciles, 6 de nivel medio, y 4 de nivel difícil. Además, corrige y resuleve cualquier problema que se presente. 

#### 6. Conclusiones y Futuros Aportes

Agrega una sección acerca de las conclusiones obtenidas del proyecto y que aportes a futuro (herramientas, diseño, consultas, etc) podrían ser agregados. Recuerda que estas conclusiones van relacionadas con los objetivos creados.

#### 7. Referencias

Agrega todas las referencias utilizadas: documentos, códigos, de dónde se saco la base de datos, herramientas que se utilizaron, etc.


>[!NOTE]
>
>**Para cada tarea debe existir un reporte**. Todos los reportes relacionados con el proyecto, incluyendo la documentación del diseño de la base de datos y los resultados de las pruebas, se crearán utilizando lenguaje Markdown y se almacenarán en un repositorio de control de versiones de GitHub. En este mismo repositorio **deben estar todos los arhivos y documentos** creados para el proyecto. 

## Entregables

Todos los entregables deben estar en el repositorio. Estos entregables del proyecto incluirán:

- Base de datos cruda (archivo csv). 
- Documentación del diseño de la base de datos en formato Markdown y el excel creado en el proceso de normalización.
- Códigos de creación de la base de datos, los que son generados al realizar ingeniería directa o los que creen.
- Códigos de población de datos, en nuestro caso la importación de los archivos.
- Reportes de pruebas y validación en formato Markdown, como en el archivo [Guía para Crear y Responder Consultas sobre una Base de Datos de una Licorería Grande](https://github.com/saguileran/ETITC-2024-1/blob/main/DataBases_I/ReviewQueries.md). Los códigos deben visualizarse bien, con los colores adecuados.

## Evaluación

El proyecto será evaluado en base a la **calidad** y **completitud** de todas las actividades: calidad del diseño de la base de datos, la implementación correcta y eficiente del sistema, la completitud de la documentación y la presentación de los reportes en Markdown. Los porcentajes son: 

- **Primera Entrega (10%):**
  - Creación de repositorio
  - Descripción del problema
  - Planeación y repartición de tareas
- **Diseño (40%):**
  - Relación de tablas
  - Normalización
  - Historias de Usuario
- **Implementación (25%):**
  - Completitud de los código solicitados (creación de tablas e importación de datos)
  - Códigos de pruebas y validación
  - Conclusiones
- **Repositorio (15%):**
  - Reportes por cada paso
- **Presentación (10%):**
  - Entendimiento del problema
  - Exposición y desarrollo de idas
  - Respuesta a preguntas

Todos los integrantes del grupo deben participar activamente en el proyecto, si alguien realiza el trabajo que tenia encargado otro compañero no gana puntos adicionales y quien no hizo su trabajo pierde puntos.