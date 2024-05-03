# Ejercicio Práctico

Utilizando el contenido ya visto ahora resolvamos un problema real. Para ello vamos a trabajar con la base de datos sakila y la pueden descargar desde [Sakila Sample Database](https://dev.mysql.com/doc/sakila/en/). Adicionalmente pueden revisar [SQL Exercises - Wikibooks](https://en.wikibooks.org/wiki/SQL_Exercises).

## Consultas

Escribe un script SQL con consultas que respondan a las siguientes preguntas:

- ¿Qué actores se llaman «Scarlett»?
- ¿Qué actores tienen el apellido «Johansson»?
- ¿Cuántos apellidos distintos tienen los actores?
- ¿Qué apellidos no se repiten?
- ¿Qué apellidos aparecen más de una vez?
- ¿Qué actor ha participado en más películas?
- ¿Se puede alquilar «Dinosaurio de la Academia» en la tienda 1?
- Inserta un registro para representar a Mary Smith alquilando 'Academy Dinosaur' a Mike Hillyer en la Tienda 1 hoy .
- ¿Cuándo se estrena «Academy Dinosaur»?
- ¿Cuál es la duración media de todas las películas de la base de datos de sakila?
- ¿Cuál es la duración media de las películas por categoría?
- ¿Por qué esta consulta devuelve el conjunto vacío?

Finalmente, ejecuta la siguiente línea:

```sql
select * from pelicula natural join inventario;
```

Utilicen la siguiente plantilla, guarden el contenido en un archivo sql llamado `sakila-queries.sql`

```sql
# Which actors have the first name 'Scarlett'

# Which actors have the last name 'Johansson'

# How many distinct actors last names are there?

# Which last names are not repeated?

# Which last names appear more than once?

# Which actor has appeared in the most films?

# Is 'Academy Dinosaur' available for rent from Store 1?

# Step 1: which copies are at Store 1?

# Step 2: pick an inventory_id to rent:

# Insert a record to represent Mary Smith renting 'Academy Dinosaur' from Mike Hillyer at Store 1 today .

# When is 'Academy Dinosaur' due?

# Step 1: what is the rental duration?

# Step 2: which rental are we referring to -- the last one.

# Step 3: add the rental duration to the rental date.

# What is that average running time of all the films in the sakila DB?

# What is the average running time of films by category?

# Why does this query return the empty set?

select * from film natural join inventory;
```

En este tutorial van a encontrar muchas referencias ya que este tema es estandar y se puede encontrar mucho material que cumple el mismo objetivo. Aún así les recomiendo sobre todo el tutorial [MySQL by Examples for Beginners](https://www3.ntu.edu.sg/home/ehchua/programming/sql/MySQL_Beginner.html), es muy completo y va desarrollando un ejercicio mientras explica, así quienes tienen dudas puntuales pueden revisar allí cualquier cosa. 


## Diseño de BD

Esta tarea le ayudará a mejorar su capacidad para diseñar una base de datos. Se le pedirá que diseñe el esquema de una base de datos basado en la descripción de una empresa. Para su evaluación, deberá presentar tarde el código para crear la base de datos y un documento en word o pdf con la explicación de por qué decidió dicho esquema, un párrafo corto.  

### Problema 2: Diseño de una base de datos para un departamento de ventas


La empresa X le ha contratado para diseñar y codificar una base de datos.  La base de datos debe soportar la interacción continua entre proveedores, clientes, productos y ventas.  Le proporcionan la siguiente información  

- **Proveedores:** Cada proveedor tiene su id, dirección, teléfono y página web únicos. 
- **Cliente:** Al igual que los proveedores, cada cliente que compra productos a la empresa X tiene su id, nombre de usuario y contraseña únicos.  La empresa X, además, quiere guardar todos los números de teléfono que proporciona el cliente (no sólo el más reciente), todas las direcciones (no sólo la más reciente) y una descripción del mismo.  
- **Productos:** Un producto tiene su id_producto único, nombre, un precio actualizado diariamente, stock disponible y el proveedor que lo produce. Además cada producto se clasifica en categorías. Un producto pertenece  a una categoría única y es producido por un único proveedor, pero muchos proveedores sirven productos de la misma categoría. La empresa almacena cada año un informe del estado general de cada categoría.   Este informe es sólo texto. 
- **Transacción:** Por razones contables, cada transacción debe registrarse con un id, una fecha, el cliente, el descuento y el importe pagado, las unidades de cada producto y el precio en el día de la transacción.


## Referencias

### Guias

- [SQL Practice 1](https://mebrahimii.github.io/comp440-spring2020/lecture/week_6/SQL_Practice.pdf)
- [MySQL by Examples for Beginners](https://www3.ntu.edu.sg/home/ehchua/programming/sql/MySQL_Beginner.html)
- [Course : MySQL Fundamentals](https://learn.oracle.com/ols/course/mysql-fundamentals/88337/88842  )
- [My DataScience Notebook](https://oindrilasen.com/2021/04/sql-interview-practice/)
- [Coursera-Managing-Big-Data-with-MySQL](https://github.com/raffg/Coursera-Managing-Big-Data-with-MySQL/tree/master)

### Repositorios

#### Básicos

- [MySQL_practice_problems.md](https://gist.github.com/wgopar/a613fe6152c217f1c6faeca39c2b2c39)
- [database-exercises](https://github.com/Brandon-Martinez27/database-exercises/tree/master)
- [startnow-db100-mysql-exercises](https://github.com/Frank0095/startnow-db100-mysql-exercises/tree/master)
- [SQL_practice](https://github.com/kiwidamien/SQL_practice)
- [SQL-exercise](https://github.com/XD-DENG/SQL-exercise?tab=readme-ov-file)
- [SQL-Exercises](https://github.com/Thiagobc23/SQL-Exercises/tree/main)
- [More Practice Querying a MySQL database](https://beanumber.github.io/sds192/lab-sql_more.html)
- [test_db](https://github.com/datacharmer/test_db?tab=readme-ov-file)

#### Avanzados

- [mywind](https://github.com/dalers/mywind)
- [Managing-Big-Data-with-MySQL](https://github.com/raffg/Coursera-Managing-Big-Data-with-MySQL/tree/master)
- [sqlserver-kit](https://github.com/ktaranov/sqlserver-kit/tree/master)