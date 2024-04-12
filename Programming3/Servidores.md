**Tarea: Configuración del Servidor Ubuntu con Apache 2**


**Introducción: Conexión SSH**
En esta tarea, aprenderás cómo configurar un servidor Ubuntu con Apache 2 para hospedar varios sitios web utilizando hosts virtuales. Antes de sumergirnos en la configuración de Apache, vamos a establecer una conexión segura con nuestro servidor Ubuntu usando SSH (Secure Shell).

1. Conéctate a tu servidor Ubuntu usando SSH:
   - Abre una terminal en tu máquina local.
   - Usa el siguiente comando para conectarte a tu servidor:
     ```
     ssh nombre_usuario@dirección_ip_servidor
     ```
   - Reemplaza "nombre_usuario" con tu nombre de usuario del servidor y "dirección_ip_servidor" con la dirección IP de tu servidor.
   - Ingresa tu contraseña cuando se te solicite.

**Configuración de Hosts Virtuales en Linux con Apache**

2. **Instalación de Apache 2 (5 puntos):**
   - Apache 2 es un popular software de servidor web de código abierto que alimenta un gran porcentaje de sitios web en Internet. Para instalar Apache 2 en tu servidor Ubuntu, ejecuta los siguientes comandos:
     ```
     sudo apt update
     sudo apt install apache2
     ```

3. **Configuración de Hosts Virtuales (25 puntos):**
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

**Comparación entre Apache y Node.js para la Implementación Web**

4. **Uso de Node.js para la Implementación Web (15 puntos):**
   - Node.js es un entorno de ejecución de JavaScript de código abierto que te permite ejecutar código JavaScript en el lado del servidor. A menudo se utiliza para construir aplicaciones web escalables y eficientes.
   - A diferencia de Apache, que sirve archivos estáticos, Node.js es orientado a eventos y es ideal para construir aplicaciones en tiempo real y con grandes cantidades de datos.

5. **Instalación de Node.js y npm (10 puntos):**
   - Node.js viene con un gestor de paquetes llamado npm (Node Package Manager) que simplifica el proceso de instalación y gestión de módulos de Node.js.
   - Instala Node.js y npm en tu servidor Ubuntu ejecutando los siguientes comandos:
     ```
     sudo apt update
     sudo apt install nodejs
     sudo apt install npm
     ```

6. **Implementación de una Aplicación Node.js (20 puntos):**
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

**Conclusión**
Al completar esta tarea, has obtenido experiencia práctica en la configuración de un servidor Ubuntu con Apache 2 y has aprendido sobre hosts virtuales. Además, has explorado la implementación de aplicaciones web utilizando Node.js y lo has comparado con Apache. Estas habilidades son esenciales para cualquier ingeniero de sistemas o desarrollador web que trabaje con la configuración del servidor y la implementación web.