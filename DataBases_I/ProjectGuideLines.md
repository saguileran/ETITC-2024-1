# Proyecto Articulador (PAR) de Bases de Datos I
---

## Objetivo

El proyecto consiste en diseñar, desarrollar, e implementar una base de datos para el tema seleccionado por el grupo. El objetivo es aplicar los conceptos y técnicas aprendidas en el curso de Bases de Datos I con el fin de crear una base de datos funcional, eficiente, y óptima. 

> [!TIP]
>Para optimizar el desarrollo del proyecto y potenciar nuestra creatividad pueden hacer uso de ChatGPT/Copilot o la inteligencia que gusten. 
>
>*Recuerden la inteligencia nos ayuda, no nos hace el trabajo*.

## Tema Seleccionado

Deben utilizar uno de los conjuntos de datos con los cuales han venido trabajando, discutan y seleccionen un conjunto de datos del grupo que tenga más de 100 tuplas y 20 atributos, recuerden que si lo ven necesario pueden agregas diferentes atributos para cumplir con el requisito. Quienes quieran cambiar de tema no olviden que la idea ha sido hacer todo lo que hemos visto y prácticado en clase pero aplicado a nuestro conjunto de datos seleccionado desde el inicio, para ir adelantando trabajo, entonces trendran que hacer los mismos procesos que ya hemos adelantado. 

Este proyecto sera almacenado en GitHub y la idea es escribir todos los reportes el lenguaje markdown, en internet existen muchas referencias aca les dejo dos: 
- [www.markdowntutorial.com](https://www.markdowntutorial.com/)
- [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#section-links) 

Recuerden que este conjunto de datos fue seleccionado al inicio y no debe ser un conjunto de datos ya creado y que ya este en su forma relacional. **Quienes presenten algo que ya estaba hecho serán penalizados.** Para verificar que no pasa esto, deben agregar al repositorio la base de datos original e ir mostrando como en cada paso se logra pasar de un archivo csv, un simple conjunto de datos (dataset), a una base de datos relacional. 


## Almacenamiento del Proyecto

A la fecha **Git** es el control de versiones más utilizado en todo el mundo, tal es la cosa que la mayoría de software que usamos esta alojado en GitHub o GitLab convirtiendolo en una herramienta fundamental para un ingeniero de sistemas. Por esta y muchas más otras razones utilizaremos GitHub para alojar y direccionar el proyecto PAR.

## Tareas del Proyecto

El proyecto constará de las siguientes tareas principales:

#### 1. Investigación y Análisis del Tema (Abstract)

Plantear un problema relacionado al [objetivo](#objetivo) y describir cómo se va a solucionar utilizando las herramientas aprendidas, qué aporte dara cada herramienta/método utilizado. Agrega un objetivo principal y uno o varios complementarios, además mencionar cuales son las aplicaciones de su base de datos y como esta podría contribuir a la empresa-entidad de donde fue obtenida.

Identificar que requisitos tiene la base de datos y que caractéristicas debería tener (escalabiliad, flexibilidad, granularidad, etc).

**En esta sección también deben agregar la distribuición del trabajo, que va hacer cada uno. Pueden repartirse el trabajo como quieran pero todos deben comentar y participar en Github.**

> [!TIP]
> *Esta sección busca describir y dar un sentido al proyecto, la idea es que cualquiera pueda leerlo y entenderlo.*

> [!IMPORTANT]
> **La primera entrega sera realizar la primera tarea y crear el proyecto en GitHub. De una vez creen la sección de referencias y la van llenando.**


#### 2. Diseño de la Base de Datos

Basado en los requerimientos identificados, diseña el esquema de la base de datos utilizando técnicas como el Modelo Entidad-Relación (ER) o EER y la normalización, aplica las formas normales. Menciona como se están realizando estos procesos y agrega al repositorio los documentos y achivos generados en esta tarea, similar a como se hizo con los talleres. No olvides de describir como se están relacionando los datos y que entidades y objetos fueron creados.

No te olvides de agregar el diagrama creado.

#### 3. Implementación de la Base de Datos

Una vez completado el diseño, procede a implementar la base de datos utilizando un Sistema de Gestión de Bases de Datos (SGBD) apropiado, en nuestro caso MySQL. Describe como se realizó este proceso y agrega los códigos y models generados al repositorio.

#### 4. Pruebas y Validación

Realiza pruebas para verificar la integridad y la eficiencia de la base de datos, para ello crea preguntas sobre la base de datos que puedas resolver utilizando consultas de MySQL, debes crear mínimo 15 preguntas y anexar su respuesta (imagenes o texto). Además, corrige y resuleve cualquier problema que se presente. 

Agrega los códigos y respuestas generadas.

#### 6. Conclusiones y Futuros Aportes

Agrega una sección acerca de las concluciones obtenidas del proyecto y que aportes a futuro (herramientas, diseño, consultas, etc) podrían ser agregados.

#### 7. Referencias

Agrega todas las referencias utilizadas: documentos, códigos, de dónde se saco la base de datos, etc.


### Nota:

Para cada tarea debe existir un reporte. Todos los reportes relacionados con el proyecto, incluyendo la documentación del diseño de la base de datos y los resultados de las pruebas, se crearán utilizando lenguaje Markdown y se almacenarán en un repositorio de control de versiones de GitHub. En este mismo repositorio deben estar todos los arhivos y documentos creados para el proyecto. 

## Entregables

Todos los entregables deben estar en el repositorio. Estos entregables del proyecto incluirán:

- Documentación del diseño de la base de datos en formato Markdown.
- Script de creación de la base de datos.
- Script de población de datos, en nuestro caso la importación de los archivos.
- Reportes de pruebas y validación en formato Markdown.
- Repositorio de GitHub con todos los archivos y documentos del proyecto.

## Evaluación

El proyecto será evaluado en base a la calidad del diseño de la base de datos, la implementación correcta y eficiente del sistema, la completitud de la documentación y la presentación de los reportes en Markdown. Los porcentajes son 

- Diseño: 50 %
  - Calidad de la relación creada
  - Calidad de la normalización
- Implementación: 30 %
  - Completitud de los código solicitados
  - 
- Repositorio: 20%
  - Calidad de reportes por cada paso