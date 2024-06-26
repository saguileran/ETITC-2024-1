# Configuración del Servidor Ubuntu con Apache 2

## Instalación VM - Ubuntu

El primer paso es que instalen ubuntu en una máquina virutal y habiliten la coenxión por `ssh`. Despues vamos a trasnferir nuestros archivos utilizando `scp`.


## Introducción: Conexión SSH
En esta tarea, aprenderás cómo configurar un servidor Ubuntu con Apache 2 para hospedar varios sitios web utilizando hosts virtuales. Antes de sumergirnos en la configuración de Apache, vamos a establecer una conexión segura con nuestro servidor Ubuntu usando SSH (Secure Shell).

1. Conéctate a tu servidor Ubuntu usando SSH:
   - Abre una terminal en tu máquina local.
   - Usa el siguiente comando para conectarte a tu servidor:
     ```
     ssh nombre_usuario@dirección_ip_servidor
     ```
   - Reemplaza "nombre_usuario" con tu nombre de usuario del servidor y "dirección_ip_servidor" con la dirección IP de tu servidor.
   - Ingresa tu contraseña cuando se te solicite.

## Configuración de Hosts Virtuales en Linux con Apache

1. **Instalación de Apache 2**
   - Apache 2 es un popular software de servidor web de código abierto que alimenta un gran porcentaje de sitios web en Internet. Para instalar Apache 2 en tu servidor Ubuntu, ejecuta los siguientes comandos:
     ```
     sudo apt update
     sudo apt upgrade
     sudo apt install apache2 apache2-doc apache2-utils
     ```

Pueden encontrar más información aca, [Apache Basics Tutorial | How To Install and Configure Apache2](https://www.youtube.com/watch?v=1CDxpAzvLKY).

1. **Configuración de Hosts Virtuales**
   - Apache utiliza hosts virtuales para administrar varios sitios web en un solo servidor. Cada configuración de host virtual especifica los ajustes para un sitio web específico.
   - Navega al directorio sites-available de Apache donde se almacenan los archivos de configuración de host virtual:
     ```
     cd /etc/apache2/sites-available
     ```
   - Crea un nuevo archivo de configuración de host virtual para tu sitio web. Reemplaza "tusitio.com" con tu nombre de dominio real:
     ```
     sudo nano tusitio.com.conf
     ```
   - Dentro del archivo de configuración, agrega el siguiente contenido:
     ```apache
     <VirtualHost *:80>
         ServerName tusitio.com
         ServerAlias www.tusitio.com
         DocumentRoot /var/www/tusitio
         ErrorLog ${APACHE_LOG_DIR}/error.log
         CustomLog ${APACHE_LOG_DIR}/access.log combined
     </VirtualHost>
     ```
     - Reemplaza "tusitio.com" con tu nombre de dominio.
     - `ServerName`: Especifica el nombre de dominio para el host virtual.
     - `ServerAlias`: Especifica nombres de dominio adicionales (si los hay).
     - `DocumentRoot`: Especifica el directorio donde se encuentran los archivos del sitio web.
   - Guarda el archivo de configuración y sal del editor de texto.
   - Habilita la configuración del host virtual:
     ```
     sudo a2ensite tusitio.com.conf
     ```
   - Recarga Apache para aplicar los cambios:
     ```
     sudo systemctl reload apache2
     ```

Esta es una breve introducción a lo que debemos hacer. Vamos a seguir y discutir el siguiente tutorial [How To Set Up Apache Virtual Hosts on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-20-04) o aqui [VirtualHost Examples
](https://httpd.apache.org/docs/2.4/vhosts/examples.html).

## Comparación entre Apache y Node.js para la Implementación Web 

1. **Uso de Node.js para la Implementación Web**
   - Node.js es un entorno de ejecución de JavaScript de código abierto que te permite ejecutar código JavaScript en el lado del servidor. A menudo se utiliza para construir aplicaciones web escalables y eficientes.
   - A diferencia de Apache, que sirve archivos estáticos, Node.js es orientado a eventos y es ideal para construir aplicaciones en tiempo real y con grandes cantidades de datos.

2. **Instalación de Node.js y npm**
   - Node.js viene con un gestor de paquetes llamado npm (Node Package Manager) que simplifica el proceso de instalación y gestión de módulos de Node.js.
   - Instala Node.js y npm en tu servidor Ubuntu ejecutando los siguientes comandos:
     ```
     sudo apt update
     sudo apt install nodejs npm
     ```

3. **Implementación de una Aplicación Node.js**
   - Las aplicaciones Node.js suelen construirse utilizando frameworks como Express.js, que proporciona un conjunto robusto de características para el desarrollo web.
   - Crea un nuevo directorio para tu aplicación Node.js:
     ```
     mkdir miapp
     cd miapp
     ```
   - Inicializa un nuevo proyecto Node.js y crea un archivo package.json:
     ```
     npm init -y
     ```
   - Instala Express.js, un popular framework web para Node.js:
     ```
     npm install express
     ```
   - Crea un archivo app.js con el siguiente contenido:
     ```javascript
     const express = require('express');
     const app = express();

     app.get('/', (req, res) => {
         res.send('¡Hola, Mundo!');
     });

     app.listen(3000, () => {
         console.log('El servidor está corriendo en el puerto 3000');
     });
     ```
   - Ejecuta tu aplicación Node.js:
     ```
     node app.js
     ```

Como ejemplo/ejercicio vamos a instalar el siguiente constructor de páginas web, [VvvebJs](https://github.com/givanz/VvvebJs). Adicional, vamos a utilizar un Heroku. ¿Qué es Heroku? Heroku es una Plataforma como Servicio (PaaS) en la nube basada en contenedores. Los desarrolladores utilizan Heroku para desplegar, gestionar y escalar aplicaciones modernas. Para ello utilizaremos este repositorio [node-js-getting-started
](https://github.com/heroku/node-js-getting-started?tab=readme-ov-file).

## Conclusión
Al completar esta tarea, has obtenido experiencia práctica en la configuración de un servidor Ubuntu con Apache 2 y has aprendido sobre hosts virtuales. Además, has explorado la implementación de aplicaciones web utilizando Node.js y lo has comparado con Apache. Estas habilidades son esenciales para cualquier ingeniero de sistemas o desarrollador web que trabaje con la configuración del servidor y la implementación web.

## Referencias