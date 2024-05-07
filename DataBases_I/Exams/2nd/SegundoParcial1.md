# Segundo Parcial

Este segundo parcial evalua los temas vistos en el segundo corte, esta vez no necesitamos usar nada más que lo que esta en la carpeta Exams/2nd, no pueden usar ChatGPT, copilot, google, wahtsapp, ni nada por el estilo.

¡Éxitos!

## Ingeniería Reversa (40 min)

A partir de esta descripción narrativa identifique los datos a almacenar y las entidades que se requieren.

    Soy gerente de una empresa mayorista de artículos deportivos que opera en todo el mundo para satisfacer los pedidos de las tiendas de artículos deportivos en todo el mundo para satisfacer los pedidos de las tiendas minoristas de artículos deportivos. Las tiendas son nuestros clientes. Para cada cliente, debemos rastrear una identificación y un nombre. Podemos rastrear una dirección, incluyendo la ciudad, el condado, el código postal, el país y el número de teléfono.

    Debemos registrar información sobre nuestras existencias, incluidos el DNI, la descripción, precio, cantidad en stock. Mantenemos existencias en los almacenes para atender mejor los pedidos de nuestros clientes. Para cada pedido, debemos rastrear un ID. Registramos la fecha de pedido, la fecha de envío y el tipo de pago cuando la información está disponible. 

    Cada almacén debe tener una identificación para la que rastreamos una dirección que incluye la ciudad, el condado, el código postal, el país y el número de teléfono.

    Los departamentos se encargan de realizar y seguir los pedidos cuando llaman nuestros clientes. Para cada departamento, debemos rastrear el ID y el nombre. También podemos registrar comentarios generales sobre un cliente.


Crea el diagrama y los códigos sql, pruebalos ya que estos deben de funcionar correctamente. Todas las tablas deben tener una llave primaria. Debe agregarse la relación que aparece en los textos.

## Normalziación (40 min)

Aplica las 3 primeras formas normales para la siguiente tabla, puedes hacerlo desde sql o desde excel pero debes mencionar como aplicas cada forma normal.


| Nombre Completo | Dirección Física   | Películas Alquiladas                             | Saludo    | Correo Electrónico    | Número de Teléfono | Estado de Membresía |
|-----------------|--------------------|--------------------------------------------------|-----------|-----------------------|--------------------|---------------------|
| John Smith      | 123 Calle Principal, Ciudad  | El Padrino, Origen, Sueño de Fuga            | Sr.       | john@example.com      | (555) 123-4567     | Activo              |
| Jane Doe        | 456 Calle Elm, Pueblo       | Forrest Gump, Pulp Fiction                   | Sra.      | jane@example.com      | (555) 234-5678     | Activo              |
| Michael Johnson | 789 Calle Roble, Pueblo     | El Caballero de la Noche                     | Sr.       | michael@example.com   | (555) 345-6789     | Activo              |
| Emily Brown     | 101 Calle Pino, Suburbio    | Titanic, Matrix, El Silencio de los Corderos | Sra.      | emily@example.com     | (555) 456-7890     | Activo              |
| Jane Doe       | 456 Calle Elm, Pueblo     | El Señor de los Anillos: La Comunidad del Anillo, El Señor de los Anillos: Las Dos Torres | Sra.       | jane@example.com     | (555) 234-5678     | Activo              |

Debes entregar los códigos sql o la hoja de excel y un archivo txt o word donde expliques como estas aplicando las formas normales, también puedes escribir todo en el mismo excel o sql si así lo prefieres.


## Consultas (40 min)

La base de datos que usaremos es [northwind - db-samples](https://github.com/harryho/db-samples/tree/master/mysql). Utilicen el arhivo `northwind.sql` o `northwind_er_diagram.mwb`. Recuerden que pare realizar las consultas una ayuda bastante buena es la creación del diagrama. Las consultas que vamos a relizar deben resolver las siguientes preguntas:


```sql
# 1. Seleccione todos los nombres de categorías con sus descripciones de la tabla correspondiente a Categorías.


# 2. Seleccione el nombre de contacto, el identificador de cliente y el nombre de la empresa de todos los Clientes
en Londres.


# 3. Los responsables de marketing y los representantes de ventas le han pedido que seleccione todas las columnas disponibles en la tabla de proveedores <u>que tengan un número</u> de FAX, no valores nulos.


# 4. Seleccione una lista de ids de clientes, cargas, y fechas requeridas de la tabla de pedidos (orders) con fechas requeridas (requiere date) entre el mes de enero y febrero de 2007 y con cargas inferiores (Freight) a 100 unidades. Usar comando `BETWEEN` o `IF` para las fechas.


# 5. Cuente el número de productos que siguen disponibles, que no estan descontinuados, en la tabla de productos. Usar comando `Count`.


# 6. Seleccione una lista de nombres de categorías y descripciones de todas las categorías que empiecen por "Co" de la tabla Categorías. Usar el comando `like` y el operador `%`.


# 7. Seleccione todos los nombres de empresas, dirección, ciudad, país y código postal de la tabla de proveedores con la palabra «Av» en su dirección. La lista debe estar ordenada alfabéticamente y ascendentemente por el nombre del proveedor. Use los mismos comandos del ejercicio 6.


# 8. Seleccione el id de producto y las cantidades totales pedidas para cada id de producto en la tabla Detalles del Pedido. Utilicen el comando `ORDER BY` Y `SUM`.


# 9. Seleccione el nombre del cliente y la dirección de todos los clientes con pedidos que se enviaron utilizando Shipper GVSUA. Utilicen el comando `INNER JOIN`.


# 10. Cambia el nombre de la categoria "Grains/Cereals" a "Granos/Cereales" y traduce la descripción de la tabla de categorias. Para mayor facilidad revisa cual es el id de esa categoria y haz la actualización usando ese id. Utiliza los comandos `UPDATE` and `SET`.


# 11. (Opcional) Seleccione el nombre y apellido del empleado y el nombre del cliente para los pedidos enviados por la empresa «GVSUA» a clientes residentes en Bruselas. Utilicen el comando `JOIN`


```

Pueden usar este código como base para el ejercicio. Deben entregar un archivo con las consultas realizadas, lo pueden presentar en archivos de tipo sql o notebooks de sql.

Recuerden usar el comando `? sql_command` o `\help mysql_command` para ver que opciones tiene ese comando.

## Referencias

La única refrencia que pueden usar es [MySQL by Examples for Beginners - ntu](https://www3.ntu.edu.sg/home/ehchua/programming/sql/MySQL_Beginner.html).
