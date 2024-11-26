# CREAR PROYECTO DE SPRING BOOT
## Entrar a la dirección: https://start.spring.io/ para crear el proyecto de Spring Boot
	1. Project: Maven
	2. Language: Java
	3. Spring Boot: 3.4.0
	4. Project Metadata: Definir el nombre del proyecto
	5. Packaging: Jar
	6. Java: JDK 17
	7. Agregar dependencias: Spring Web
 	8. Haz click en Generate, y se descargará un proyecto que guardarás en un ruta de tu preferencia. 
  ![image](https://github.com/user-attachments/assets/ad5c5ef8-37d5-4b98-a37a-9d1706f41e5d)
	9. Descomprime el proyecto y abrelo con IntelliJ Idea y espera a que cargue todos los archivos del proyecto.
 	10. Una vez el proyecto este cargado completamente, observa la siguiente estructura del proyecto.
  
![image](https://github.com/user-attachments/assets/03860e77-907a-445f-8f2a-4d241c0ca8ee)

# A continuación explico que apartados se utilizarán y para que servirán:
	• Carpeta src -> esta contiene dos subcarpetas (main y test)
		• En la carpeta main estarán todos los archivos que se utilizarán en el proyecto, esto puede incluir que internamente main reorganice los archivos en mas carpetas.
			• main contendrá todo el código de nuestro proyecto
			• resources contendrá todos aquellos elementos públicos a los que el usuario podrá acceder, por ej: videos, fotos, imagenes, archivos.html, entre otros.
	• Archivo pom.xml -> en el se contiene la estructura principal del proyecto, este contiene la configuración del proyecto, todas las dependencias, además, hace referencia respecto a la configuración del proeycto cuando se haga la compilación.
