# Catálogo de dependecias
# Dependencia jakarta: sirve para utilizar anotaciones de transacción con la base de datos
<dependency>
	<groupId>jakarta.transaction</groupId>
	<artifactId>jakarta.transaction-api</artifactId>
	<version>2.0.1</version>
</dependency>

<dependency>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>

<!--Dependecia para agregar anotaciones como @Getter y @Setter-->
<!--Instala posteriormente el plugin de Lombok para poder utilizar los metodos
Getter y Setter: File > Settings > Plugins-->
<dependency>
	<groupId>org.projectlombok</groupId>
	<artifactId>lombok</artifactId>
	<version>1.18.36</version>
	<scope>provided</scope>
</dependency>

# Dependencia para cargar Driver de Oracle
<dependency>
	<groupId>com.oracle.database.jdbc</groupId>
	<artifactId>ojdbc11</artifactId>
	<scope>runtime</scope>
</dependency>
