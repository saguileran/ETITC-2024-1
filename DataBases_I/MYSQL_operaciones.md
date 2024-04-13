# Tutorial: Álgebra Relacional y MySQL con la Base de Datos de Ejemplo *World*

Este tutorial tiene como objetivo aprender los conceptos relacionales básicos de MySQL y aplicarlos a la base de datos *world*. Este tutorial se propone en dos partes: ver un clase de Youtube y generar unos códigos.

## Video

#### Álgebra Relacional - operadores básicos

[![alt text](img/image-2.png)](https://www.youtube.com/watch?v=hsNZnJjYXGM)

## Introducción

El álgebra relacional proporciona un marco teórico para manipular y consultar bases de datos relacionales. En este tutorial, exploraremos los conceptos del álgebra relacional en detalle y demostraremos sus implementaciones prácticas utilizando MySQL con la base de datos de ejemplo "World".

## 1. Operaciones Básicas del Álgebra Relacional

#### a) Selección (σ):
La operación de selección recupera tuplas de una relación que satisfacen una condición dada. 

Representación matemática: $σ_{A_1,A_2,...}(R)$

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Seleccionar todas las ciudades de los EE.UU.
SELECT * FROM city WHERE CountryCode = 'USA';
```

#### b) Proyección (π)
La operación de proyección recupera ciertos atributos (columnas) de una relación.

Representación matemática: $\Pi_{A_1,A_2,...} (R) $

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Seleccionar solo el nombre y la población de los países
SELECT Name, Population FROM country;
```

#### c) Unión (∪)
La operación de unión combina tuplas de dos relaciones y elimina duplicados.

Representación Matemática: $R \cup S$


Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Combinar ciudades de Alemania y Francia
SELECT * FROM city WHERE CountryCode = 'DEU'
UNION
SELECT * FROM city WHERE CountryCode = 'FRA';
```

#### d) Intersección (∩)
La operación de intersección recupera tuplas que son comunes a ambas relaciones.

Representación Matemática: $R\cap S$

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Encontrar ciudades que están tanto en Alemania como en Francia
SELECT * FROM city WHERE CountryCode = 'DEU'
INTERSECT
SELECT * FROM city WHERE CountryCode = 'FRA';
```

#### e) Diferencia (−)
La operación de diferencia recupera tuplas de la primera relación que no están presentes en la segunda relación.

Representación Matemática: $R - S$

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Encontrar ciudades en Alemania pero no en Francia
SELECT * FROM city WHERE CountryCode = 'DEU'
EXCEPT
SELECT * FROM city WHERE CountryCode = 'FRA';
```

#### f) Composición

**Ejemplo de Composición de Operaciones Relacionales: Proyección y Selección**

En este ejemplo, vamos a combinar las operaciones de proyección y selección en una consulta SQL utilizando la base de datos "world". 

Representación Matemática: $\Pi_{A_1,A_2,...}(\sigma_{A_1,A_2,...}(R))$

Supongamos que queremos obtener información específica sobre los países europeos con una población superior a 50 millones.

1. **Proyección:** Seleccionaremos solo las columnas relevantes de la tabla "country", que son el nombre del país (`Name`) y su población (`Population`).

2. **Selección:** Aplicaremos una condición para seleccionar solo los países europeos con una población superior a 50 millones.

Ejemplo de Código MySQL con la Base de Datos "World":

```sql
SELECT Name, Population
FROM world.country
WHERE Continent = 'Europe' AND Population > 50000000;
```

Esta consulta devuelve el nombre y la población de los países europeos que tienen una población superior a 50 millones.

## 2. Operadores Semi-Union y Anti-Union en MySQL

En este ejemplo, vamos a utilizar los operadores semi-union y anti-union para realizar consultas en la base de datos "world" de MySQL. Supongamos que queremos encontrar todos los países que tienen ciudades con una población superior a 5 millones, pero que no son países europeos.

#### 1. Operador Semi-Union
Utilizaremos el operador semi-union para obtener los países que tienen ciudades con una población superior a 5 millones. Este operador devuelve los resultados de la primera consulta y luego agrega aquellos que también cumplen la condición de la segunda consulta.

**Representación Matemática:**
Sea \( R_1 \) el conjunto de países con ciudades con una población superior a 5 millones y \( R_2 \) el conjunto de países que no son europeos. Entonces, el operador semi-union \( R_1 \cup R_2 \) devuelve todos los países que cumplen alguna de las condiciones.

Ejemplo de Código MySQL con la Base de Datos "World":

```sql
-- Operador Semi-Union: Obtener países con ciudades con población superior a 5 millones
SELECT country.Name
FROM world.country
JOIN world.city ON country.Code = city.CountryCode
WHERE city.Population > 5000000
```

#### 2. Operador Anti-Union
Utilizaremos el operador anti-union para excluir los países europeos de nuestra lista. Este operador devuelve los resultados de la primera consulta y luego elimina aquellos que también cumplen la condición de la segunda consulta.

**Representación Matemática:**
Sea \( R_1 \) el conjunto de países con ciudades con una población superior a 5 millones y \( R_2 \) el conjunto de países europeos. Entonces, el operador anti-union \( R_1 - R_2 \) devuelve todos los países que cumplen la primera condición pero no la segunda.

Ejemplo de Código MySQL con la Base de Datos "World":

```sql
-- Operador Anti-Union: Excluir países europeos
SELECT country.Name
FROM world.country
WHERE Continent <> 'Europe';
```

Esta consulta devuelve una lista de países que tienen ciudades con una población superior a 5 millones, excluyendo los países europeos. 

Ejemplo de la unión de los dos operatdores:

```sql
-- Operador Semi-Union: Obtener países con ciudades con población superior a 5 millones
SELECT country.Name
FROM world.country
JOIN world.city ON country.Code = city.CountryCode
WHERE city.Population > 5000000

UNION

-- Operador Anti-Union: Excluir países europeos
SELECT country.Name
FROM world.country
WHERE Continent <> 'Europe';
```

## 3. Uniones en el Álgebra Relacional

####  a) Unión Interna (⨝):
La operación de unión interna recupera tuplas que tienen valores coincidentes en ambas relaciones.

Representación Matemática: R ⨝ S

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Unir las tablas country y city para obtener el nombre del país y la ciudad correspondiente
SELECT country.Name AS NombrePais, city.Name AS NombreCiudad
FROM country
INNER JOIN city ON country.Code = city.CountryCode;
```

#### b) Unión Externa Izquierda (⟕)
La operación de unión externa izquierda recupera todas las tuplas de la relación izquierda y las tuplas coincidentes de la relación derecha.

Representación Matemática: R ⟕ S

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Obtener todos los países y sus ciudades correspondientes, incluso si algunos países no tienen ciudades
SELECT country.Name AS NombrePais, city.Name AS NombreCiudad
FROM country
LEFT OUTER JOIN city ON country.Code = city.CountryCode;
```

#### c) Unión Externa Derecha (⟖)
La operación de unión externa derecha recupera todas las tuplas de la relación derecha y las tuplas coincidentes de la relación izquierda.

Representación Matemática: R ⟖ S

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Obtener todas las ciudades y sus países correspondientes, incluso si algunas ciudades no tienen países
SELECT country.Name AS NombrePais, city.Name AS NombreCiudad
FROM country
RIGHT OUTER JOIN city ON country.Code = city.CountryCode;
```

#### d) Unión Externa Completa (⟗)
La operación de unión externa completa recupera todas las tuplas de ambas relaciones, incluidas las tuplas coincidentes cuando están disponibles.

Representación Matemática:R ⟗ S

Ejemplo de Código MySQL con la Base de Datos "World":
```sql
-- Obtener

 todos los países y sus ciudades correspondientes, incluidas las ciudades y países no coincidentes
SELECT country.Name AS NombrePais, city.Name AS NombreCiudad
FROM country
FULL OUTER JOIN city ON country.Code = city.CountryCode;
```

#### e) Producto Cartesiano (Cross Join)

El operador Cross Join, también conocido como Producto Cartesiano, combina cada fila de una tabla con cada fila de otra tabla, generando un conjunto de resultados que es el producto cartesiano de ambas tablas.


**Ejemplo de Uso del Operador Cross Join:**

```sql
SELECT country.Name AS nombre_pais, city.Name AS nombre_ciudad
FROM country
CROSS JOIN city;
```

En este ejemplo, combinamos cada fila de la tabla `country` con cada fila de la tabla `city`, obteniendo todas las posibles combinaciones de países y ciudades.

**Aplicaciones del Operador Cross Join:**

El operador Cross Join es útil para generar combinaciones de datos de dos tablas sin condiciones de unión específicas, útil para generación de datos de prueba y análisis comparativos.

**Consideraciones:**

El uso indiscriminado del operador Cross Join puede generar un gran número de filas en el conjunto de resultados, lo que puede afectar al rendimiento de la consulta. Se recomienda usar con precaución y solo cuando sea necesario.

## Ejercicio: Aplicación de Conceptos de Álgebra Relacional en MySQL

Considerando los conceptos de álgebra relacional y su implementación en MySQL con la base de datos "world", se propone el siguiente ejemplo de ejercicio:

#### Base de Datos "world"

La base de datos "world" contiene las siguientes tablas:

1. `country`: Contiene información sobre los países, como el código del país, el nombre, la población, etc.
2. `city`: Contiene información sobre las ciudades, como el ID de la ciudad, el nombre, la población, el país al que pertenece, etc.
3. `countrylanguage`: Contiene información sobre los idiomas hablados en cada país, como el código del país, el idioma, si es el idioma oficial, etc.

#### Instrucciones del Ejercicio

1. Escriba una consulta SQL que devuelva el nombre y la población de todos los países en la base de datos "world".

2. Escriba una consulta SQL que devuelva el nombre de todas las ciudades junto con su población de la tabla `city`.

3. Escriba una consulta SQL que devuelva el nombre del país y el número total de ciudades en cada país en la base de datos "world".

4. Escriba una consulta SQL que devuelva el nombre del país y la población total de cada país en la base de datos "world".

5. Escriba una consulta SQL que devuelva el nombre del país y el nombre de los idiomas que se hablan en cada país, junto con el porcentaje de hablantes de ese idioma en relación con la población total del país.

Solución:

```sql
-- 1. Devolver el nombre y la población de todos los países
SELECT Name, Population FROM country;

-- 2. Devolver el nombre de todas las ciudades junto con su población
SELECT Name, Population FROM city;

-- 3. Devolver el nombre del país y el número total de ciudades en cada país
SELECT country.Name, COUNT(city.ID) AS total_ciudades
FROM country
JOIN city ON country.Code = city.CountryCode
GROUP BY country.Name;

-- 4. Devolver el nombre del país y la población total de cada país
SELECT country.Name, SUM(city.Population) AS poblacion_total
FROM country
JOIN city ON country.Code = city.CountryCode
GROUP BY country.Name;

-- 5. Devolver el nombre del país, el nombre de los idiomas y el porcentaje de hablantes de ese idioma en relación con la población total del país
SELECT country.Name AS nombre_pais, countrylanguage.Language AS idioma, 
    ROUND(SUM((countrylanguage.Percentage / 100) * country.Population), 2) AS poblacion_idioma
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
GROUP BY country.Name, countrylanguage.Language;
```

Este ejercicio práctico te permitirá aplicar los conceptos del álgebra relacional en la práctica utilizando la base de datos "world". Recuerda ejecutar las consultas en un entorno MySQL para obtener los resultados correctos.

**Este es un ejemplo de lo que deben hacer para el ejercicio PERO deben cambiar la base de datos por la que ustedes ya tienen y hacer las consultas a los campos que quieran pero que tengan el mismo objetivo en cada punto, es decir, adapten cada punto no solo a su base de datos sino también a sus tablas y a los atributos de estas. No es necesario que reescriban el ejercicio, basta con que agreguen en el código sql que hace cada punto, similar a la solución del ejercicio que les coloque.**


## Referencias

#### Guias
- [MySQL - 15.2.13.2 JOIN Clause](https://dev.mysql.com/doc/refman/8.0/en/join.html)
- [¿Cómo funciona INNER JOIN, LEFT JOIN, RIGHT JOIN y FULL JOIN?](https://programacionymas.com/blog/como-funciona-inner-left-right-full-join)
- [MySQL Tutorial](https://www.javatpoint.com/mysql-tutorial)
- [MySQL CROSS JOIN](https://www.javatpoint.com/mysql-cross-join)


#### Libros
- *Database system concepts*, sixth edition. Abraham Silberschatz, Henry F. Korth, S. Sudarshan. McGraw-Hill Education  7th edition 2019. Capítulo 2.6:  The Relational Algebra. Página 77.
- *Database Systems*. Ramez Elmasri,  Shamkant B. Navathe. Pearson 7th edition. Capítulo 18.1: Translating SQL Queries into Relational Algebra and Other Operators. Página 689.
