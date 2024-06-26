# Parcial Programación III
---

Este parcial evalua los conceptos aprendidos en la materia de programación 3 cuyos resultados de aprendizajes (RAC) son:

- **RAC1**
  - Realiza construcción de front-end adaptables de sitios web
  - Emplea instrucciones html para la creación de sitios web
  - Maqueta sitios web empleando CSS y javascript
- **RAC2**
  - Escribe programas del lado del servidor usando lenguaje Java
  - Revisa la ejecución del programa desde un navegador
  - Aplica en la programación los componentes de la librería Jakarta EE
- **RAC3**. 
  - Desarrolla aplicaciones Web integrales y adaptables
  - Desarrolla aplicaciones web empleando el patron MVC
  - Utiliza etiquetas JSP y JSF para el desarrollo de las aplicaciones web.

Para esta actividad todos los puntos tienen una duración de 40 minutos y cada uno vale 1/3 de la nota, cada uno vale 1.67.

>[!TIP]
>Crear un archivo word con pantallazos que demuestren que las tareas que realizadas funcionan.

## Web Estática

La primera actividad es pasar la carta anexada, Letter.pdf, a HTML, CSS, y JavaScript a una página web estatica que debe contener los siguientes requisitos:

|            **HTML**            |          **CSS**         |                              **JavaScript**                             |
|:------------------------------:|:------------------------:|:-----------------------------------------------------------------------:|
| Titulo y encabezados           | Color de letra y fondo   | Función                                                                  |
| Elementos div o span                          | Estilo y tipo de letra   | Objeto                                                                  |
| Enlaces y listas                        | Identificadores y clases | Ciclo for, if, if else, o while                                         |
| Imagenes, vídeo, mapa, o audio | Estilo de imagen         | Agregar, modifical, y eliminar partes del código  Html y Css usando DOM |
| Alineación de texto            |Caja: bordes, margenes, rellenos                           | Eventos                                                                 |


Como sugierencia varios puntos se puede hacer al mismo tiempo, por ejemplo se puede colocar la fecha de la carta usando JavaScript y que al mismo tiempo el script de JS agregue la fecha y un saludo basado en la hora, es decir, si es tarde que diga la fecha y un buenas tardes, si es noche que diga buenas noches. Sin embargo, eres libre de hacer lo que prefieras.

## Web Dinámica

Utilizando el servidor de aplicaciones preferido (Tomcat, Wildfly, o Glassfish) y el IDE de gusto (Eclipse, Netbeans, o vía terminal) crea una página web dinámica que utilice servlets y Java Server Pages (JSP). Primero debes configurar el servidor y después crear la aplicación. 


>[!NOTE]
>*Ten cuidado con la versión que instalas del servidor y con la versión de java, los códigos aqui presentes utilizan jakarta (que reemplaza javax) y comilla triple que es código que funciona para versiones superiores a la 15. Los códigos funcionan para una versión menor de java pero debes hacer algunos unos ajustes.*

Después de crear la aplicación y sus carpetas, agrega un archivo de configuración para la aplicación, aca dejo un emeplo básico que se puede hacer pero toca personalizarlo.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns = "https://jakarta.ee/xml/ns/jakartaee"
         xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation = "https://jakarta.ee/xml/ns/jakartaee
         https://jakarta.ee/xml/ns/jakartaee/web-app_6_0.xsd"
         version = "6.0"
         metadata-complete = "false">

    <description>Descipción</description>
    <display-name>Nombre de la aplicaicón</display-name>
    <request-character-encoding>UTF-8</request-character-encoding>

    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
    </welcome-file-list>

</web-app>
```

Ahora crea y adiciona el siguiente servlet. Debe llamarse `WelcomeServlet` y visualizarse con `welcome`. **Debes agregar código a este servlet y colocar más funcionalidades, no solo copiar y pegarlo.**

```java
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

public class ClassName extends HttpServlet {

   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {

      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();

      out.println("""
            <!DOCTYPE html>
            <html>
            <head><title>Titulo</title></head>
            <body>
              <h1>Agrega texto aqui!</h1>
              <p>Request URI: %s</p>
              <p>Protocol: %s</p>
              <p>Remote Address: %s</p>
              <p>A Random Number: <strong>%f</strong></p>
            </body>
            </html>
            """.formatted(request.getRequestURI(), request.getProtocol(),
                          request.getRemoteAddr(), Math.random()));
      out.close();

      System.out.println("Holas!");
   }
}
```

Agrega el servlet al archivo de configuración de la aplicación, puedes utiliza la siguiente plantilla o si conoces otra forma puedes usarla.

```xml
  <servlet>
    <servlet-name>ServletName</servlet-name>
    <servlet-class>ServletClassName</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>ServletName</servlet-name>
    <url-pattern>/url</url-pattern>
  </servlet-mapping>
```

Finalmente, agrega un archivo jsp que utilice funciones, objetos, y variables de java. Como estas escribiendo en JSP no olvides de agregar directivas, comentarios, scriptles, expresiones, y/o declaraciones. 

## EJB o JSTL

Para el punto final puedes agregar un EJB o un JSTL a la aplicación del archivo anterior. Aca puedes agregar reglas de negocios (EJB) o tags de JavaServer Pages Standard Tag Library (JSTL) que agreguen funcionalidades a la aplicación ya creada. Otra posibilidad es agregar una capa de conexión a la base de datos para la aplicación usando JSTL SQL, sin embargo esta opción también puede involucrar la instalación y configuración de SQL por lo cuál podría tardar más tiempo si no se ha hecho antes.

# Entregables

>[!IMPORTANT]
>**Si sacas códigos o archivos de algún lugar debes mencionar de donde se sacaron y agregar los enlaces, si los archivos son lo mismo que de donde se sacoron el punto no tendrá validez.**

Puedes entregar todos los archivos en un zip y enviarlos a mi correo saguileran@itc.edu.co. Para cada punto los entregables son:

1. Códigos HTML, CSS, y JavaScript
2. Un archivo WAR que empaquete toda la aplicación creada con los servlets y JSP.
3. Un archivoo WAR con los códigos EBJ o JSTL, puedes usar la misma aplicación del punto anterior.

Para los pasos 2 y 3 puedes enviar el mismo WAR pero debes mencionar si así lo hiciste o si los enviaste separados. Adicionalmente agrega un archivo word con pantallazos de que funciona lo que hiciste.

# Calificación

El parcial será calificado basado en la completitud y calidad de los puntos.