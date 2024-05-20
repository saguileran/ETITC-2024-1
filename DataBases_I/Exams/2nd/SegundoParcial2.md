# Segundo Parcial

Este segundo parcial evalua los temas vistos en el segundo corte, esta vez no necesitamos usar nada más que lo que esta en la carpeta Exams/2nd, no pueden usar ChatGPT, copilot, google, wahtsapp, ni nada por el estilo.

¡Éxitos!

## Ingeniería Inversa (40 min)

A partir de esta descripción narrativa identifique los datos a almacenar y las entidades que se requieren.


>Una empresa de investigación hortícola está realizando un estudio sobre diferentes plantas cultivadas con un nuevo fertilizante. Usted es el responsable de diseñar la base de datos.
>
>Debe almacenar datos sobre diversas plantas, incluyendo el nombre científico, el nombre común y la familia. 
>
>Deben registrarse las condiciones ambientales de cada invernadero, incluida la temperatura y la luminosidad. 
>
>El sustrato del suelo (tipo y PH) y la dilución del nuevo fertilizante se registran para cada bandeja.
>
>Debe registrarse una conclusión para cada resultado de la bandeja.
>
>Las observaciones diarias del crecimiento de las plantas para cada grupo de plantas deben almacenarse con un comentario opcional. 

Identifique los datos y, a continuación, modele las entidades en un ERD.

Crea el diagrama y los códigos sql, pruebalos ya que estos deben de funcionar correctamente. Todas las tablas deben tener una llave primaria. Debe agregarse la relación que aparece en los textos.


## Normalziación (40 min)

Aplica las 3 primeras formas normales para la siguiente tabla, puedes hacerlo desde sql o desde excel pero debes mencionar como aplicas cada forma normal.

| Título              | Autores                           | ISBN         | Tema       | Páginas | Editorial   |
|---------------------|-----------------------------------|--------------|------------|---------|-------------|
| Matar a un ruiseñor | Harper Lee, Truman Capote    | 978-0061120084 | Ficción    | 336     | HarperCollins |
| El Señor de los Anillos: La Comunidad del Anillo | J.R.R. Tolkien, Christopher Tolkien | 978-0547928210 | Fantasía/Ficción | 432 | Mariner Books |
| Buenos Presagios    | Neil Gaiman, Terry Pratchett     | 978-0060853983 | Fantasía/Comedia | 432 | William Morrow |
| El Silmarillion    | J.R.R. Tolkien, Christopher Tolkien | 978-0544338012 | Fantasía | 384     | Mariner Books |

Debes entregar los códigos sql o la hoja de excel y un archivo txt o word donde expliques como estas aplicando las formas normales, también puedes escribir todo en el mismo excel o sql si así lo prefieres.


## Consultas (40 min)

La base de datos que usaremos es [northwind - db-samples](https://github.com/harryho/db-samples/tree/master/mysql). Utilicen el arhivo `northwind.sql` o `northwind_er_diagram.mwb`. Recuerden que pare realizar las consultas una ayuda bastante buena es la creación del diagrama. Las consultas que vamos a relizar deben resolver las siguientes preguntas:

```sql
# 1. Seleccione todos los nombres de los exportadores (shipper) con sus números telefónicos de la tabla correspondiente a Exportadores.


# 2. Seleccione el nombre de contacto, el identificador de cliente y el nombre de la ciudad de todos los clientes
en España (spain).


# 3. Los responsables de marketing y los representantes de ventas le han pedido que seleccione todas las columnas disponibles en la tabla de proveedores <u>que tengan una región</u>, no valores nulos.


# 4. Seleccione una lista de ids de clientes, cargas, y fechas requeridas de la tabla de pedidos (orders) con fechas requeridas (requiere date) entre el mes de agosto y septiembre de 2006 y con cargas inferiores (Freight) a 80 unidades. Usar comando `BETWEEN` o `IF` para las fechas.


# 5. Cuente el número de productos descontinuados en la tabla de productos. Usar comando `Count`.


# 6. Seleccione una lista de nombres de categorías y descripciones de todas las categorías que terminen por "ts" de la tabla Categorías. Usar el comando `like` y el operador `%`.


# 7. Seleccione todos los nombres de empresas, dirección, ciudad, país y código postal de la tabla de proveedores con la palabra «rue» en su dirección. La lista debe estar ordenada alfabéticamente descendientemente por el nombre de la ciudad. Use los mismos comandos del ejercicio 6.


# 8. Seleccione el id de producto y las cantidades totales pedidas para cada id de producto en la tabla Detalles del Pedido. Utilicen el comando `ORDER BY` Y `SUM`.


# 9. Seleccione el nombre del cliente, la dirección, y el fax de todos los clientes con pedidos que se enviaron utilizando Shipper ZHISN. Utilicen el comando `INNER JOIN`.


# 10. Cambia el nombre de la empresa de "Shipper GVSUA" a "GVSUA" y el número de teléfono a tu propio número incluyendo el (+57) en la tabla exportadores (shipper). Para mayor facilidad revisa cual es el id de ese exportador y haz la actualización usando ese id. Utiliza los comandos `UPDATE` and `SET`.


# 11. (Opcional) Seleccione el nombre y apellido del empleado y el nombre del cliente para los pedidos enviados por la empresa «GVSUA» a clientes residentes en Bruselas. Utilicen el comando `JOIN`


```

Pueden usar este código como base para el ejercicio. Deben entregar un archivo con las consultas realizadas, lo pueden presentar en archivos de tipo sql o notebooks de sql.

Recuerden usar el comando `? sql_command` o `\help mysql_command` para ver que opciones tiene ese comando.

## Referencias

La única refrencia que pueden usar es [MySQL by Examples for Beginners - ntu](https://www3.ntu.edu.sg/home/ehchua/programming/sql/MySQL_Beginner.html).
