# ETITC 2024 - 1

---

Documents and assignments designed by a professor of Systems Engineering at [Escuela Tecnológica Instituto Técnico Central (ETITC)](https://etitc.edu.co/es/) for the courses Databases I, Data Structures, Operating Systems I, and Programming 3, taught in the first semester of 2024.

Here you can find all the created materials, including guides, tutorials, exams, and more. Each course consists of three periods, each contributing to the final grade with percentages of 35%, 35%, and 30%, respectively. The first and second period grades are based on assignments and exams for all courses. The third period includes a final exam and a group project for the courses Databases I and Programming 3. For Data Structures and Operating Systems, the third period involves practical exercises instead of projects.

The lectures are designed and created using both [ChatGPT](https://chatgpt.com/) and VARIOUS [references](#references) together. Additionally, many lectures include online references that complement the guides and provide practical examples and code.

## Table of Content
- [ETITC 2024 - 1](#etitc-2024---1)
  - [Table of Content](#table-of-content)
  - [Courses Topics and Exams](#courses-topics-and-exams)
  - [Articulation Project (PAR)](#articulation-project-par)
    - [Programming 3](#programming-3)
    - [Databases I](#databases-i)
  - [References](#references)
    - [Programming 3](#programming-3-1)
    - [Databases I](#databases-i-1)
    - [Data Structure](#data-structure)
    - [Operating Systems I](#operating-systems-i)


## Courses Topics and Exams

Since the carrer is thinked to web developers the programming courses are teaching in java. The repo structure consist of one folder for each course and all courses have at least two folders:

- **Lectures**: Contains all the course material and the courses topics which are organized by order of study.
- **Exams**: Three exams and solutions for each period.

>[!NOTE]
>The course of Data Structure is taugh with java. To execute the notebooks you can use [Google Colab](https://colab.research.google.com/) or the Visual Studio Code (VSC) [java extension](https://code.visualstudio.com/docs/java/java-tutorial) where you do not have to add any cell while for Google Colab you must enter and execute the next script at the begining to install the java kernel:
>
>```python
>%%sh
># Install java kernel
>wget -q https://github.com/SpencerPark/IJava/>releases/download/v1.3.0/ijava-1.3.0.zip
>unzip -q ijava-1.3.0.zip
>python install.py
>
># Install proxy for the java kernel
>wget -qO- https://gist.github.com/SpencerPark/e2732061ad19c1afa4a33a58cb8f18a9/archive/b6cff2bf09b6832344e576ea1e4731f0fb3df10c.tar.gz | >tar xvz --strip-components=1
>python install_ipc_proxy_kernel.py --kernel=java >--implementation=ipc_proxy_kernel.py
>```


## Articulation Project (PAR)

In the case of Programming 3 and Databases I, the goal of the courses is to create or continue an articulating project that incorporates all the topics studied throughout the course. The course spans three months, and the projects are presented at the end of the semester. The guidelines and evaluation criteria are detailed in the Project Guidelines files for each course.

The projects are located on GitHub, and they include:

### Programming 3

[Guide Lines](<Programming 3/Lectures/Projec Guide Lines.md>)

- [Futbol: Jugadores y Partidos](https://github.com/FabianSuarez29/Proyecto_Articulador_Programacion_III). Andrés Gerena, Camila Mosquera, Fabián Suarez
- [Formula 1](https://github.com/jorgepajarit/Proyecto-Articulador). Jorge Pajarito, Cristian Rivera, Juan Castañeda
- [Hoteles](https://github.com/cemarinr/ProyectoHoteles). Damina Naranjo. Edison Forero, Carlos Marin.
- [Correo Electrónico](https://github.com/RuthlessD/parcial_1). Manuel Zuñiga, Sergio Andrade.
- [Tienda de Videojuegos: Gamelab](https://github.com/NicoValVilla/Programacion3-Proyecto/). Leon Rocha, Camilo Urrego, Nicolas Valdivia

### Databases I

[Guide Lines](<Data Bases I/Lectures/Project Guide Lines.md>)

- [Cantos de Aves](https://github.com/juliancgarzon/ProyectoPAR/). Julian Garzon, Cristian Escobar
- [Análisis de Trabajo Seguro](https://github.com/mandres1987/proyectoPAR/) Miguel Goyeneche, Michell Sanchez, David Borda.
- [ConstrucEtitc.sas](https://github.com/Ingcarfer/ProyectoPAR). Oscar Villalobos, Carlos Fernandez, Jhon Ramos.
- [Protsegurity](https://github.com/Protxion/Proyecto-protsegurity) Jhon Buitrago, Santiago Sandoval
- [Ventas de una Empresa](https://github.com/Onhofre/Ventas-de-una-empresa)Alejandro Salazar , Santiago Onofre, Maicol Polo
- [MiniHere](https://github.com/JeXps/ProyectoPAR/). Jerónimo Duque, Juan Espinel

---

## References

### Programming 3
- Coward, Danny. *Java EE 7. The big picture.* McGraw-Hill Education, séptima edición (2015).
- Joel Murach, Michael Urban. *Murach’s Java Servlets and JSP*. Mike Murach & Associates, tercera edición (2014).
- Duckett, Jon_Moore, Jack_Ruppert, Gilles. *JavaScript and JQuery_ Interactive Front-End Web Development*. Wiley (2014).
- Jon Duckett. *HTML & CSS Design and Build Websites*. Wiley (2011).
- Vivek Chopra, Jon Eaves, Rupert Jones, Sing Li, John T. Bell. *Beginning JavaServer Pages* Wrox (2005).

### Databases I

- Abraham Silberschatz, Henry Korth y S. Sudarshan. *Database System Concepts*. McGraw-Hill Education 7ma edición, 2020. 
- Ramez Elmasri y Shamkant Navathe. *Fundamentals of Database Systems*. Perason séptima edición, 2016. 
- Thomas Pettit y Scott Cosentino, *The MySQL Workshop: A practical guide to working with data and managing databases with MySQL*. Packt Publishing, 2022. 
- Raghu Ramakrishnan, Johannes Gehrke. *Database Management Systems*. McGraw-Hill Education (2018).


### Data Structure 

- Y. Daniel Liang. *Introduction to Java Programming and Data Structures, Comprehensive Version*. Addison Wesley. Edición 12 (2019).
- Koffman, Elliot B.; Wolfgang, Paul A. T. *Data structures : abstraction and design using Java*. Wiley. Tercera edición (2016).
- James T. Streib,Takako Soma. *Guide to Data Structures: A Concise Introduction Using Java*. Springer International Publishing. Primera edición (2017).
- Michael T. Goodrich, Roberto Tamassia, y Michael H. Goldwasser. *Data Structures and Algorithms in Java™*. Wiley sexta edición, 2014.

### Operating Systems I
- Andrew S. Tanenbaum, Herbert Bos, *Modern Operating Systems-Pearson*. Person quinta edición, (2023)
- Abraham Silberschatz, Greg Gagne, Peter B. Galvin, *Operating System Concepts*. Wiley décima edición (2018).
- Andrew Tanenbaum, Herbert Bos. *Modern Operating Systems*. Global Edition-Pearson quinta edición (2024).