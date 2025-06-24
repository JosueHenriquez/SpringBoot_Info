--SECUENCIAS
CREATE SEQUENCE seq_rol START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_grado START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_fase START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_grupo START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_grupoExpo START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_observacion START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_nota START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_cargo START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_usuario START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_bitacora START WITH 1 INCREMENT BY 1;

--TABLAS
CREATE TABLE tbRol(
    idRol INT PRIMARY KEY,
    rol VARCHAR2(20)
);

COMMENT ON COLUMN tbRol.idRol IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbRol.rol IS 'El rol puede ser alumno, docente, coordinador de CTC.';

CREATE TABLE tbGrado(
    idGrado INT PRIMARY KEY,
    grado VARCHAR2(100)
);

COMMENT ON COLUMN tbGrado.idGrado IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbGrado.grado IS 'Primer año / Segundo año / Tercer año.';

CREATE TABLE tbFase(
    idFase INT PRIMARY KEY,
    nombreFase VARCHAR2(100),
    fechaInicio DATE NULL,
    fechaFin DATE NULL
);

COMMENT ON COLUMN tbFase.idFase IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbFase.nombreFase IS 'Son las etapas del proyecto, defensa de 30%, 50%... y así sucesivamente.';
COMMENT ON COLUMN tbFase.fechaInicio IS 'Fecha de inicio de la fase.';
COMMENT ON COLUMN tbFase.fechaFin IS 'Fecha de fin de la fase.';

CREATE TABLE tbGrupo(
    idGrupo INT PRIMARY KEY,
    grupoTecnico VARCHAR2(3),
    idGrado INT,
    CONSTRAINT FK_idGrado_Grupo FOREIGN KEY (idGrado) REFERENCES tbGrado(idGrado)
);

COMMENT ON COLUMN tbGrupo.idGrupo IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbGrupo.grupoTecnico IS 'Son las diferentes secciones técnicas, 1A, 1B, 2A, 2B.';
COMMENT ON COLUMN tbGrupo.idGrado IS 'Llave foránea con la tabla Grado.';

CREATE TABLE tbGrupoExpo(
    idGrupoExpo INT PRIMARY KEY,
    idGrupo INT,
    codigo VARCHAR2(10),
    nombreProyecto VARCHAR(150) NULL,
    descripcion VARCHAR2(250) NULL,
    CONSTRAINT FK_idGrupo_Grupo FOREIGN KEY(idGrupo) REFERENCES tbGrupo(idGrupo)
);

COMMENT ON COLUMN tbGrupoExpo.idGrupoExpo IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbGrupoExpo.idGrupo IS 'Llave foránea con la tabla GrupoExpo el cual indica a que grupo pertenece el grupo expo.';
COMMENT ON COLUMN tbGrupoExpo.codigo IS 'Código generado por técnico científico.';
COMMENT ON COLUMN tbGrupoExpo.nombreProyecto IS 'Nombre del proyecto definido por los estudiantes.';
COMMENT ON COLUMN tbGrupoExpo.descripcion IS 'Breve descripción de lo que se pretende hacer en el proyecto.';

CREATE TABLE tbObservacion(
    idObservacion INT PRIMARY KEY,
    fecha DATE,
    idGrupoExpo INT,
    prioridad INT,
    estado INT,
    CONSTRAINT FK_GrupoExpo_Observacion FOREIGN KEY (idGrupoExpo) REFERENCES tbGrupoExpo(idGrupoExpo)
);

COMMENT ON COLUMN tbObservacion.idObservacion IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbObservacion.fecha IS 'Fecha en la que se realizó la observación.';
COMMENT ON COLUMN tbObservacion.idGrupoExpo IS 'Grupo expo al que pertenece la observación.';
COMMENT ON COLUMN tbObservacion.prioridad IS '1. Baja / 2. Intermedia / 3. Alta / 4. Urgente';
COMMENT ON COLUMN tbObservacion.estado IS 'Servirá para indicar si el grupo expo se da por enterado.';

CREATE TABLE tbNota(
    idNota INT PRIMARY KEY,
    idGrupoExpo INT,
    fecha DATE,
    idFase INT,
    observacion VARCHAR2(1000),
    CONSTRAINT FK_idGrupoExpo_GrupoExpo FOREIGN KEY (idGrupoExpo) REFERENCES tbGrupoExpo(idGrupoExpo),
    CONSTRAINT FK_Fase_Nota FOREIGN KEY (idFase) REFERENCES tbFase(idFase)
);

COMMENT ON COLUMN tbNota.idNota IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbNota.idGrupoExpo IS 'Llave foránea con la tabla GrupoExpo.';
COMMENT ON COLUMN tbNota.fecha IS 'Fecha en la que se asignó la nota.';
COMMENT ON COLUMN tbNota.idFase IS 'Llave foránea con la tabla Fases, el cual indica a que fase pertenece la nota asignada.';
COMMENT ON COLUMN tbNota.observacion IS 'En caso el docente quiera agregar observación de la nota.';

CREATE TABLE tbCargo(
    idCargo INT PRIMARY KEY,
    Cargo VARCHAR2(25)
);

COMMENT ON COLUMN tbCargo.idCargo IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbCargo.Cargo IS 'Cargo del estudiante (Coordinador, Sub-Coordinador, Tesorero, Secretario, Vocal 1 o Vocal 2), en caso de ser docente será con cargo de Guía.';

CREATE TABLE tbUsuario(
    idUsuario INT PRIMARY KEY,
    nombre VARCHAR2(50),
    apellido VARCHAR2(50),
    idGrupoExpo INT,
    idRol INT,
    correo VARCHAR2(50),
    contrasena VARCHAR(256),
    idCargo INT,
    CONSTRAINT FK_Cargo FOREIGN KEY (idCargo) REFERENCES tbCargo(idCargo),
    CONSTRAINT FK_Rol FOREIGN KEY (idRol) REFERENCES tbRol(idRol),
    CONSTRAINT FK_GrupoExpo FOREIGN KEY (idGrupoExpo) REFERENCES tbGrupoExpo(idGrupoExpo)
);

COMMENT ON COLUMN tbUsuario.idUsuario IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbUsuario.nombre IS 'Nombre del usuario.';
COMMENT ON COLUMN tbUsuario.apellido IS 'Apellidos del usuario.';
COMMENT ON COLUMN tbUsuario.idGrupoExpo IS 'Grupo al que pertenece el usuario.';
COMMENT ON COLUMN tbUsuario.idRol IS 'Rol que el usuario juega dentro del grupo.';
COMMENT ON COLUMN tbUsuario.correo IS 'Correo del usuario, también servirá como credencial para el inicio de sesión.';
COMMENT ON COLUMN tbUsuario.contrasena IS 'Contraseña del usuario, credencial para iniciar sesión.';
COMMENT ON COLUMN tbUsuario.idCargo IS 'Llave foránea con la tabla Cargo.';

CREATE TABLE tbBitaroca(
    idBitacora INT PRIMARY KEY,
    idUsuario INT,
    fecha DATE,
    acuerdos VARCHAR2(1000),
    observacion VARCHAR(1000),
    CONSTRAINT FK_bitacora_usuario FOREIGN KEY(idUsuario) REFERENCES tbUsuario(idUsuario)
);

COMMENT ON COLUMN tbBitaroca.idBitacora IS 'Llave primaria de la tabla.';
COMMENT ON COLUMN tbBitaroca.idUsuario IS 'Llave foránea con la tabla Usuario.';
COMMENT ON COLUMN tbBitaroca.fecha IS 'Fecha en la que se realizó la observación.';
COMMENT ON COLUMN tbBitaroca.acuerdos IS 'Descripción de los acuerdos.';
COMMENT ON COLUMN tbBitaroca.observacion IS 'Asuntos adicional en cuanto al trabajo que realiza cada miembro del grupo.';

--INSERCIONES TBROL
CREATE OR REPLACE FUNCTION get_next_rol_id RETURN NUMBER IS
BEGIN  RETURN seq_rol.NEXTVAL;
END;
/

INSERT ALL
  INTO tbRol VALUES (get_next_rol_id(), 'Estudiante')
  INTO tbRol VALUES (get_next_rol_id(), 'Docente')
SELECT * FROM DUAL;
COMMIT;

--INSERCIONES TBCARGO
CREATE OR REPLACE FUNCTION siguienteValor_Cargo RETURN NUMBER IS
BEGIN  RETURN seq_cargo.NEXTVAL;
END;
/

INSERT ALL
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Docente guía')
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Coordinador')
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Sub coordinador')
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Secretario')
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Tesorero')
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Vocal 1')
INTO tbCargo VALUES (siguienteValor_Cargo(), 'Vocal 2')
SELECT 1 FROM DUAL;
COMMIT;

SELECT * FROM TBCARGO;

--INSERCIONES TBGRADO
CREATE OR REPLACE FUNCTION siguienteValor_grado RETURN NUMBER IS
BEGIN  RETURN seq_grado.NEXTVAL;
END;
/

INSERT ALL
INTO tbGrado VALUES (siguienteValor_grado(), 'Primer Año')
INTO tbGrado VALUES (siguienteValor_grado(), 'Segundo Año')
INTO tbGrado VALUES (siguienteValor_grado(), 'Tercer Año')
SELECT 1 FROM DUAL;
COMMIT;

SELECT * FROM TBGRADO;

--INSERCIONES TBFASE
CREATE OR REPLACE FUNCTION siguienteValor_fase RETURN NUMBER IS
BEGIN  RETURN seq_fase.NEXTVAL;
END;
/

INSERT ALL
INTO tbFase VALUES (siguienteValor_fase(), 'Defensa Anteproyecto.', null, null)
INTO tbFase VALUES (siguienteValor_fase(), 'Defensa avance del 30%', null, null)
INTO tbFase VALUES (siguienteValor_fase(), 'Defensa avance del 50%', null, null)
INTO tbFase VALUES (siguienteValor_fase(), 'Defensa avance del 80%', null, null)
INTO tbFase VALUES (siguienteValor_fase(), 'Defensa avance del 100%', null, null)
SELECT 1 FROM DUAL;
COMMIT;

SELECT * FROM TBFASE;

--INSERCIONES TBGRUPO
CREATE OR REPLACE FUNCTION siguienteValor_grupo RETURN NUMBER IS
BEGIN RETURN seq_grupo.NEXTVAL;
END;
/

SELECT * FROM tbGrado;

INSERT ALL
INTO tbgrupo VALUES (siguienteValor_grupo(), '1A', 1)
INTO tbgrupo VALUES (siguienteValor_grupo(), '1B', 1)
INTO tbgrupo VALUES (siguienteValor_grupo(), '2A', 1)
INTO tbgrupo VALUES (siguienteValor_grupo(), '2B', 1)
INTO tbgrupo VALUES (siguienteValor_grupo(), '1A', 2)
INTO tbgrupo VALUES (siguienteValor_grupo(), '1B', 2)
INTO tbgrupo VALUES (siguienteValor_grupo(), '2A', 2)
INTO tbgrupo VALUES (siguienteValor_grupo(), '2B', 2)
INTO tbgrupo VALUES (siguienteValor_grupo(), '1A', 3)
INTO tbgrupo VALUES (siguienteValor_grupo(), '1B', 3)
INTO tbgrupo VALUES (siguienteValor_grupo(), '2A', 3)
INTO tbgrupo VALUES (siguienteValor_grupo(), '2B', 3)
SELECT 1 FROM DUAL;
COMMIT;

--INSERCIONES TBGRUPOEXPO
CREATE OR REPLACE FUNCTION siguienteValor_grupoExpo RETURN NUMBER IS
BEGIN RETURN seq_grupoExpo.NEXTVAL;
END;
/

SELECT * FROM tbGrupo;

INSERT ALL
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 1, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 1, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 1, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 1, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 1, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 2, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 2, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 2, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 2, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 2, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 3, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 3, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 3, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 3, NULL, NULL, NULL)
INTO tbgrupoexpo VALUES (siguienteValor_grupoExpo(), 3, NULL, NULL, NULL)
SELECT 1 FROM DUAL;
COMMIT;

SELECT * FROM tbGrupoExpo;

--INSERCIONES TBUSUARIO
CREATE OR REPLACE FUNCTION siguienteValor_usuario RETURN NUMBER IS
BEGIN RETURN seq_usuario.NEXTVAL;
END;
/

SELECT * FROM tbCargo;
SELECT * FROM tbRol;
SELECT * FROM tbGrupo;
SELECT * FROM tbGrupoExpo;

INSERT ALL
INTO tbUsuario VALUES (siguienteValor_usuario(), 'Josue Alberto', 'Guinea Henríquez', 1, 2, 'josue_guinea@ricaldone.edu.sv', '$argón2i$v=19$m=1024,t=1,p=1$MTIzNDU2Nzg$B9Mds+peUqXU2xbZ1DwYCA', 7)
INTO tbUsuario VALUES (siguienteValor_usuario(), 'Ricardo Arturo', 'de Paz Nuñez', 2, 2, 'ricardo_depaz@ricaldone.edu.sv', '$argón2i$v=19$m=1024,t=1,p=1$MTIzNDU2Nzg$B9Mds+peUqXU2xbZ1DwYCA', 7)
SELECT 1 FROM DUAL;
COMMIT;

SELECT * FROM tbUsuario;
