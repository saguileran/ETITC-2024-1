# Instructivo para la Normalización de una Base de Datos de Estadísticas de Jugadores de FIFA 24
---

Este instructivo detalla cómo aplicar las reglas de normalización a una base de datos grande sobre las estadísticas de los jugadores más populares de fútbol, utilizando datos extraídos del juego FIFA 24. La normalización es un proceso sistemático para estructurar una base de datos de manera que se minimicen las redundancias y se asegure la integridad de los datos. Se aplicarán las tres primeras formas normales (1FN, 2FN, y 3FN).

## Paso 0: Reducción del Conjunto de Datos

### Objetivo

Eliminar columnas que no aporten al conjunto de datos y dejar solo 10 filas para desarrollar el ejercicio de forma más sencilla.

### Procedimiento:

1. **Identifica que atributos no son interesantes**
2. **Elimina las filas después de la fila 10**

## Paso 1: Primera Forma Normal (1FN)

### Objetivo

Eliminar duplicados y asegurar que cada columna contenga solo valores atómicos (indivisibles).

### Procedimiento

1. **Identificar entidades principales**: Determina las principales entidades de la base de datos, por ejemplo, Jugadores, Equipos, Partidos, Estadísticas, etc.
2. **Crear tablas para cada entidad**: Define una tabla separada para cada entidad identificada.
3. **Asegurar unicidad de las filas**: Cada tabla debe tener una clave primaria que identifique de forma única cada fila.
4. **Valores atómicos**: Asegúrate de que cada celda contenga un solo valor y no listas o conjuntos de valores.

### Ejemplo Aplicado

- **Jugadores**: Cada jugador tiene un identificador único y características atómicas (nombre, fecha de nacimiento, peso, altura etc.).
- **Equipos**: Cada equipo tiene un identificador único y características atómicas (nombre del equipo, país, etc.).
- **Estadísticas de Jugadores**: Cada estadística tiene un identificador único y características atómicas (pases completos, tiros a puerta, etc.).

## Paso 2: Segunda Forma Normal (2FN)

### Objetivo

Eliminar dependencias parciales, es decir, todos los atributos no clave deben depender completamente de la clave primaria.

### Procedimiento

1. **Verificar 1FN**: Asegúrate de que la base de datos ya esté en 1FN.
2. **Identificar claves compuestas**: Si alguna tabla tiene una clave primaria compuesta, asegúrate de que todos los atributos no clave dependan de toda la clave y no solo de una parte.
3. **Descomponer tablas si es necesario**: Si encuentras dependencias parciales, descompón la tabla en dos o más tablas para eliminar estas dependencias.

### Ejemplo Aplicado

- **Estadísticas de Partidos**: Si tienes una tabla con `Jugador_ID`, `Partido_ID`, y `Goles`, y solo `Jugador_ID` y `Partido_ID` juntos forman la clave primaria, asegúrate de que `Goles` dependa de ambos y no solo de uno de ellos.
- **Equipos de Jugadores**: Si una tabla de participación tiene `Partido_ID`, `Jugador_ID`, y `Equipo`, debes separar los equipos a una tabla distinta donde `Jugador_ID` sea la clave primaria.

## Paso 3: Tercera Forma Normal (3FN)

### Objetivo

Eliminar dependencias transitivas, es decir, los atributos no clave deben depender únicamente de la clave primaria y no de otros atributos no clave.

### Procedimiento

1. **Verificar 2FN**: Asegúrate de que la base de datos ya esté en 2FN.
2. **Identificar dependencias transitivas**: Busca atributos no clave que dependan de otros atributos no clave.
3. **Descomponer tablas si es necesario**: Si encuentras dependencias transitivas, descompón la tabla en dos o más tablas para eliminar estas dependencias.

### Ejemplo Aplicado

- **Información del Jugador**: Si en una tabla de jugadores tienes `Jugador_ID`, `Nombre`, `Fecha_Nacimiento`, y `Equipo`, donde `Equipo` no es un atributo de la clave primaria, asegúrate de mover `Equipo` a una tabla separada relacionada con `Jugador_ID`.
- **Detalles del Equipo**: Si una tabla de equipo tiene `Equipo_ID`, `Nombre_Equipo`, y `Entrenador`, y `Entrenador` depende de `Nombre_Equipo`, debes separar la información del entrenador a una tabla distinta.

## Consideraciones Finales

- **Integridad Referencial**: Asegúrate de definir las relaciones entre tablas usando claves foráneas para mantener la integridad referencial.
- **Optimización**: La normalización mejora la integridad y consistencia de los datos, pero puede impactar el rendimiento. Considera denormalizar ciertas partes si es necesario para mejorar el rendimiento, siempre y cuando no comprometa la integridad de los datos.
- **Documentación**: Mantén una documentación clara de todas las tablas y sus relaciones para facilitar el mantenimiento y la comprensión de la base de datos.

Siguiendo estos pasos, podrás normalizar tu base de datos de estadísticas de jugadores de FIFA 24, asegurando que sea eficiente, consistente y libre de redundancias innecesarias.

## Referencias

### Base de Datos

- [EA Sports FC 24 complete player dataset - Kaggle](https://www.kaggle.com/datasets/stefanoleone992/ea-sports-fc-24-complete-player-dataset?select=male_players.csv)

### Guias 

-  [Chapter 12 Normalization - Database Design – 2nd Edition](https://opentextbc.ca/dbdesign01/chapter/chapter-12-normalization/)
-  [Database Normalization – Normal Forms 1nf 2nf 3nf Table Examples - freeCodeCamp](https://www.freecodecamp.org/news/database-normalization-1nf-2nf-3nf-table-examples/)
- [Database Normalization Explained - Medium](https://towardsdatascience.com/database-normalization-explained-53e60a494495)+
- [Data & Database Normalization Explained: How To Normalize Data ](https://www.splunk.com/en_us/blog/learn/data-normalization.html)
- [Normalization in DBMS - Study Tonight](https://www.studytonight.com/dbms/database-normalization.php)