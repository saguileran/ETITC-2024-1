USE Northwind;

# 1. Seleccione todos los nombres de los exportadores (shipper) con sus números telefónicos de la tabla correspondiente a Exportadores.
SELECT companyName,phone FROM Shipper;

# 2. Seleccione el nombre de contacto, el identificador de cliente y el nombre de la ciudad de todos los clientes en España (spain).
SELECT contactName,custId,companyName,city FROM Customer 
WHERE country="Spain";

# 3. Los responsables de marketing y los representantes de ventas le han pedido que seleccione todas las columnas disponibles en la tabla de proveedores que tengan una región, no valores nulos.
SELECT * FROM Supplier 
WHERE region IS NOT null;

# 4. Seleccione una lista de ids de clientes, cargas, y fechas requeridas de la tabla de pedidos (orders) con fechas requeridas (requiere date) entre el mes de agosto y septiembre de 2006 y con cargas inferiores (Freight) a 80 unidades. Usar comando `BETWEEN` o `IF` para las fechas.
SELECT custId,freight,requiredDate FROM SalesOrder
WHERE requiredDate BETWEEN "200-08-01" AND "2007-10-01"
#WHERE requiredDate>="2006-08-01" AND requiredDate<"2006-10-01" 
AND freight<80;

# 5. Cuente el número de productos descontinuados en la tabla de productos. Usar comando `Count`.
SELECT count(discontinued) FROM Product 
WHERE discontinued=1;

# 6. Seleccione una lista de nombres de categorías y descripciones de todas las categorías que terminen por "ts" de la tabla Categorías. Usar el comando `like` y el operador `%`.
SELECT categoryName,description FROM Category 
WHERE categoryName LIKE "%ts";

# 7. Seleccione todos los nombres de empresas, dirección, ciudad, país y código postal de la tabla de proveedores con la palabra «rue» en su dirección. La lista debe estar ordenada alfabéticamente descendientemente por el nombre de la ciudad. Use los mismos comandos del ejercicio 6.
SELECT companyName,address,city,country,postalCode FROM Supplier
WHERE address LIKE "%rue%" ORDER BY city DESC;

# 8. Seleccione el id de producto y las cantidades totales pedidas para cada id de producto en la tabla Detalles del Pedido. Utilicen el comando `ORDER BY` Y `SUM`.
SELECT productId,sum(quantity) as Total
FROM OrderDetail
GROUP BY productId ORDER BY Total;

# 9. Seleccione el nombre del cliente, la dirección, y el fax de todos los clientes con pedidos que se enviaron utilizando Shipper ZHISN. Utilicen el comando `INNER JOIN`.
SELECT DISTINCT contactName, address#, Shipper.CompanyName
FROM Customer
	INNER JOIN SalesOrder ON Customer.custId = SalesOrder.custId
	INNER JOIN Shipper ON SalesOrder.shipperid = Shipper.ShipperID
WHERE Shipper.CompanyName = 'Shipper ZHISN';

# 10. Cambia el nombre de la empresa de "Shipper GVSUA" a "GVSUA" y el número de teléfono a tu propio número incluyendo el (+57) en la tabla exportadores (shipper). Para mayor facilidad revisa cual es el id de ese exportador y haz la actualización usando ese id. Utiliza los comandos `UPDATE` and `SET`.
SELECT * FROM Shipper; # revisa el id de Shipper GVSUA
UPDATE Shipper
SET CompanyName = 'GVSUA', phone="(057) 3195140529"
WHERE shipperid = 1;

# 11. (Opcional) Seleccione el nombre y apellido del empleado y el nombre del cliente para los pedidos enviados por la empresa «GVSUA» a clientes residentes en Bruselas. Utilicen el comando `JOIN`
SELECT DISTINCT e.LastName, e.FirstName, c.ContactName
FROM Employee e
	JOIN SalesOrder AS o ON o.EmployeeID = e.EmployeeID
	JOIN Customer AS c ON o.custId = c.custId
	JOIN Shipper AS s ON o.Shipperid = s.ShipperID
WHERE s.CompanyName ='GVSUA' AND c.City = 'Bruxelles';