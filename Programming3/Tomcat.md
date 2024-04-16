**Lección: Ejercicio Práctico sobre Tomcat**

**Objetivo:**
El objetivo de esta lección es proporcionar una comprensión práctica de Apache Tomcat, centrándose en conceptos básicos, configuración del servidor, despliegue de aplicaciones y trabajo con archivos de aplicación.

**1. Conceptos Básicos:**
Apache Tomcat es un servidor web y contenedor de servlets de código abierto desarrollado por la Apache Software Foundation. Se utiliza para ejecutar aplicaciones web Java, incluidos Servlets, JavaServer Pages (JSP) y otras tecnologías Java EE.

**2. Configuración del Servidor:**
- Descarga de Tomcat: Visita el sitio web de Apache Tomcat (https://tomcat.apache.org/) y descarga la última versión de Tomcat.
- Instalación: Extrae el archivo descargado en la ubicación preferida en tu sistema.
- Iniciar Tomcat: Navega al directorio `bin` dentro de la carpeta de instalación de Tomcat y ejecuta el script `startup.bat` (Windows) o `startup.sh` (Unix).
- Acceder a Tomcat: Abre un navegador web y ve a `http://localhost:8080`. Deberías ver la página de bienvenida de Tomcat si el servidor se está ejecutando correctamente.

**3. Despliegue de Aplicaciones:**
- Directorio de Despliegue de Aplicaciones: Copia tu aplicación (en forma de archivo .war) al directorio `webapps` dentro de la carpeta de instalación de Tomcat.
- Despliegue Automático: Tomcat despliega automáticamente la aplicación extrayendo su contenido en un directorio con el mismo nombre que el archivo .war (por ejemplo, `myapp.war` se despliega en `webapps/myapp`).
- Despliegue Manual: También puedes desplegar manualmente una aplicación creando un directorio con la ruta de contexto deseada y copiando los archivos de la aplicación en él.

**4. Trabajo con Archivos de Aplicación:**
- Formato de Archivo .war: El archivo .war (Web ARchive) es un formato estándar utilizado para empaquetar una aplicación web en Java. Contiene todos los archivos necesarios (JSP, HTML, clases de servlet, bibliotecas) requeridos para ejecutar la aplicación.
- Estructura: Un archivo .war típicamente incluye un directorio `WEB-INF`, que contiene el descriptor de despliegue web.xml, directorio de clases (para clases de servlet), y directorio de librerías (para bibliotecas).

**Ejercicio Práctico:**
1. **Configuración del Servidor Tomcat:**
   - Descarga e instala Apache Tomcat en tu sistema.
   - Inicia el servidor Tomcat utilizando el script de inicio.
   - Accede a la página de bienvenida de Tomcat en tu navegador web.

2. **Despliegue de una Aplicación:**
   - Crea una aplicación web simple (por ejemplo, una aplicación JSP que muestre "¡Hola, Mundo!").
   - Empaqueta la aplicación en un archivo .war.
   - Copia el archivo .war a el directorio `webapps` de tu instalación de Tomcat.
   - Accede a la aplicación desplegada en tu navegador web utilizando la URL correspondiente (por ejemplo, `http://localhost:8080/myapp`).

3. **Exploración de Archivos de Aplicación:**
   - Navega al directorio donde se desplegó la aplicación (`webapps/myapp`).
   - Explora el contenido del archivo .war, incluido el directorio `WEB-INF` y su contenido.

**Conclusión:**
Este ejercicio práctico proporciona experiencia práctica con Apache Tomcat, cubriendo la configuración básica, el despliegue de aplicaciones y el trabajo con archivos de aplicación. Experimentar con estos conceptos mejorará tu comprensión del desarrollo de aplicaciones web utilizando Tomcat.
