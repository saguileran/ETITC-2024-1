# Guía para Crear y Responder Consultas sobre una Base de Datos de una Licorería Grande

---

Esta guía está diseñada para ayudarte a crear y responder consultas SQL sobre una base de datos mediana para un proyecto de una licorería grande. La base de datos incluye varias tablas relacionadas para gestionar productos, clientes, ventas, empleados, proveedores, y más.

## Paso 1: Creación de la Base de Datos y las Tablas

Primero, vamos a crear una base de datos y varias tablas esenciales.

### Crear la Base de Datos

```sql
CREATE DATABASE LicoreriaGrande;
USE LicoreriaGrande;
```

### Crear las Tablas

```sql
CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    proveedor_id INT,
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id)
);

CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);

CREATE TABLE Empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(100),
    salario DECIMAL(10, 2)
);

CREATE TABLE Ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    empleado_id INT,
    fecha DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(id)
);

CREATE TABLE Detalles_Venta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venta_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES Ventas(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

CREATE TABLE Proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);
```

## Paso 2: Inserción de Datos de Ejemplo

### Insertar Datos en Proveedores

Puedes hacer ruso de chatGPT, fakeid, u otra herramienta que permita generar tablas de forma rápida y sencilla, o si lo prefieres agregar tus propios datos (no es necesario que sean cientos)

```sql
INSERT INTO Proveedores (nombre, direccion, telefono) VALUES
('Proveedor A', 'Calle 1', '111-1111');
```

### Insertar Datos en Productos

```sql
INSERT INTO Productos (nombre, tipo, precio, stock, proveedor_id) VALUES 
('Whisky Johnnie Walker', 'Whisky', 120.00, 50, 1);
```

### Insertar Datos en Clientes

```sql
INSERT INTO Clientes (nombre, direccion, telefono) VALUES 
('Juan Pérez', 'Calle 123', '555-1234');
```

### Insertar Datos en Empleados

```sql
INSERT INTO Empleados (nombre, puesto, salario) VALUES 
('Carlos Ruiz', 'Cajero', 1500.00);
```

### Insertar Datos en Ventas

```sql
INSERT INTO Ventas (cliente_id, empleado_id, fecha, total) VALUES 
(1, 1, '2023-05-01', 200.00);
```

### Insertar Datos en Detalles_Venta

```sql
INSERT INTO Detalles_Venta (venta_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 2, 120.00);
```
Una venta puede tener varios productos.

## Paso 3: Consultas SQL

A continuación, se presentan más de 15 preguntas con sus respectivas respuestas en MySQL.

### 1. Obtener todos los productos disponibles

```sql
```

### 2. Obtener el nombre y el precio de los productos cuyo stock es menor a 50

```sql
```

### 3. Listar las ventas realizadas por un empleado específico

```sql
```

### 4. Calcular el total de ventas realizadas en un mes específico

```sql
```

### 5. Obtener el nombre del cliente y el total de cada venta

```sql
```

### 6. Listar los productos vendidos en una venta específica

```sql
```

### 7. Calcular el stock total de productos por tipo

```sql
```

### 8. Obtener el nombre y el salario de los empleados que ganan más de 2000

```sql
```

### 9. Listar los proveedores y la cantidad total de productos que suministran

```sql
```

### 10. Obtener el historial de ventas de un cliente específico

```sql
```

### 11. Listar los empleados y el total de ventas que han realizado

```sql
```

### 12. Obtener el precio promedio de los productos

```sql
```

### 13. Listar las ventas realizadas entre dos fechas específicas

```sql
```

### 14. Obtener el nombre del cliente que ha realizado la compra más grande

```sql
```

### 15. Calcular el total de productos vendidos por tipo en un mes específico

```sql
```

### 16. Obtener la dirección y el teléfono de los proveedores que suministran un producto específico

```sql
```

### 17. Listar los productos que no han sido vendidos

```sql
```

### 18. Calcular el total de ingresos por día

```sql
```

### 19. Obtener el nombre y la dirección de los clientes que han comprado un producto específico

```sql
```

### 20. Listar los productos cuyo nombre contiene la palabra 'Tequila'

```sql
```

### 21. Obtener el total de ventas y la cantidad de productos vendidos por cada proveedor

```sql
```

### 22. Calcular el promedio de ventas diarias en un mes específico

```sql
```

### 23. Obtener la cantidad de clientes que han realizado compras en un rango de fechas

```sql
```

### 24. Listar los empleados que no han realizado ninguna venta

```sql
```

### 25. Obtener el total de productos en stock por proveedor

```sql
```

---

# Conclusión

Esta guía proporciona una base sólida para gestionar una base de datos mediana de una licorería grande y realizar consultas SQL avanzadas y eficientes. Al practicar con estas consultas, podrás desarrollar habilidades para analizar datos, optimizar el rendimiento y extraer información valiosa de la base de datos.

# Rerencias

- [Solve SQL - HackerRank](https://www.hackerrank.com/domains/sql)
- [SQL (Basic) Skills Certification Test - HackerRank](https://www.hackerrank.com/skills-verification/sql_basic)