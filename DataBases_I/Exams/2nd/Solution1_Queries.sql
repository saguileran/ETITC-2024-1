USE Northwind;

# 1. Seleccione todos los nombres de categorías con sus descripciones de la tabla correspondiente a Categorías.
SELECT categoryName,description FROM Category;

# 2. Seleccione el nombre de contacto, el identificador de cliente y el nombre de la empresa de todos los Clientes en Londres.
SELECT contactName,custId,companyName,city FROM Customer 
WHERE city="London";

# 3. Los responsables de marketing y los representantes de ventas le han pedido que seleccione todas las columnas disponibles en la tabla de proveedores que tengan un número de FAX, no valores nulos.
SELECT * FROM Supplier 
WHERE fax IS NOT null;

# 4. Seleccione una lista de ids de clientes, cargas, y fechas requeridas de la tabla de pedidos (orders) con fechas requeridas (requiere date) entre el mes de enero y febrero de 2007 y con cargas inferiores (Freight) a 100 unidades. Usar comando `BETWEEN` o `IF` para las fechas.
SELECT custId,freight,requiredDate FROM SalesOrder
WHERE requiredDate BETWEEN "2007-01-01" AND "2007-03-01"
#WHERE requiredDate>="2007-01-01" AND requiredDate<"2007-03-01" 
AND freight<100;

# 5. Cuente el número de productos que siguen disponibles, que no estan descontinuados, en la tabla de productos. Usar comando `Count`.
SELECT count(discontinued) FROM Product 
WHERE discontinued=0;

# 6. Seleccione una lista de nombres de categorías y descripciones de todas las categorías que empiecen por "Co" de la tabla Categorías. Usar el comando `like` y el operador `%`.
SELECT categoryName,description FROM Category 
WHERE categoryName LIKE "Co%";

# 7. Seleccione todos los nombres de empresas, dirección, ciudad, país y código postal de la tabla de proveedores con la palabra «Av» en su dirección. La lista debe estar ordenada alfabéticamente y ascendentemente por el nombre del proveedor. Use los mismos comandos del ejercicio 6.
SELECT companyName,address,city,country,postalCode FROM Supplier
WHERE address LIKE "%Av%" ORDER BY companyName ASC;

# 8. Seleccione el id de producto y las cantidades totales pedidas para cada id de producto en la tabla Detalles del Pedido. Utilicen el comando `ORDER BY` Y `SUM`.
SELECT productId,sum(quantity) as Total
FROM OrderDetail
GROUP BY productId ORDER BY Total;

# 9. Seleccione el nombre del cliente y la dirección de todos los clientes con pedidos que se enviaron utilizando Shipper GVSUA. Utilicen el comando `INNER JOIN`.
SELECT DISTINCT contactName, address #, Shipper.CompanyName
FROM Customer
	INNER JOIN SalesOrder ON Customer.custId = SalesOrder.custId
	INNER JOIN Shipper ON SalesOrder.shipperid = Shipper.ShipperID
WHERE Shipper.CompanyName = 'Shipper GVSUA';

# 10. Cambia el nombre de la categoria "Grains/Cereals" a "Granos/Cereales" y traduce la descripción de la tabla de categorias. Para mayor facilidad revisa cual es el id de esa categoria y haz la actualización usando ese id. Utiliza los comandos `UPDATE` and `SET`.
select * from Category; # revisar cual es el id de Grains/Cereals
UPDATE Category
SET categoryName = 'Granos/Cereales', description = 'Pan, galleta, pasta, cereal, y quinoa'
WHERE categoryId = 5;

# 11. (Opcional) Seleccione el nombre y apellido del empleado y el nombre del cliente para los pedidos enviados por la empresa «GVSUA» a clientes residentes en Bruselas. Utilicen el comando `JOIN`
SELECT DISTINCT e.LastName, e.FirstName, c.ContactName
FROM Employee e
	JOIN SalesOrder AS o ON o.EmployeeID = e.EmployeeID
	JOIN Customer AS c ON o.custId = c.custId
	JOIN Shipper AS s ON o.Shipperid = s.ShipperID
WHERE s.CompanyName ='GVSUA' AND c.City = 'Bruxelles';