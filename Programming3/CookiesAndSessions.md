# Sesiones y Cookies usando Java Servlets y JSP con Jakarta

En el desarrollo web, mantener el estado entre múltiples solicitudes es esencial debido a que HTTP es por naturaleza sin estado. Para gestionar el estado, utilizamos sesiones y cookies. En esta lección, exploraremos cómo usar sesiones y cookies en Java Servlets y JSP usando el framework Jakarta EE.

Pueden usar el comando `sudo code /opt/tomcat/webapps/app_name --user-data-dir='.' --no-sandbox` para ejecutar vsc como root. 


## Objetivos

- Entender el concepto de sesiones y cookies.
- Aprender a crear, leer y eliminar cookies.
- Aprender a crear y gestionar sesiones.
- Implementar el seguimiento de sesiones en una aplicación web simple usando Java Servlets y JSP con Jakarta.

## Conceptos

**Cookies**: Pequeñas piezas de datos almacenadas en el lado del cliente y enviadas al servidor con cada solicitud. Las cookies pueden usarse para identificar usuarios y mantener el estado.

**Sesión**: Almacenamiento en el servidor de datos del usuario que es accesible a través de múltiples solicitudes. Las sesiones se identifican mediante un ID de sesión único.

## Ejemplo

### 1. Configuración del Entorno

Asegúrate de tener lo siguiente configurado:

- Java Development Kit (JDK).
- Servidor Apache Tomcat (versión 10 o posterior, que soporta Jakarta EE).
- Un Entorno de Desarrollo Integrado (IDE) como Eclipse o IntelliJ IDEA, o en nuestro caso la terminal.

### 2. Creación del Proyecto

1. Abre tu IDE y crea un nuevo Proyecto Web Dinámico.
2. Configura el proyecto para usar Apache Tomcat.
3. Crea la estructura de directorios necesaria, para ello utiliza el ejecutable que esta en la carpeta códigos, `folders.sh`. 

Para crear el ejecutable primero creen el archivo y después haganlo ejecutable con el comando `chmod +x folders.sh`, finalmente lo ejecutan con `./folders.sh`. Con el archivo de `servers.sh` tan solo deben de modificar la primera línea y colocar la dirección correcta a su aplicación. Además, para que funcione el script deben guardarlo y ejecutarlo desde la carpeta `WEB-INF`.

### 3. Manejo de Cookies en Java Servlets

#### Creación y Lectura de Cookies

**CookieServlet.java**
```java
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CookieServlet")
public class CookieServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        // Creación de una cookie
        Cookie userCookie = new Cookie("username", "Sebastian");
        userCookie.setMaxAge(60 * 60 * 24); // 1 día
        response.addCookie(userCookie);

        // Lectura de cookies
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    response.getWriter().println("Hola, " + cookie.getValue());
                }
            }
        } else {
            response.getWriter().println("No se encontraron cookies.");
        }
    }
}
```

### 4. Manejo de Sesiones en Java Servlets

#### Creación y Gestión de Sesiones

**SessionServlet.java**
```java
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        // Creación de una sesión
        HttpSession session = request.getSession();
        session.setAttribute("username", "Sebastian");
        
        // Recuperación de datos de la sesión
        String username = (String) session.getAttribute("username");
        if (username != null) {
            response.getWriter().println("Hola, " + username);
        } else {
            response.getWriter().println("No se encontraron datos de sesión.");
        }
    }
}
```

Por facilidad utiliza el ejecutable `servlets.sh` para compilar todas los archivos java dentro de src.

### 5. Uso de JSP para Mostrar Datos

**index.jsp**
```html
<!DOCTYPE html>
<html>
<head>
    <title>Ejemplo de Sesiones y Cookies</title>
</head>
<body>
    <h1>Bienvenido al Ejemplo de Sesiones y Cookies</h1>
    <a href="CookieServlet">Establecer y Leer Cookies</a><br>
    <a href="SessionServlet">Crear y Acceder a la Sesión</a>
</body>
</html>
```

### Explicación Detallada

**Cookies**:

- **Creación**: Las cookies se crean usando la clase `Cookie`. El constructor toma el nombre de la cookie y el valor como parámetros.
- **Establecer Expiración**: El método `setMaxAge` establece la vida útil de la cookie. Aquí, se establece en 24 horas.
- **Añadir a la Respuesta**: El método `addCookie` de `HttpServletResponse` se usa para enviar la cookie al cliente.
- **Leer Cookies**: El método `getCookies` de `HttpServletRequest` recupera un array de cookies enviadas por el cliente.

**Sesiones**:

- **Creación**: Las sesiones se crean usando el método `getSession` de `HttpServletRequest`. Este método devuelve la sesión actual o crea una nueva si no existe.
- **Establecer Atributos**: El método `setAttribute` se usa para almacenar datos en la sesión.
- **Recuperar Atributos**: El método `getAttribute` recupera los datos almacenados en la sesión.
- **ID de Sesión**: Cada sesión tiene un ID único, que se usa para rastrear la sesión entre solicitudes.

### 6. Despliegue y Pruebas

1. Despliega tu proyecto en Apache Tomcat.
2. Abre un navegador y navega a `http://localhost:8080/tu_nombre_de_proyecto/index.jsp`.
3. Haz clic en los enlaces para interactuar con los servlets y observa cómo se gestionan las cookies y las sesiones.

### Resumen

En esta lección, aprendiste a gestionar el estado en una aplicación web usando cookies y sesiones en Java Servlets y JSP con Jakarta EE. Creaste una aplicación web simple que demuestra la creación, lectura y gestión de cookies y sesiones. Este es un concepto fundamental en la programación web, permitiendo el desarrollo de aplicaciones web dinámicas y con estado.

## Ejercicio Práctico

Realiza el tutorial [Session Management in Java - HttpServlet, Cookies, URL Rewriting - Digital Ocean](https://www.digitalocean.com/community/tutorials/java-session-management-servlet-httpsession-url-rewriting). Coloquen todas las clases dentro de src y que no pertenezcan a ningún paquete, por falicidad y para que les funcione el script de `servlets.java`.

**Entregables**

Archivo war funcional con todos los servlets creados y arhivos creados.

## Referencias

### Principales

- [Session Management in Java - HttpServlet, Cookies, URL Rewriting - Digital Ocean](https://www.digitalocean.com/community/tutorials/java-session-management-servlet-httpsession-url-rewriting)
- [Session Tracking - Jakarta(Java) Servlets - NTU](https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaServlets.html#SessionTracking)


### Complementarios

- [Differences between cookies and sessions?](https://stackoverflow.com/questions/359434/differences-between-cookies-and-sessions)
- [Handling Cookies and a Session in a Java Servlet](https://www.baeldung.com/java-servlet-cookies-session)
- [Session Management in Java using Servlet Filters and Cookies](https://medium.com/@kasunpdh/session-management-in-java-using-servlet-filters-and-cookies-7c536b40448f)

- [Cookies in Servlet - javatpoint](https://www.javatpoint.com/cookies-in-servlet)