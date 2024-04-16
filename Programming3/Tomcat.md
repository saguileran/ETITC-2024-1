# Tomcat

El objetivo de esta lección es proporcionar una comprensión práctica de Apache Tomcat, centrándose en conceptos básicos, configuración del servidor, despliegue de aplicaciones y trabajo con archivos de aplicación.

## 0. Conectarse mediante ssh

Antes de proceder a configurar Tomcat teminemos la práctica del uso de ssh. Para ello intetemos conectarnos a mi computador siguiedo las instrucciones del siguiente video [How to enable SSH on Linux Ubuntu (Easy step by step guide)](https://www.youtube.com/watch?v=Wlmne44M6fQ).

Mi ip es `172.21.12.242` y el usuario es `etitc` con la contraseña *1234567890..*.

```bash
cut -d: -f1 /etc/passwd    # show users
sudo adduser new_username  # create user
nano /etc/sudoers          # edit the user privileges
newuser ALL=(ALL:ALL) ALL  # add this line inside the file sudoers and give root privileges
su - user_name             # to change user from terminal
```

Para mayor información ingresen a [How to Add and Delete Users on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-add-and-delete-users-on-ubuntu-20-04).

Ahora intenten conectarse a el computador de un compañero, para ello primero creen un usuario y asignelen una clave como la de ejmplo u otra. 

## 1. Conceptos Básicos

Apache Tomcat es un servidor web y contenedor de servlets de código abierto desarrollado por la Apache Software Foundation. Se utiliza para ejecutar aplicaciones web Java, incluidos Servlets, JavaServer Pages (JSP) y otras tecnologías Java EE.

## 2. Configuración del Servidor

- Descarga de Tomcat: Visita el sitio web de Apache Tomcat (https://tomcat.apache.org/) y descarga la última versión de Tomcat. 
- Instalación: Extrae el archivo descargado en la ubicación preferida en tu sistema.
- Iniciar Tomcat: Navega al directorio `bin` dentro de la carpeta de instalación de Tomcat y ejecuta el script `startup.bat` (Windows) o `startup.sh` (Unix).
- Acceder a Tomcat: Abre un navegador web y ve a `http://localhost:8080`. Deberías ver la página de bienvenida de Tomcat si el servidor se está ejecutando correctamente.

## 3. Despliegue de Aplicaciones

- Directorio de Despliegue de Aplicaciones: Copia tu aplicación (en forma de archivo .war) al directorio `webapps` dentro de la carpeta de instalación de Tomcat.
- Despliegue Automático: Tomcat despliega automáticamente la aplicación extrayendo su contenido en un directorio con el mismo nombre que el archivo .war (por ejemplo, `myapp.war` se despliega en `webapps/myapp`).
- Despliegue Manual: También puedes desplegar manualmente una aplicación creando un directorio con la ruta de contexto deseada y copiando los archivos de la aplicación en él.

## 4. Trabajo con Archivos de Aplicación

- Formato de Archivo .war: El archivo .war (Web Archive) es un formato estándar utilizado para empaquetar una aplicación web en Java. Contiene todos los archivos necesarios (JSP, HTML, clases de servlet, bibliotecas) requeridos para ejecutar la aplicación.
- Estructura: Un archivo .war típicamente incluye un directorio `WEB-INF`, que contiene el descriptor de despliegue web.xml, directorio de clases (para clases de servlet), y directorio de librerías (para bibliotecas).

![Tomcat directories structure](https://cdn-images-1.medium.com/v2/resize:fit:1600/1*mDgu59erV4wtpts4DtLWeg.jpeg)

## Ejercicio Práctico

1. **Configuración del Servidor Tomcat:**
   - Descarga e instala Apache Tomcat en tu sistema.
   - Inicia el servidor Tomcat utilizando el script de inicio.
   - Accede a la página de bienvenida de Tomcat en tu navegador web.
  
   En Windows esta instalación es sencilla y rápida pero vamos a relizarla en linux, para ello sigan el tutorial [How To Install Apache Tomcat 10 on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-10-on-ubuntu-20-04) y modifiquen la descargar por el comando

```bash
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.20/bin/apache-tomcat-10.1.20.tar.gz
```

2. **Despliegue de una Aplicación:**
   - Crea una aplicación web simple (por ejemplo, una aplicación JSP que muestre "¡Hola, Mundo!").
   - Empaqueta la aplicación en un archivo .war.
   - Copia el archivo .war a el directorio `webapps` de tu instalación de Tomcat.
   - Accede a la aplicación desplegada en tu navegador web utilizando la URL correspondiente (por ejemplo, `http://localhost:8080/myapp`).

3. **Exploración de Archivos de Aplicación:**
   - Navega al directorio donde se desplegó la aplicación (`webapps/myapp`).
   - Explora el contenido del archivo .war, incluido el directorio `WEB-INF` y su contenido.

**Conclusión**
Este ejercicio práctico proporciona experiencia práctica con Apache Tomcat, cubriendo la configuración básica, el despliegue de aplicaciones y el trabajo con archivos de aplicación. Experimentar con estos conceptos mejorará tu comprensión del desarrollo de aplicaciones web utilizando Tomcat.

## Referencias

#### Guias Tomcat

- [Getting Started With Apache Tomcat](https://dzone.com/refcardz/getting-started-with-apache-tomcat)
- [Documentation Index](https://tomcat.apache.org/tomcat-10.0-doc/index.html)
- [Mastering Apache Tomcat : A Comprehensive Guide For Webserver Setup](https://www.youtube.com/watch?v=c7qZAL1bHi0)
- [Tomcat - A Minimalistic User's Guide](https://tomcat.apache.org/tomcat-3.2-doc/uguide/tomcat_ug.html)

#### Complementos

- [Professional-Java-for-Web-Applications](https://github.com/sergiy-naumovych/Professional-Java-for-Web-Applications)
- [3. DEPLOYMENT ORGANIZATION](https://tomcat.apache.org/tomcat-3.2-doc/appdev/deployment.html)
- [Java Webapps Tutorial](https://cs.lmu.edu/~ray/notes/jw/)
