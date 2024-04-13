# Tutorial: Operaciones y Relaciones en MySQL

Este tutorial tiene como objetivo aprender los conceptos relacionales básicos de MySQL. Este tutorial se propone en dos partes: ver una clase de Youtube y generar unos códigos.

## Video

#### Álgebra Relacional - operadores derivados (incluye división)

[![alt text](image-1.png)](https://www.youtube.com/watch?v=aeRsupxQ6Qw)


## Introducción

MySQL es ampliamente reconocido como un sistema de gestión de bases de datos relacionales (RDBMS) de gran popularidad que facilita el almacenamiento y manipulación de datos estructurados de manera eficiente. En este tutorial, nos adentraremos en una variedad de operaciones fundamentales de MySQL y comprenderemos cómo definir y gestionar relaciones entre tablas para optimizar la organización y recuperación de la información.

**Aplicaciones Actuales de MySQL:**
MySQL se ha convertido en una piedra angular en numerosas aplicaciones modernas, desde sitios web y aplicaciones empresariales hasta sistemas de gestión de contenido y soluciones en la nube. Su versatilidad y robustez lo hacen ideal para una amplia gama de escenarios, incluyendo el comercio electrónico, la analítica de datos, la gestión de inventario y más.

**Características Destacadas:**
Entre las características más destacadas de MySQL se incluyen su capacidad para manejar grandes volúmenes de datos de manera eficiente, su rendimiento rápido y escalabilidad, así como su amplio soporte para diferentes plataformas y sistemas operativos. Además, MySQL ofrece una gran cantidad de herramientas y funciones avanzadas, como la replicación de datos, la alta disponibilidad, la seguridad robusta y la compatibilidad con estándares industriales.

**Importancia en la Ingeniería de Sistemas:**
En el ámbito de la ingeniería de sistemas, MySQL desempeña un papel crucial al proporcionar una base sólida para el desarrollo y despliegue de aplicaciones y sistemas de información. Su capacidad para gestionar eficientemente datos estructurados garantiza un rendimiento óptimo y una gestión eficaz de la información en entornos empresariales y de producción. Además, su amplia adopción y amplio ecosistema de herramientas y recursos hacen que MySQL sea una habilidad valiosa para los ingenieros de sistemas y profesionales de la tecnología en general.

En resumen, MySQL es una herramienta poderosa y versátil que juega un papel vital en la gestión y manipulación de datos en una amplia variedad de aplicaciones y entornos. Su comprensión y dominio son esenciales para los ingenieros de sistemas que buscan construir sistemas robustos y eficientes en el mundo digital de hoy en día.

## 1. Operaciones Básicas de MySQL

#### a) Crear una Base de Datos
Para crear una nueva base de datos en MySQL, puedes usar el siguiente comando SQL:
```sql
CREATE DATABASE midatabase;
```
Después seleciona la base de datos:
```sql
use midatabase;
```

#### b) Crear una Tabla
Para crear una nueva tabla en una base de datos, puedes utilizar la declaración `CREATE TABLE`:
```sql
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL
);
```

#### c) Insertar Datos
Puedes insertar datos en una tabla utilizando la declaración `INSERT INTO`:
```sql
INSERT INTO usuarios (nombre_usuario, correo_electronico) VALUES ('juan_perez', 'juan@example.com');
```

#### d) Consultar Datos
Para recuperar datos de una tabla, puedes utilizar la declaración `SELECT`:
```sql
SELECT * FROM usuarios;
```

#### e) Actualizar Datos
Puedes actualizar datos existentes en una tabla utilizando la declaración `UPDATE`:
```sql
UPDATE usuarios SET correo_electronico = 'juan.perez@example.com' WHERE id = 1;
```

#### f) Eliminar Datos
Para eliminar datos de una tabla, puedes utilizar la declaración `DELETE FROM`:
```sql
DELETE FROM usuarios WHERE id = 1;
```

## 2. Relaciones en MySQL

#### a) Relación Uno a Uno
En una relación uno a uno, cada registro en una tabla está relacionado exactamente con un registro en otra tabla. Ejemplo:
```sql
DROP TABLE IF EXISTS usuarios; # elimina la tabla

CREATE TABLE perfiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    biografia TEXT
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    perfil_id INT,
    FOREIGN KEY (perfil_id) REFERENCES perfiles(id)
);
```

#### b) Relación Uno a Muchos
En una relación uno a muchos, cada registro en una tabla puede estar relacionado con uno o más registros en otra tabla. Ejemplo:
```sql
CREATE TABLE proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE tareas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion TEXT,
    proyecto_id INT,
    FOREIGN KEY (proyecto_id) REFERENCES proyectos(id)
);
```

#### c) Relación Muchos a Muchos
En una relación muchos a muchos, cada registro en una tabla puede estar relacionado con uno o más registros en otra tabla, y viceversa. Ejemplo:
```sql
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE estudiantes_cursos (
    estudiante_id INT,
    curso_id INT,
    PRIMARY KEY (estudiante_id, curso_id),
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
```

## Conclusión
En este tutorial, hemos cubierto operaciones básicas de MySQL como la creación de bases de datos, tablas, inserción, consulta, actualización y eliminación de datos. Además, exploramos diferentes tipos de relaciones en MySQL, incluyendo uno a uno, uno a muchos y muchos a muchos. Comprender estos conceptos es esencial para diseñar y gestionar bases de datos de manera efectiva en MySQL. Experimenta con estas operaciones y relaciones para obtener una comprensión más profunda de la gestión de bases de datos MySQL.

## Ejercicio: Gestión de Usuarios y Perfiles**

En este ejercicio, crearás una base de datos en MySQL para gestionar usuarios y sus perfiles, aplicando los conceptos aprendidos sobre operaciones básicas y relaciones en MySQL. Puedes utilizar la línea de comandos, workbrench, o visual studio code para excribir los comandos.

#### Pasos:

1. **Creación de la Base de Datos:**
   - Crea una nueva base de datos llamada `gestion_usuarios`.

2. **Creación de las Tablas:**
   - Crea dos tablas: `usuarios` y `perfiles`, utiliza los códigos que ya están en este tutorial y a cada tabla agrega un atributo de tipo string y otro de tipo numérico.
   - Asegúrate de establecer la relación adecuada entre las tablas `usuarios` y `perfiles`.

3. **Inserción de Datos:**
   - Inserta al menos tres registros de usuarios en la tabla `usuarios`.
   - Inserta perfiles correspondientes para cada usuario en la tabla `perfiles`.

4. **Consulta de Datos:**
   - Realiza consultas para obtener la lista de usuarios y sus perfiles almacenados en las tablas.
   - Asegúrate de mostrar la información de manera clara y legible.

5. **Actualización de Datos:**
   - Elige uno de los usuarios y actualiza su dirección de correo electrónico en la tabla `usuarios`.
   - Verifica que la actualización se haya realizado correctamente mediante una consulta.

6. **Eliminación de Datos:**
   - Elimina uno de los perfiles de la tabla `perfiles`.
   - Asegúrate de que la eliminación se refleje adecuadamente en la relación entre las tablas.

7. **Consultas Avanzadas :**
   - Realiza una consulta para obtener la lista de usuarios que no tienen perfil asociado en la tabla `perfiles`.
   - Realiza una consulta para obtener la lista de perfiles que están asociados a usuarios con nombres que comiencen con la letra 'A'.

8. **Desafío Adicional (Opcional):**
   - Implementa una relación muchos a muchos entre usuarios y roles.
   - Crea tablas adicionales según sea necesario y realiza operaciones de inserción, consulta, actualización y eliminación para gestionar la relación.

9. **Creación del diagrama utilizando Workbrench:**
   - Abre Workbrench.
   - Realiza el diagrama EER utilizando ingenieria inversa (database -> reverse engineering o simplemente con ctrl+r).
   - Analiza y organiza las tablas para que las relaciones se vean claras y sin problema.
   - Exporta el diagrama como una iamgen PNG.

Recuerda utilizar correctamente las sentencias MYSQL aprendidas en el tutorial y prestar atención a la integridad referencial entre las tablas. ¡Buena suerte! 

**NOTA:**
Este trabajo debes subirlo al campus a la actividad *Bases de datos relacionales practicas* en un archivo sql o un notebook de sql que funcione correctamente.  Además, no olvides de agregar comentarios a los códigos, antes de cada ejercicio agrega un comentario con el paso correspondiente como se muestra en el siguiente código, y de subir también la imagen del diagrama. 

```sql
# paso numero 1
...
...
# paso numero 2
...
...
```


## Referencias

- [Tutorial de introducción a MySQL - Capítulo 3](https://wangchujiang.com/mysql-tutorial/index.html)
- [MySQL - 14.4 Operators](https://dev.mysql.com/doc/refman/8.3/en/non-typed-operators.html)
- [mysql-tutorial](https://github.com/carlba/mysql-tutorial)
- [MYSQL series](https://towardsdatascience.com/tagged/sql-series)
