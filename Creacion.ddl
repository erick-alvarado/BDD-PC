-- Generado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   en:        2022-03-13 15:28:13 CST
--   sitio:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE asignacion_de_curso (
    id_asignacion        INTEGER NOT NULL,
    año                  DATE NOT NULL,
    ciclo                VARCHAR2(50 CHAR) NOT NULL,
    zona                 NUMBER(2, 2) NOT NULL,
    nota_final_del_curso NUMBER(2, 2) NOT NULL,
    seccion_id_seccion   INTEGER NOT NULL
);

ALTER TABLE asignacion_de_curso ADD CONSTRAINT asignacion_de_curso_pk PRIMARY KEY ( id_asignacion,
                                                                                    seccion_id_seccion );

CREATE TABLE carrera (
    id_carrera INTEGER NOT NULL,
    nombre     VARCHAR2(50 CHAR) NOT NULL,
    unidad     INTEGER NOT NULL
);

ALTER TABLE carrera ADD CONSTRAINT carrera_pk PRIMARY KEY ( id_carrera );

CREATE TABLE curso (
    id_curso           INTEGER NOT NULL,
    nombre             VARCHAR2(100 CHAR) NOT NULL,
    creditos           INTEGER NOT NULL,
    zona_minima        INTEGER NOT NULL,
    nota_de_aprobacion INTEGER NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE curso_asignacion ( 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    asignacion_de_curso_id_asignacion INTEGER NOT NULL,
    asignacion_de_curso_id_seccion    INTEGER NOT NULL,
    curso_id_curso                    INTEGER NOT NULL
);

ALTER TABLE curso_asignacion
    ADD CONSTRAINT relation_20_pk PRIMARY KEY ( asignacion_de_curso_id_asignacion,
                                                asignacion_de_curso_id_seccion,
                                                curso_id_curso );

CREATE TABLE curso_prerrequisito (
    id_prerrequisito        INTEGER NOT NULL,
    codigo                  VARCHAR2(15 CHAR) NOT NULL,
    codigo_de_prerrequisito VARCHAR2(15 CHAR) NOT NULL,
    curso_id_curso          INTEGER,
    curso_id_curso2         INTEGER NOT NULL
);

ALTER TABLE curso_prerrequisito ADD CONSTRAINT curso_prerrequisito_pk PRIMARY KEY ( id_prerrequisito );

CREATE TABLE dia (
    id_dia INTEGER NOT NULL,
    nombre VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL
);

ALTER TABLE dia ADD CONSTRAINT dia_pk PRIMARY KEY ( id_dia );

CREATE TABLE docente (
    id_docente     INTEGER NOT NULL,
    codigo_docente VARCHAR2(50 CHAR) NOT NULL,
    nombre         VARCHAR2(150 CHAR) NOT NULL,
    sueldo         NUMBER(2, 6) NOT NULL
);

ALTER TABLE docente ADD CONSTRAINT docente_pk PRIMARY KEY ( id_docente );

CREATE TABLE edificio (
    id_edificio INTEGER NOT NULL,
    nombre      VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL
);

ALTER TABLE edificio ADD CONSTRAINT edificio_pk PRIMARY KEY ( id_edificio );

CREATE TABLE estudiante (
    id_estudiante    INTEGER NOT NULL,
    no_carnet        INTEGER NOT NULL,
    nombre_completo  VARCHAR2(100 CHAR) NOT NULL,
    ingreso_familiar NUMBER(2, 5) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( id_estudiante );

CREATE TABLE estudiante_asignacionc (
    estudiante_id_estudiante          INTEGER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    asignacion_de_curso_id_asignacion INTEGER NOT NULL,
    asignacion_de_curso_id_seccion    INTEGER NOT NULL
);

ALTER TABLE estudiante_asignacionc
    ADD CONSTRAINT relation_19_pk PRIMARY KEY ( estudiante_id_estudiante,
                                                asignacion_de_curso_id_asignacion,
                                                asignacion_de_curso_id_seccion );

CREATE TABLE inscripcion (
    id_inscripción           INTEGER NOT NULL,
    fecha_de_inscripcion     DATE NOT NULL,
    plan_de_estudio_id_plan  INTEGER NOT NULL,
    estudiante_id_estudiante INTEGER,
    carrera_id_carrera       INTEGER NOT NULL,
    plan_id_plan             INTEGER NOT NULL
);

ALTER TABLE inscripcion ADD CONSTRAINT inscripcion_pk PRIMARY KEY ( id_inscripción,
                                                                    plan_id_plan );

CREATE TABLE pensum (
    id_pensum          INTEGER NOT NULL,
    numero_de_creditos INTEGER NOT NULL,
    nota_de_aprobación INTEGER NOT NULL,
    zona_mínima        INTEGER NOT NULL,
    carrera_id_carrera INTEGER NOT NULL
);

ALTER TABLE pensum ADD CONSTRAINT pensum_pk PRIMARY KEY ( id_pensum );

CREATE TABLE pensum_curso (
    id                  INTEGER NOT NULL,
    pensum_id_pensum    INTEGER NOT NULL,
    curso_id_curso      INTEGER NOT NULL,
    fecha               DATE NOT NULL,
    tipo_id_tipo        INTEGER NOT NULL,
    creditos_necesarios INTEGER NOT NULL
);

ALTER TABLE pensum_curso
    ADD CONSTRAINT pensum_curso_pk PRIMARY KEY ( pensum_id_pensum,
                                                 curso_id_curso,
                                                 id,
                                                 tipo_id_tipo );

CREATE TABLE periodo (
    id_periodo  INTEGER NOT NULL,
    hora_inicio DATE NOT NULL,
    hora_fin    DATE NOT NULL,
    id_dia      INTEGER NOT NULL
);

ALTER TABLE periodo ADD CONSTRAINT periodo_pk PRIMARY KEY ( id_periodo );

CREATE TABLE periono_dia (
    periodo_id_periodo INTEGER NOT NULL,
    dia_id_dia         INTEGER NOT NULL
);

ALTER TABLE periono_dia ADD CONSTRAINT relation_32_pk PRIMARY KEY ( periodo_id_periodo,
                                                                    dia_id_dia );

CREATE TABLE plan (
    id_plan               INTEGER NOT NULL,
    nombre_del_plan       VARCHAR2(150 CHAR) NOT NULL,
    año_inicio            DATE NOT NULL,
    ciclo_inicio_del_plan DATE NOT NULL,
    año_finaliza_plan     DATE NOT NULL,
    ciclo_fin_del_plan    DATE NOT NULL,
    no_de_creditos        INTEGER NOT NULL,
    carrera_id_carrera    INTEGER NOT NULL
);

ALTER TABLE plan ADD CONSTRAINT plan_pk PRIMARY KEY ( id_plan );

CREATE TABLE plan_de_estudio (
    id_plan INTEGER NOT NULL,
    nombre  NUMBER NOT NULL
);

ALTER TABLE plan_de_estudio ADD CONSTRAINT plan_de_estudio_pk PRIMARY KEY ( id_plan );

CREATE TABLE salon (
    id_salon             INTEGER NOT NULL,
    capacidad            INTEGER NOT NULL,
    edificio_id_edificio INTEGER NOT NULL,
    salon_id             NUMBER NOT NULL
);

ALTER TABLE salon ADD CONSTRAINT salon_pk PRIMARY KEY ( salon_id );

CREATE TABLE seccion (
    id_seccion         INTEGER NOT NULL,
    codigo             VARCHAR2(10 CHAR) NOT NULL,
    año                DATE NOT NULL,
    ciclo              VARCHAR2(150 CHAR) NOT NULL,
    docente_id_docente INTEGER,
    curso_id_curso     INTEGER
);

ALTER TABLE seccion ADD CONSTRAINT seccion_pk PRIMARY KEY ( id_seccion );

CREATE TABLE seccion_periodo (
    seccion_id_seccion INTEGER NOT NULL,
    periodo_id_periodo INTEGER NOT NULL
);

ALTER TABLE seccion_periodo ADD CONSTRAINT relation_27_pk PRIMARY KEY ( seccion_id_seccion,
                                                                        periodo_id_periodo );

CREATE TABLE seccion_salon (
    seccion_id_seccion INTEGER NOT NULL,
    salon_salon_id     NUMBER NOT NULL
);

ALTER TABLE seccion_salon ADD CONSTRAINT relation_28_pk PRIMARY KEY ( seccion_id_seccion,
                                                                      salon_salon_id );

CREATE TABLE tipo (
    id_tipo INTEGER NOT NULL,
    nombre  VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL
);

ALTER TABLE tipo ADD CONSTRAINT tipo_pk PRIMARY KEY ( id_tipo );

ALTER TABLE asignacion_de_curso
    ADD CONSTRAINT asignacion_de_curso_seccion_fk FOREIGN KEY ( seccion_id_seccion )
        REFERENCES seccion ( id_seccion );

ALTER TABLE curso_prerrequisito
    ADD CONSTRAINT curso_prerrequisito_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE curso_prerrequisito
    ADD CONSTRAINT curso_prerrequisito_curso_fkv2 FOREIGN KEY ( curso_id_curso2 )
        REFERENCES curso ( id_curso );

ALTER TABLE inscripcion
    ADD CONSTRAINT inscripcion_carrera_fk FOREIGN KEY ( carrera_id_carrera )
        REFERENCES carrera ( id_carrera );

ALTER TABLE inscripcion
    ADD CONSTRAINT inscripcion_estudiante_fk FOREIGN KEY ( estudiante_id_estudiante )
        REFERENCES estudiante ( id_estudiante );

ALTER TABLE inscripcion
    ADD CONSTRAINT inscripcion_plan_de_estudio_fk FOREIGN KEY ( plan_de_estudio_id_plan )
        REFERENCES plan_de_estudio ( id_plan );

ALTER TABLE inscripcion
    ADD CONSTRAINT inscripcion_plan_fk FOREIGN KEY ( plan_id_plan )
        REFERENCES plan ( id_plan );

ALTER TABLE pensum
    ADD CONSTRAINT pensum_carrera_fk FOREIGN KEY ( carrera_id_carrera )
        REFERENCES carrera ( id_carrera );

ALTER TABLE pensum_curso
    ADD CONSTRAINT pensum_curso_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE pensum_curso
    ADD CONSTRAINT pensum_curso_pensum_fk FOREIGN KEY ( pensum_id_pensum )
        REFERENCES pensum ( id_pensum );

ALTER TABLE pensum_curso
    ADD CONSTRAINT pensum_curso_tipo_fk FOREIGN KEY ( tipo_id_tipo )
        REFERENCES tipo ( id_tipo );

ALTER TABLE plan
    ADD CONSTRAINT plan_carrera_fk FOREIGN KEY ( carrera_id_carrera )
        REFERENCES carrera ( id_carrera );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE estudiante_asignacionc
    ADD CONSTRAINT relation_19_asignacion_de_curso_fk FOREIGN KEY ( asignacion_de_curso_id_asignacion,
                                                                    asignacion_de_curso_id_seccion )
        REFERENCES asignacion_de_curso ( id_asignacion,
                                         seccion_id_seccion );

ALTER TABLE estudiante_asignacionc
    ADD CONSTRAINT relation_19_estudiante_fk FOREIGN KEY ( estudiante_id_estudiante )
        REFERENCES estudiante ( id_estudiante );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE curso_asignacion
    ADD CONSTRAINT relation_20_asignacion_de_curso_fk FOREIGN KEY ( asignacion_de_curso_id_asignacion,
                                                                    asignacion_de_curso_id_seccion )
        REFERENCES asignacion_de_curso ( id_asignacion,
                                         seccion_id_seccion );

ALTER TABLE curso_asignacion
    ADD CONSTRAINT relation_20_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE seccion_periodo
    ADD CONSTRAINT relation_27_periodo_fk FOREIGN KEY ( periodo_id_periodo )
        REFERENCES periodo ( id_periodo );

ALTER TABLE seccion_periodo
    ADD CONSTRAINT relation_27_seccion_fk FOREIGN KEY ( seccion_id_seccion )
        REFERENCES seccion ( id_seccion );

ALTER TABLE seccion_salon
    ADD CONSTRAINT relation_28_salon_fk FOREIGN KEY ( salon_salon_id )
        REFERENCES salon ( salon_id );

ALTER TABLE seccion_salon
    ADD CONSTRAINT relation_28_seccion_fk FOREIGN KEY ( seccion_id_seccion )
        REFERENCES seccion ( id_seccion );

ALTER TABLE periono_dia
    ADD CONSTRAINT relation_32_dia_fk FOREIGN KEY ( dia_id_dia )
        REFERENCES dia ( id_dia );

ALTER TABLE periono_dia
    ADD CONSTRAINT relation_32_periodo_fk FOREIGN KEY ( periodo_id_periodo )
        REFERENCES periodo ( id_periodo );

ALTER TABLE salon
    ADD CONSTRAINT salon_edificio_fk FOREIGN KEY ( edificio_id_edificio )
        REFERENCES edificio ( id_edificio );

ALTER TABLE seccion
    ADD CONSTRAINT seccion_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE seccion
    ADD CONSTRAINT seccion_docente_fk FOREIGN KEY ( docente_id_docente )
        REFERENCES docente ( id_docente );

CREATE SEQUENCE Salon_Salon_ID_SEQ 
START WITH 1 
    NOCACHE 
    ORDER ;

CREATE OR REPLACE TRIGGER Salon_Salon_ID_TRG 
BEFORE INSERT ON Salon 
FOR EACH ROW 
WHEN (NEW.Salon_ID IS NULL) 
BEGIN
:new.salon_id := salon_salon_id_seq.nextval;

end;
/



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            22
-- CREATE INDEX                             0
-- ALTER TABLE                             47
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          1
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   7
-- WARNINGS                                 0
