# Lección Práctica: Uso de JSTL en Aplicaciones Java Web
---

La JavaServer Pages Standard Tag Library (JSTL) es una colección de etiquetas personalizadas que encapsulan la funcionalidad común utilizada en las páginas JSP (JavaServer Pages). JSTL simplifica el desarrollo de aplicaciones web Java al proporcionar una manera de realizar tareas comunes como iteraciones, manipulación de datos, y acceso a recursos sin tener que escribir código Java directamente en las páginas JSP.

## Objetivos de la Lección
1. Entender qué es JSTL y sus beneficios.
2. Conocer las bibliotecas principales de JSTL.
3. Aprender a configurar y utilizar JSTL en una aplicación Java Web.
4. Implementar etiquetas JSTL para iteraciones, condiciones, y manipulación de datos en JSP.

## Requisitos Previos
- Conocimiento básico de Java y JSP.
- Configuración básica de un entorno de desarrollo web (Eclipse, IntelliJ IDEA, o similar).
- Servidor de aplicaciones (Apache Tomcat).

## Contenidos de la Lección

1. **Introducción a JSTL**
2. **Configuración del Entorno**
3. **Uso de las Principales Bibliotecas JSTL**
   - Core Tags
   - Formatting Tags
   - XML Tags
4. **Detalles de las Etiquetas JSTL**
5. **Ejemplos Prácticos**
6. **Proyecto de Ejemplo**

### 1. Introducción a JSTL
JSTL facilita el desarrollo de páginas JSP proporcionando una serie de etiquetas estándar que permiten realizar operaciones comunes sin necesidad de escribir Java en las páginas JSP. Las principales bibliotecas JSTL son:
- Core (básica)
- Formatting (formato)
- XML (procesamiento de XML)

### 2. Configuración del Entorno
Para utilizar JSTL en tu proyecto, debes seguir los siguientes pasos:

1. **Agregar la biblioteca JSTL al proyecto:**
   Si utilizas Maven, agrega las siguientes dependencias a tu archivo `pom.xml`:

   ```xml
   <dependency>
       <groupId>javax.servlet</groupId>
       <artifactId>jstl</artifactId>
       <version>1.2</version>
   </dependency>
   ```

2. **Incluir las bibliotecas JSTL en las páginas JSP:**
   Añade la directiva de biblioteca JSTL al inicio de tu archivo JSP:
   
   ```jsp
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
   ```

### 3. Uso de las Principales Bibliotecas JSTL

#### Core Tags
Las etiquetas principales (core) proporcionan funciones básicas de control de flujo y manipulación de datos.

1. **Iteraciones:**
   ```jsp
   <c:forEach var="item" items="${itemList}">
       ${item.name}
   </c:forEach>
   ```

2. **Condiciones:**
   ```jsp
   <c:if test="${user.loggedIn}">
       Bienvenido, ${user.name}!
   </c:if>
   ```

3. **Eliminación de duplicados:**
   ```jsp
   <c:set var="greeting" value="Hello, World!" />
   <c:out value="${greeting}" />
   ```

#### Formatting Tags
Estas etiquetas permiten formatear números, fechas y cadenas.

1. **Formateo de números:**
   ```jsp
   <fmt:formatNumber value="${number}" type="currency" />
   ```

2. **Formateo de fechas:**
   ```jsp
   <fmt:formatDate value="${now}" pattern="dd/MM/yyyy" />
   ```

#### XML Tags
Las etiquetas XML permiten manipular y mostrar datos XML.

1. **Parseo de XML:**
   ```jsp
   <x:parse var="doc" xml="${xmlString}" />
   ```

2. **Iteración sobre nodos XML:**
   ```jsp
   <x:forEach select="$doc/root/element" var="element">
       <x:out select="$element/@attribute" />
   </x:forEach>
   ```

### 4. Detalles de las Etiquetas JSTL

#### Core Tags
Las etiquetas principales de JSTL permiten realizar operaciones básicas y esenciales en JSP sin necesidad de escribir código Java explícito.

1. **`<c:forEach>`:**
   Itera sobre una colección de elementos.
   ```jsp
   <c:forEach var="item" items="${itemList}">
       ${item.name}
   </c:forEach>
   ```

2. **`<c:if>`:**
   Evalúa una condición y muestra el contenido si la condición es verdadera.
   ```jsp
   <c:if test="${condition}">
       <!-- Contenido a mostrar si la condición es verdadera -->
   </c:if>
   ```

3. **`<c:choose>`, `<c:when>`, `<c:otherwise>`:**
   Estructura de control condicional similar a `switch` en Java.
   ```jsp
   <c:choose>
       <c:when test="${condition1}">
           <!-- Contenido si condition1 es verdadera -->
       </c:when>
       <c:when test="${condition2}">
           <!-- Contenido si condition2 es verdadera -->
       </c:when>
       <c:otherwise>
           <!-- Contenido si ninguna condición es verdadera -->
       </c:otherwise>
   </c:choose>
   ```

4. **`<c:set>`:**
   Establece el valor de una variable de página.
   ```jsp
   <c:set var="variable" value="value" />
   ```

5. **`<c:out>`:**
   Muestra el valor de una expresión, escapando caracteres especiales de HTML.
   ```jsp
   <c:out value="${expression}" />
   ```

#### Formatting Tags
Las etiquetas de formato permiten convertir y formatear datos como números y fechas.

1. **`<fmt:formatNumber>`:**
   Formatea un número.
   ```jsp
   <fmt:formatNumber value="${number}" type="currency" />
   ```

2. **`<fmt:formatDate>`:**
   Formatea una fecha.
   ```jsp
   <fmt:formatDate value="${now}" pattern="dd/MM/yyyy" />
   ```

3. **`<fmt:parseNumber>`:**
   Convierte una cadena a un número.
   ```jsp
   <fmt:parseNumber var="parsedNumber" value="${numberString}" />
   ```

4. **`<fmt:parseDate>`:**
   Convierte una cadena a una fecha.
   ```jsp
   <fmt:parseDate var="parsedDate" value="${dateString}" pattern="dd/MM/yyyy" />
   ```

#### XML Tags
Las etiquetas XML de JSTL proporcionan soporte para trabajar con datos XML.

1. **`<x:parse>`:**
   Convierte una cadena XML en un objeto XML.
   ```jsp
   <x:parse var="doc" xml="${xmlString}" />
   ```

2. **`<x:out>`:**
   Evalúa una expresión XPath y muestra el resultado.
   ```jsp
   <x:out select="$doc/root/element" />
   ```

3. **`<x:forEach>`:**
   Itera sobre un conjunto de nodos XML.
   ```jsp
   <x:forEach select="$doc/root/element" var="element">
       <x:out select="$element/@attribute" />
   </x:forEach>
   ```

### 5. Ejemplos Prácticos

#### Ejemplo de Página JSP con Core Tags
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSTL Core Example</title>
</head>
<body>
    <h1>Usuarios</h1>
    <c:forEach var="user" items="${users}">
        <p>${user.name}</p>
    </c:forEach>
</body>
</html>
```

#### Ejemplo de Página JSP con Formatting Tags
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSTL Formatting Example</title>
</head>
<body>
    <h1>Formato de Números y Fechas</h1>
    <p>Número formateado: <fmt:formatNumber value="${12345.6789}" type="currency" /></p>
    <p>Fecha formateada: <fmt:formatDate value="${now}" pattern="dd/MM/yyyy" /></p>
</body>
</html>
```

#### Ejemplo de Página JSP con XML Tags
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8

" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSTL XML Example</title>
</head>
<body>
    <x:parse var="doc" xml="${xmlString}" />
    <x:forEach select="$doc/root/element" var="element">
        <p>${element}</p>
    </x:forEach>
</body>
</html>
```

### 6. Proyecto de Ejemplo

Vamos a crear un pequeño proyecto de ejemplo que muestre una lista de usuarios almacenados en una base de datos.

#### Estructura del Proyecto

1. **Modelo (User.java)**
   ```java
   public class User {
       private int id;
       private String name;
       private String email;

       // Getters y Setters
   }
   ```

2. **Controlador (UserServlet.java)**
   ```java
   @WebServlet("/users")
   public class UserServlet extends HttpServlet {
       protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           List<User> users = UserDAO.getAllUsers();
           request.setAttribute("users", users);
           request.getRequestDispatcher("/users.jsp").forward(request, response);
       }
   }
   ```

3. **Vista (users.jsp)**
   ```jsp
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!DOCTYPE html>
   <html>
   <head>
       <title>Lista de Usuarios</title>
   </head>
   <body>
       <h1>Usuarios</h1>
       <c:forEach var="user" items="${users}">
           <p>${user.name} - ${user.email}</p>
       </c:forEach>
   </body>
   </html>
   ```

## Conclusión
JSTL es una herramienta poderosa que facilita la creación de aplicaciones web Java al proporcionar etiquetas estándar para tareas comunes. Esta lección cubre los aspectos básicos de configuración y uso de JSTL, proporcionando ejemplos prácticos y un proyecto de ejemplo para ilustrar su uso en aplicaciones del mundo real.

Con esta base, podrás explorar más etiquetas y funcionalidades de JSTL, mejorando así la eficiencia y mantenibilidad de tus aplicaciones web Java.

---
## Referencias

### Guias Principales

- [JSP Standard Tag Library (JSTL) & Expression Language (EL) - ntu](https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaServerPages.html#zz-10.)
- [JSTL Tutorial, JSTL Tags Example - DigitalOcean](https://www.digitalocean.com/community/tutorials/jstl-tutorial-jstl-tags-example#jstl-jars)
- [A Guide to the JSTL Library - Baeldung](https://www.baeldung.com/jstl)
- [Apache tag libs - Tomcat](https://tomcat.apache.org/taglibs/site/tutorial.html)

### Guias Complementarias

- [JavaServer Pages Standard Tag Library - uccs](http://www.cs.uccs.edu/~cs526/jwsdp/docs/tutorial/doc/JSTL.html)
- [JSP - Standard Tag Library (JSTL) Tutorial](https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm)
- [JSTL (JSP Standard Tag Library) - javatpoint](https://www.javatpoint.com/jstl)
- [JSP Standard Tag Library (JSTL) Tutorial](https://www.tutorialspoint.com/jsp/pdf/jsp_standard_tag_library.pdf)
- [JavaServer Pages Standard Tag Library](https://www.inf.ed.ac.uk/teaching/courses/ec/handouts/jstl.pdf)

### Repositorios

- [JSTL-Tutorials](https://github.com/CodeJamm/JSTL-Tutorials)
- [jstl - topic](https://github.com/topics/jstl) 

### Tutoriales
- [JSTL Tutorial part 1 EL](https://www.youtube.com/watch?v=KmREMEhj5eE)
- [05 Cómo agregar o importar las etiquetas JSTL (JavaServer Pages Standard Tag Library)](https://www.youtube.com/watch?v=TVJQ18RgTa8)
- [Tutorial 17 de JSP y Servlets: Introducción a JSTL y la etiqueta useBean](https://www.youtube.com/watch?v=-mjYAf0ILZs)

