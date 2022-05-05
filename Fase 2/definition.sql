-- Generated by Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   at:        2022-05-04 21:27:00 CST
--   site:      Oracle Database 21c
--   type:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE
CREATE TABLE carrera (
    carrera INTEGER NOT NULL,
    nombre  VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE carrera ADD CONSTRAINT carrera_pk PRIMARY KEY ( carrera );

CREATE TABLE estudiante (
    carnet          INTEGER NOT NULL,
    nombre          VARCHAR2(50 CHAR) NOT NULL,
    ingresofamiliar NUMBER(10, 2) NOT NULL,
    fechanacimiento DATE NOT NULL
);

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( carnet );

CREATE TABLE curso (
    codigo INTEGER NOT NULL,
    nombre VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( codigo );

CREATE TABLE inscrito (
    carrera           INTEGER NOT NULL,
    carnet            INTEGER NOT NULL,
    fechainscripcion  DATE NOT NULL,
    estudiante_carnet INTEGER NOT NULL,
    carrera_carrera   INTEGER NOT NULL
);

ALTER TABLE inscrito
    ADD CONSTRAINT inscrito_pk PRIMARY KEY ( carrera,
                                             carnet,
                                             estudiante_carnet,
                                             carrera_carrera );







CREATE TABLE asignacion (
    zona                    INTEGER NOT NULL,
    nota                    INTEGER NOT NULL,
    estudiante_carnet       INTEGER NOT NULL,
    seccion_seccion         VARCHAR2(2 CHAR) NOT NULL,
    seccion_codigo          INTEGER NOT NULL,
    seccion_catedratico_cat INTEGER NOT NULL
);

ALTER TABLE asignacion
    ADD CONSTRAINT asignacion_pk PRIMARY KEY ( estudiante_carnet,
                                               seccion_seccion,
                                               seccion_codigo,
                                               seccion_catedratico_cat );



CREATE TABLE catedratico (
    cat           INTEGER NOT NULL,
    nombre        VARCHAR2(50 CHAR) NOT NULL,
    sueldomensual NUMBER(5, 2) NOT NULL
);

ALTER TABLE catedratico ADD CONSTRAINT catedratico_pk PRIMARY KEY ( cat );



CREATE TABLE dia (
    dia    INTEGER NOT NULL,
    nombre VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE dia ADD CONSTRAINT dia_pk PRIMARY KEY ( dia );



CREATE TABLE horario (
    seccion_seccion         VARCHAR2(2 CHAR) NOT NULL,
    seccion_codigo          INTEGER NOT NULL,
    seccion_catedratico_cat INTEGER NOT NULL,
    periodo_periodo         INTEGER NOT NULL,
    dia_dia                 INTEGER NOT NULL,
    salon_edificio          VARCHAR2(10 CHAR) NOT NULL,
    salon_salon             VARCHAR2(10 CHAR) NOT NULL
);

CREATE UNIQUE INDEX horario__idx ON
    horario (
        salon_edificio
    ASC,
        salon_salon
    ASC );

ALTER TABLE horario
    ADD CONSTRAINT horario_pk PRIMARY KEY ( seccion_seccion,
                                            seccion_codigo,
                                            seccion_catedratico_cat,
                                            periodo_periodo,
                                            dia_dia );



CREATE TABLE pensum (
    obligatoriedad       CHAR(1 CHAR) NOT NULL,
    numcreditos          INTEGER NOT NULL,
    notaaprobacion       INTEGER NOT NULL,
    zonaminima           INTEGER NOT NULL,
    credprerreq          INTEGER NOT NULL,
    plan_plan            VARCHAR2(10 CHAR) NOT NULL,
    plan_carrera_carrera INTEGER NOT NULL,
    curso_codigo         INTEGER NOT NULL
);

ALTER TABLE pensum
    ADD CONSTRAINT pensum_pk PRIMARY KEY ( plan_plan,
                                           plan_carrera_carrera,
                                           curso_codigo );

CREATE TABLE periodo (
    periodo    INTEGER NOT NULL,
    horainicio DATE NOT NULL,
    horafinal  DATE NOT NULL
);

ALTER TABLE periodo ADD CONSTRAINT periodo_pk PRIMARY KEY ( periodo );

CREATE TABLE plan (
    plan              VARCHAR2(10 CHAR) NOT NULL,
    nombre            VARCHAR2(50 CHAR) NOT NULL,
    a�oinicial        VARCHAR2(4 CHAR) NOT NULL,
    cicloinicial      VARCHAR2(50 CHAR) NOT NULL,
    a�ofinal          VARCHAR2(4 CHAR) NOT NULL,
    ciclofinal        VARCHAR2(50 CHAR) NOT NULL,
    numcreditoscierre INTEGER NOT NULL,
    carrera_carrera   INTEGER NOT NULL
);

ALTER TABLE plan ADD CONSTRAINT plan_pk PRIMARY KEY ( plan,
                                                      carrera_carrera );

CREATE TABLE prerreq (
    curso_codigo   INTEGER NOT NULL,
    pensum_plan    VARCHAR2(10 CHAR) NOT NULL,
    pensum_carrera INTEGER NOT NULL,
    pensum_codigo  INTEGER NOT NULL
);

ALTER TABLE prerreq
    ADD CONSTRAINT prerreq_pk PRIMARY KEY ( curso_codigo,
                                            pensum_plan,
                                            pensum_carrera,
                                            pensum_codigo );

CREATE TABLE salon (
    edificio                        VARCHAR2(10 CHAR) NOT NULL,
    salon                           VARCHAR2(10 CHAR) NOT NULL,
    capacidad                       INTEGER NOT NULL,
    horario_seccion_seccion         VARCHAR2(2 CHAR) NOT NULL,
    horario_seccion_codigo          INTEGER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    horario_seccion_catedratico_cat INTEGER NOT NULL,
    horario_periodo_periodo         INTEGER NOT NULL,
    horario_dia_dia                 INTEGER NOT NULL
);

CREATE UNIQUE INDEX salon__idx ON
    salon (
        horario_seccion_seccion
    ASC,
        horario_seccion_codigo
    ASC,
        horario_seccion_catedratico_cat
    ASC,
        horario_periodo_periodo
    ASC,
        horario_dia_dia
    ASC );

ALTER TABLE salon ADD CONSTRAINT salon_pk PRIMARY KEY ( edificio,
                                                        salon );

CREATE TABLE seccion (
    seccion         VARCHAR2(2 CHAR) NOT NULL,
    a�o             VARCHAR2(4 CHAR) NOT NULL,
    ciclo           VARCHAR2(50 CHAR) NOT NULL,
    curso_codigo    INTEGER NOT NULL,
    catedratico_cat INTEGER NOT NULL
);

ALTER TABLE seccion
    ADD CONSTRAINT seccion_pk PRIMARY KEY ( seccion,
                                            curso_codigo,
                                            catedratico_cat );

ALTER TABLE asignacion
    ADD CONSTRAINT asignacion_estudiante_fk FOREIGN KEY ( estudiante_carnet )
        REFERENCES estudiante ( carnet );

ALTER TABLE asignacion
    ADD CONSTRAINT asignacion_seccion_fk FOREIGN KEY ( seccion_seccion,
                                                       seccion_codigo,
                                                       seccion_catedratico_cat )
        REFERENCES seccion ( seccion,
                             curso_codigo,
                             catedratico_cat );

ALTER TABLE horario
    ADD CONSTRAINT horario_dia_fk FOREIGN KEY ( dia_dia )
        REFERENCES dia ( dia );

ALTER TABLE horario
    ADD CONSTRAINT horario_periodo_fk FOREIGN KEY ( periodo_periodo )
        REFERENCES periodo ( periodo );

ALTER TABLE horario
    ADD CONSTRAINT horario_salon_fk FOREIGN KEY ( salon_edificio,
                                                  salon_salon )
        REFERENCES salon ( edificio,
                           salon );

ALTER TABLE horario
    ADD CONSTRAINT horario_seccion_fk FOREIGN KEY ( seccion_seccion,
                                                    seccion_codigo,
                                                    seccion_catedratico_cat )
        REFERENCES seccion ( seccion,
                             curso_codigo,
                             catedratico_cat );

ALTER TABLE inscrito
    ADD CONSTRAINT inscrito_carrera_fk FOREIGN KEY ( carrera_carrera )
        REFERENCES carrera ( carrera );

ALTER TABLE inscrito
    ADD CONSTRAINT inscrito_estudiante_fk FOREIGN KEY ( estudiante_carnet )
        REFERENCES estudiante ( carnet );

ALTER TABLE pensum
    ADD CONSTRAINT pensum_curso_fk FOREIGN KEY ( curso_codigo )
        REFERENCES curso ( codigo );

ALTER TABLE pensum
    ADD CONSTRAINT pensum_plan_fk FOREIGN KEY ( plan_plan,
                                                plan_carrera_carrera )
        REFERENCES plan ( plan,
                          carrera_carrera );

ALTER TABLE plan
    ADD CONSTRAINT plan_carrera_fk FOREIGN KEY ( carrera_carrera )
        REFERENCES carrera ( carrera );

ALTER TABLE prerreq
    ADD CONSTRAINT prerreq_curso_fk FOREIGN KEY ( curso_codigo )
        REFERENCES curso ( codigo );

ALTER TABLE prerreq
    ADD CONSTRAINT prerreq_pensum_fk FOREIGN KEY ( pensum_plan,
                                                   pensum_carrera,
                                                   pensum_codigo )
        REFERENCES pensum ( plan_plan,
                            plan_carrera_carrera,
                            curso_codigo );

ALTER TABLE salon
    ADD CONSTRAINT salon_horario_fk FOREIGN KEY ( horario_seccion_seccion,
                                                  horario_seccion_codigo,
                                                  horario_seccion_catedratico_cat,
                                                  horario_periodo_periodo,
                                                  horario_dia_dia )
        REFERENCES horario ( seccion_seccion,
                             seccion_codigo,
                             seccion_catedratico_cat,
                             periodo_periodo,
                             dia_dia );

ALTER TABLE seccion
    ADD CONSTRAINT seccion_catedratico_fk FOREIGN KEY ( catedratico_cat )
        REFERENCES catedratico ( cat );

ALTER TABLE seccion
    ADD CONSTRAINT seccion_curso_fk FOREIGN KEY ( curso_codigo )
        REFERENCES curso ( codigo );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             2
-- ALTER TABLE                             30
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
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
-- CREATE SEQUENCE                          0
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
-- ERRORS                                   1
-- WARNINGS                                 0