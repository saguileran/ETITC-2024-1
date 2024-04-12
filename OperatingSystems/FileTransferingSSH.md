# Tutorial: Uso de SSH para Conectar Servidor y Cliente

## Introducción
SSH (Secure Shell) es un protocolo de red que permite a los usuarios conectarse de forma segura a un servidor remoto a través de una conexión encriptada. En este tutorial, aprenderemos cómo usar SSH para establecer una conexión entre un servidor y un cliente, así como algunas de sus ventajas y aplicaciones en nuestra era digital.

## 1. Conexión SSH
- Para conectarte a un servidor remoto utilizando SSH, utiliza el siguiente comando en la terminal del cliente:
  ```bash
  ssh usuario@host
  ```
  Reemplaza `usuario` con tu nombre de usuario en el servidor y `host` con la dirección IP o nombre de dominio del servidor.

- Si el servidor utiliza un puerto SSH diferente al estándar (22), puedes especificarlo con la opción `-p`:
  ```bash
  ssh -p puerto usuario@host
  ```

- Una vez que ingreses el comando, se te solicitará que ingreses la contraseña del usuario en el servidor. Después de ingresar la contraseña correctamente, se establecerá una conexión SSH.

## 2. Ventajas de SSH
- **Seguridad:** SSH utiliza técnicas de cifrado para proteger la comunicación entre el cliente y el servidor, lo que hace que sea seguro enviar datos sensibles a través de la red.
- **Acceso Remoto:** Permite a los usuarios acceder y administrar servidores remotos desde cualquier ubicación, lo que facilita la administración de sistemas.
- **Autenticación:** SSH utiliza un método de autenticación segura, como la autenticación basada en clave pública/privada o mediante contraseña, para verificar la identidad del usuario.
- **Transferencia de Archivos Segura:** Además de la conexión remota, SSH también permite la transferencia segura de archivos entre el cliente y el servidor a través de herramientas como SCP (Secure Copy) y SFTP (SSH File Transfer Protocol).

## 3. Aplicaciones en Nuestra Era
- **Administración de Servidores:** SSH es ampliamente utilizado por administradores de sistemas para administrar servidores remotos de forma segura y eficiente.
- **Desarrollo Web y de Software:** Los desarrolladores utilizan SSH para acceder a servidores de desarrollo y producción para desplegar y mantener aplicaciones web y de software.
- **Tareas de Automatización:** Se puede utilizar SSH en scripts y tareas automatizadas para realizar operaciones de administración de sistemas de forma remota y segura.
- **Transferencia de Archivos:** La herramienta scp (Secure Copy) de SSH permite la transferencia segura de archivos entre sistemas locales y remotos.
- **Despliegue de Aplicaciones:** SSH se utiliza en procesos de despliegue de aplicaciones para subir archivos, ejecutar comandos de configuración y realizar tareas de implementación en servidores remotos.

## Conclusión
SSH es una herramienta fundamental en el mundo de la informática, que proporciona una forma segura y eficiente de conectarse y administrar servidores remotos. Con sus características de seguridad, accesibilidad remota y capacidades de transferencia de archivos, SSH desempeña un papel crucial en nuestra era digital, tanto para profesionales de TI como para usuarios avanzados.

Este tutorial te ha proporcionado los fundamentos para comenzar a utilizar SSH y comprender su importancia en el contexto actual de la informática. Experimenta con SSH para descubrir su versatilidad y aplicaciones en tu entorno de trabajo o proyecto personal.


# Tutorial: Envío y Recepción de Archivos Usando SSH

## Introducción:
En este tutorial, exploraremos cómo enviar y recibir archivos de forma segura entre dos computadoras utilizando SSH (Secure Shell). SSH proporciona una conexión encriptada segura sobre una red, lo que lo convierte en un método confiable para transferir archivos entre sistemas remotos.

**Prerrequisitos:**
- Dos computadoras con SSH instalado (servidor y cliente) y conectividad de red entre ellas.
- Familiaridad básica con la interfaz de línea de comandos.

#### 1. Enviar Archivos de Local a Remoto:
Para enviar un archivo desde tu computadora local a un servidor remoto, puedes usar el comando `scp`.

```bash
scp /ruta/al/archivo/local usuario@host_remoto:/ruta/destino
```

- Reemplaza `/ruta/al/archivo/local` con la ruta al archivo que deseas enviar.
- Reemplaza `usuario` con tu nombre de usuario en el servidor remoto.
- Reemplaza `host_remoto` con el nombre de host o la dirección IP del servidor remoto.
- Reemplaza `/ruta/destino` con la ruta de destino en el servidor remoto donde deseas copiar el archivo.

**Ejemplo:**
```bash
scp /ruta/al/archivo.txt usuario@192.168.1.100:/home/usuario/documentos/
```

#### 2. Recibir Archivos de Remoto a Local
Para recibir un archivo de un servidor remoto en tu computadora local, también puedes usar el comando `scp`.

```bash
scp usuario@host_remoto:/ruta/al/archivo/remoto /ruta/de/destino
```

- Reemplaza `usuario` con tu nombre de usuario en el servidor remoto.
- Reemplaza `host_remoto` con el nombre de host o la dirección IP del servidor remoto.
- Reemplaza `/ruta/al/archivo/remoto` con la ruta al archivo que deseas recibir.
- Reemplaza `/ruta/de/destino` con la ruta de destino en tu computadora local donde deseas guardar el archivo.

**Ejemplo:**
```bash
scp usuario@192.168.1.100:/home/usuario/documentos/archivo.txt /ruta/a/local/
```

#### 3. Copiar Archivos entre Sistemas Remotos:
También puedes copiar archivos directamente entre dos sistemas remotos utilizando SSH.

```bash
scp usuario1@host_remoto1:/ruta/de/origen usuario2@host_remoto2:/ruta/de/destino
```

- Reemplaza `usuario1` y `usuario2` con los nombres de usuario en los respectivos servidores remotos.
- Reemplaza `host_remoto1` y `host_remoto2` con los nombres de host o las direcciones IP de los servidores remotos.
- Reemplaza `/ruta/de/origen` con la ruta al archivo de origen en el primer servidor remoto.
- Reemplaza `/ruta/de/destino` con la ruta de destino en el segundo servidor remoto.

**Ejemplo:**
```bash
scp usuario1@192.168.1.100:/home/usuario1/archivo.txt usuario2@192.168.2.200:/home/usuario2/
```

## Conclusión
SSH proporciona un método seguro y eficiente para transferir archivos entre computadoras sobre una red. Mediante el uso del comando `scp`, puedes enviar y recibir archivos de forma segura entre tu computadora local y servidores remotos, así como entre sistemas remotos. Este tutorial te ha proporcionado el conocimiento para administrar eficientemente las transferencias de archivos usando SSH en varios escenarios.