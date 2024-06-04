# Lección: Uso de etiquetas SQL en JSTL con MySQL
---

Las JavaServer Pages (JSP) se utilizan para crear contenido web dinámico en aplicaciones web basadas en Java. La JavaServer Pages Standard Tag Library (JSTL) es una colección de etiquetas que simplifican la integración de código Java dentro de páginas JSP. Esta lección se centra en las etiquetas SQL de JSTL, que nos permiten interactuar con una base de datos directamente desde una página JSP utilizando el lenguaje de consulta estructurado (SQL). En esta lección, utilizaremos MySQL como nuestro sistema de gestión de base de datos.

## Objetivos

Al final de esta lección, los estudiantes serán capaces de:
1. Entender el propósito y el uso de las etiquetas SQL de JSTL.
2. Configurar un entorno JSP para utilizar JSTL con MySQL.
3. Realizar operaciones básicas de base de datos (SELECT, INSERT, UPDATE, DELETE) utilizando etiquetas JSTL SQL.

## Prerrequisitos

- Conocimientos básicos de Java y JSP.
- Un servidor MySQL instalado y funcionando.
- Controlador MySQL JDBC.
- Apache Tomcat u otro contenedor de servlets.

## Resumen de la lección

1. **Configuración del entorno**
    - Configuración de MySQL.
    - Configuración del proyecto JSP con JSTL.
2. **Descripción general de las etiquetas SQL de JSTL**
    - `<sql:setDataSource>`
    - `<sql:query>`
    - `<sql:update>`
    - `<sql:param>`
3. **Ejecutando Operaciones CRUD**
    - Creación de una base de datos y una tabla en MySQL.
    - Operación SELECT.
    - Operación INSERT.
    - Operación UPDATE.
    - Operación DELETE.
4. **Aplicación de Ejemplo**
    - Una aplicación simple de JST para manejar una lista de estudiantes.

## 1. Configuración del Entorno

### Configurando MySQL

1. **Instalr MySQL**: Si no esta instalado, descarcar e instalar mysql desde un sitio oficial, [MySQL Community Downloads](https://dev.mysql.com/downloads/). Desde Windows dar click en *MySQL Installer for Windows* , si están desde ubuntu sigan el tutorial [A Quick Guide to Using the MySQL APT Repository](https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/) para installar correctamente MySQL y además Workbrench.

2. **Crea un Usuario**: Crea un usario y concedele los privilegios necesarios.

    ```sql
    CREATE USER 'dba'@'localhost' IDENTIFIED BY '123456789.eT';
    GRANT ALL PRIVILEGES ON * . * TO 'dba'@'localhost'  WITH GRANT OPTION;
    FLUSH PRIVILEGES;
    ```


3. **Creación de una base de datos**: Abre MySQL Workbrench o usa la terminal para crear una nueva base de datos. Para agilizar la creación de la base de datos utiliza ChatGPT, aca esta un prompt de plantailla que pueden utilizar

    >Eres el diseñador de una bases de datos y trabajas para una licoreria. Crea una base de datos sobre una licores y agrega otra tabla relacionada sobre el inventario, cada tabla de tener mínimo 7 filas y 5 columnas o más. Además, enfoca los datos a licores de Colombia y agrega datos reales. Escribe los datos utilizando lenguajge mysql. 

    Modifiquen y acutalicen los datos generados. La base de datos debe llamarse `licoreria` 

    ```sql
    CREATE DATABASE licoreria;
    USE licoreria;
    -- Crear la tabla de licores
    CREATE TABLE Licores (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        Nombre VARCHAR(50),
        Tipo VARCHAR(50),
        Origen VARCHAR(50),
        Precio DECIMAL(10, 2),
        Volumen VARCHAR(20)
    );

    -- Insertar datos en la tabla de licores
    INSERT INTO Licores (Nombre, Tipo, Origen, Precio, Volumen) VALUES
    ('Aguardiente Antioqueño', 'Aguardiente', 'Colombia', 25000, '750 ml'),
    ('Ron Medellín Añejo', 'Ron', 'Colombia', 45000, '750 ml'),
    ('Nectar del Valle', 'Aguardiente', 'Colombia', 18000, '750 ml'),
    ('Ginebra Dictador', 'Ginebra', 'Colombia', 35000, '750 ml'),
    ('Licor de Café Quindío', 'Licor', 'Colombia', 20000, '750 ml'),
    ('Vodka Tres Leones', 'Vodka', 'Colombia', 30000, '750 ml'),
    ('Tequila Néctar', 'Tequila', 'Colombia', 40000, '750 ml');
    ```

### Configuración del proyecto JSP con JSTL

1. **Creación del Proyecto Web Dinámico**: Crea un proyecto dinámico y ponle el nombre de una licoreria. No olvider crear el archivo `web.xml`.

1. **Descargue JSTL**: Primero Convierte el anterior proyecto a Maven. Después, asegúrate de que tienes la librería JSTL en tu proyecto. Puedes descargarla de la página oficial de Apache o incluirla a través de Maven.

    ```xml
	<dependency>
	    <groupId>jakarta.servlet</groupId>
	    <artifactId>jakarta.servlet-api</artifactId>
	    <version>6.0.0</version>
	    <scope>provided</scope>
	</dependency>
	<dependency>
	    <groupId>jakarta.servlet.jsp</groupId>
	    <artifactId>jakarta.servlet.jsp-api</artifactId>
	    <version>3.1.1</version>
	    <scope>provided</scope>
	</dependency>
	<dependency>
	    <groupId>jakarta.servlet.jsp.jstl</groupId>
	    <artifactId>jakarta.servlet.jsp.jstl-api</artifactId>
	    <version>3.0.0</version>
	</dependency>
    ```

2. **Añadir controlador JDBC**: Asegúrese de que el controlador MySQL JDBC está incluido en su proyecto y que tenga la misma versión que descargaron.

    ```xml
    <dependency>
	    <groupId>mysql</groupId>
	    <artifactId>mysql-connector-java</artifactId>
	    <version>8.0.33</version>
	</dependency>
    ```
En caso de ser necesario instalarlo manualmente pueden descargarlo en [MySQL Product Archives - MySQL Connector/J (Archived Versions)](https://downloads.mysql.com/archives/c-j/).

## 2. Visión general de las etiquetas SQL de JSTL

### `<sql:setDataSource>`

Esta etiqueta configura una fuente de datos para que la utilicen las etiquetas SQL.

```jsp
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/licoreria"
                   user="dba" password="123456789.eT"/>
```

### `<sql:query>`

Esta etiqueta se utiliza para ejecutar sentencias SQL SELECT.

```jsp
<sql:query dataSource="${dbSource}" var="Licores">
    SELECT * FROM Licores;
</sql:query>
```

### `<sql:update>`

Esta etiqueta se utiliza para ejecutar sentencias SQL INSERT, UPDATE y DELETE.

```jsp
<sql:update dataSource="${dbSource}">
    INSERT INTO Licores (ID, Nombre, Tipo, Origen, Precio, Volumen) VALUES (8, "Bolegancho", "Aguardiente artesanal", "Norte de Santander", "12000", "1000 ml");
</sql:update>
```

### `<sql:param>`

Esta etiqueta se utiliza para establecer parámetros en las consultas SQL para evitar la inyección SQL.

```jsp
<sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM  WHERE Tipo = <sql:param value="${param.id}"/>;
</sql:query>
```

## 3. Realización de Operaciones CRUD


### Crear una base de datos y una tabla en MySQL

Ahora, agrega una tabla en la base de datos llamada `Inventario`.

```sql
-- Crear la tabla de inventario
CREATE TABLE Inventario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Licor INT,
    Cantidad INT,
    Fecha_Llegada DATE,
    Fecha_Expiracion DATE,
    FOREIGN KEY (ID_Licor) REFERENCES Licores(ID)
);

-- Insertar datos en la tabla de inventario
INSERT INTO Inventario (ID_Licor, Cantidad, Fecha_Llegada, Fecha_Expiracion) VALUES
(1, 50, '2024-05-10', '2025-05-10'),
(2, 30, '2024-04-20', '2025-04-20'),
(3, 25, '2024-05-05', '2025-05-05'),
(4, 20, '2024-03-15', '2025-03-15'),
(5, 40, '2024-06-01', '2025-06-01'),
(6, 15, '2024-07-10', '2025-07-10'),
(7, 10, '2024-08-05', '2025-08-05');
```

Utilicen la siguiente plantilla para crear un archivo JSP llamado `index.jsp`, aqui deben agregar los siguientes ejemplos en el cuerpo del código

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix = "sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Licoreria Nombre</title>
</head>
<body>
<h1>Licoreria Nombre</h1>
<h2>Inventario</h2>

<h3>Original</h3>
<!-- Agregar código aca -->
<!-- Antes de una tabla debe ejecutarse el select-->
<table border="1">
    <tr>
        <th>Id</th>
        <th>Id_Licor</th>
        <th>Cantidad</th>
        <th>Fecha_Llegada</th>
        <th>Fecha_Expiracion</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td>${row.ID}</td>
            <td>${row.ID_Licor}</td>
            <td>${row.Cantidad}</td>
            <td>${row.Fecha_Llegada}</td>
            <td>${row.Fecha_Expiracion}</td>
        </tr>
    </c:forEach>
</table>


<h3>Después de las opreaciones CRUD</h3>
<!-- Agregar código aca incluido la visualización de la tabla -->

</body>
</html>
```

### Operación SELECT

```jsp
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/licoreria"
                   user="dba" password="123456789.eT"/>

<sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM Inventario;
</sql:query>
```


### Operacion INSERT

```jsp
<sql:update dataSource="${dbSource}">
    INSERT INTO Inventario
    	     (ID, ID_Licor, Cantidad, Fecha_Llegada, Fecha_Expiracion) 
    	VALUES (8, 7, 12, "2024-06-01",  "2025-06-01");
</sql:update>
```

### Operacion UPDATE

```jsp
<sql:update dataSource="${dbSource}">
    UPDATE Inventario SET Fecha_Expiracion = "2025-01-01" WHERE ID = 8;
</sql:update>
```

### Operacion DELETE

```jsp
<sql:update dataSource="${dbSource}">
    DELETE FROM Inventario 
    WHERE id = (select id from Licores where Nombre = 'Ginebra Dictador');
</sql:update>
```

## 4. Aplicación Ejemplo

Cree una aplicación JSP sencilla para gestionar una licoreria pequeña. La aplicación debe permitir a los usuarios:

- Ver todos los licores.
- Añadir un nuevo licor.
- Actualizar un licor existente.
- Borrar un licor.

### Ver Todos los Licores

1. **JSP File: verLicores.jsp**

    ```jsp
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/licoreria"
                       user="dba" password="123456789.eT"/>

    <sql:query dataSource="${dbSource}" var="result">
        SELECT * FROM Licores;
    </sql:query>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Origen</th>
            <th>Precio</th>
            <th>Volumen</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td>${row.ID}</td>
                <td>${row.Nombre}</td>
                <td>${row.Tipo}</td>
                <td>${row.Origen}</td>
                <td>${row.Precio}</td>
                <td>${row.Volumen}</td>
            </tr>
        </c:forEach>
    </table>

    <a href="datosLicor.jsp">Agrega un nuevo licor.</a> <br>
    <a href="actualizarDatosLicor..jsp">Actualizar le precio de un licor.</a> <br>
    <a href="eliminarLicorID.jsp">Eliminar un licor por ID.</a>
    ```

### Agregar un Nuevo Estudiante

1. **JSP File: datosLicor.jsp**

    ```jsp
    <form action="agregarLicor.jsp" method="post">
        Nombre: <input type="text" name="Nombre"/><br/>
        Tipo: <input type="text" name="Tipo"/><br/>
        Origen: <input type="text" name="Origen"/><br/>
        Precio: <input type="text" name="Precio"/><br/>
        Volumen: <input type="text" name="Volumen"/><br/>
        <input type="submit" value="Agregar Licor"/>
    </form>
    ```

2. **JSP File: agregarLicor.jsp**

    ```jsp
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/licoreria"
                       user="dba" password="123456789.eT"/>

    <sql:update dataSource="${dbSource}">
        INSERT INTO Licores (Nombre, Tipo, Origen, Precio, Volumen) 
        VALUES ('${param.Nombre}', '${param.Tipo}','${param.Origen}', ${param.Precio}, '${param.Volumen}');
    </sql:update>

    <c:redirect url="verLicores.jsp"/>
    ```

### Actualizar Estudiante

1. **JSP File: actualizarDatosLicor.jsp**

    ```jsp
    <form action="actualizarLicor.jsp" method="post">
        ID: <input type="text" name="id"/><br/>
        Nuevo Precio: <input type="text" name="price"/><br/>
        <input type="submit" value="Actualizar precio de un Licor"/>
    </form>
    ```

2. **Arhicvo JSP: actualizarLicor.jsp**

    ```jsp
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

    <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/licoreria"
                       user="dba" password="123456789.eT"/>

    <sql:update dataSource="${dbSource}">
        UPDATE Licores SET Precio = ${param.price} WHERE id = ${param.id};
    </sql:update>

    <c:redirect url="verLicores.jsp"/>
    ```

### Eliminar un Estudiante

1. **JSP File: eliminarLicorID.jsp**

    ```jsp
    <form action="elimiarLicor.jsp" method="post">
        ID: <input type="text" name="id"/><br/>
        <input type="submit" value="Eliminar Licor"/>
    </form>
    ```

2. **Archivo JSP: elimiarLicor.jsp**

    ```jsp
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

    <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/licoreria"
                       user="dba" password="123456789.eT"/>

    <sql:update dataSource="${dbSource}">
        DELETE FROM Licores WHERE id = ${param.id};
    </sql:update>

    <c:redirect url="verLicores.jsp"/>
    ```

## Conclusión

Esta lección práctica demostró cómo utilizar etiquetas SQL en JSTL con MySQL para realizar operaciones CRUD directamente desde páginas JSP. Siguiendo los pasos descritos, los estudiantes deben ser capaces de configurar su entorno, configurar fuentes de datos y ejecutar comandos SQL dentro de sus aplicaciones JSP, facilitando la integración de bases de datos sin problemas.

# Referencias

- [JSTL - SQL \<sql:param> Tag - TutorialsPoint](https://www.tutorialspoint.com/jsp/jstl_sql_param_tag.htm)
- [JSP - Database Access - TutorialsPoint](https://www.tutorialspoint.com/jsp/jsp_database_access.htm)
- [Java Server-Side Programming - 10.8  JSTL sql Actions](https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaServerPages.html#zz-10.8)
