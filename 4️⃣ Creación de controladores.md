# CREA TU PROPIO CONTROLADOR
## Crea una base de datos en Oracle con las siguientes caracteristicas:
* Crea un usuario con nombre: Nombre_practica, por ej: JosueGuinea_practica
* Contraseña del usuario: 12345
## Otorga los privilegios: 
* GRANT CONNECT TO [usuario]
* GRANT ALL PRIVILEGES TO [usuario]
* GRANT RESOURCE TO [usuario]
## Crea una conexión
* Ponle por nombre: TestConnection_Nombre
* Usa el usuario creado
## Crea una pequeña base de datos
* Crea una tabla llamada tbUsuario y consigo agrega tres campos (idUsuario INT PRIMARY KEY, nombre VARCHAR2(35), apellido VARCHAR2(35))
* Agrega la información de tres compañeros.

## Crea un proyecto usando el siguiente enlace:
https://start.spring.io/
  
  1. Crea en la carpeta java/Curso.Java.Curso la carpeta Controller.

![image](https://github.com/user-attachments/assets/e336ee3d-b008-440b-bb07-c04d948bd758)
   
  2. Posteriormente crea una clase dentro de la nueva carpeta, la clase deberá llamarse: UsuarioController
  
![image](https://github.com/user-attachments/assets/f1cc4d1d-0a16-43fa-8987-a603d437d2f9)

## ¿Porque estamos creando controladores? 
Porque los controladores sirven para manejar las URL's, así que mediante una dirección le indicaremos a nuestro programa que archivo se desea ejecutar.

  3. Con el código generado por defecto para la clase UsuarioController, se está indicando que la clase será un controlador pero no basta solo con poner el nombre sino que hay que realizar una anotación para indicarle cual será la función de dicha clase, para ello colocaremos @RestController el cual de forma automática importará una librería (Checa que se haya importado).
![image](https://github.com/user-attachments/assets/b76dae7e-bb3b-4620-a859-c7c185a8ba5d)

  4. Crea una función para indicar que quieres hacer, así mismo con una anotación indica que URL crearás para ejecutar dicha función (observa la linea 9, 10 y 11).
     
![image](https://github.com/user-attachments/assets/3da7341d-0fa5-4685-a05d-a079ebb8ed51)

# Partes de una URL
![image](https://github.com/user-attachments/assets/bc7556f6-1c85-4bdf-9728-4a6d470c9b40)

# Plantilla para practicar la creación de URL y la invocación de funciones
<a href="https://github.com/startbootstrap/startbootstrap-sb-admin-2/archive/gh-pages.zip">Descargar plantilla</a>
