# ¿Qué hacer si al ejecutar el comando spring-boot:run este no levanta los servicios?
  1. Verifica que estas en la versión correcta de Java, es decir, que la versión del JDK sea el correcto para el proyecto, para ello haz click en la terminal de IntelliJ y escribe Java -version y aparecerá la versión de Java que tienes instalado.
![image](https://github.com/user-attachments/assets/90d96f93-a2fa-45dd-a3a3-0f3cf43682c3)
  2. Otro error podría ser que el puerto 8080 ya está siendo utilizado, para resolver este problema dirigite a la terminal y escribe: netstat -ano | findstr LISTENING | findstr 8080, este comando servirá para ver todos los procesos que se están ejecutando en el puerto 8080.
![image](https://github.com/user-attachments/assets/d147263f-a92a-45ec-960e-35d2ddecd518)
  3. Para destruir esos procesos debemos escribir el comando: taskkill -PID [NUMERO DE ULTIMA COLUMNA] -F, por ejemplo, observa en la imagen anterior que el número del PID es 1896, entonces para destruir ese proceso el código quedaría de la siguiente manera: taskkill -PID 1896 -F
