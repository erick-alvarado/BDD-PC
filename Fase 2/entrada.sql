-- ********************************************************************************************************************
-- ********************************************************************************************************************
insert into Carrera values (01 , 'Ingenieria Ambiental');
insert into Carrera values  (02 , 'Ingenieria Industrial');
insert into Carrera values (03 , 'Ingenieria Mecanica Industrial');
insert into Carrera values (04 , 'Ingenieria Quimica');
insert into Carrera values  (05 , 'Ingenieria Sistemas');
insert into Carrera values  (06 , 'Ingenieria Mecanica');
insert into Carrera values  (07 , 'Ingenieria Electrica');
insert into Carrera values  (08 , 'Ingenieria Civil');
SELECT * FROM Carrera; 
commit;
--  delete from Carrera



insert into Estudiante  VALUES (201545826,'Sonia Guerra',4500,TO_DATE('02/04/1964','DD/MM/YYYY'));
insert into Estudiante  VALUES (201848960,'Oli Batz',6000,TO_DATE('10/09/2000','DD/MM/YYYY'));
insert into Estudiante  VALUES (201812211,'Dalis Samayoa',4000,TO_DATE('08/03/1995','DD/MM/YYYY'));
insert into Estudiante  VALUES (201725223,'Javier Torres',8000,TO_DATE('31/10/2005','DD/MM/YYYY'));
insert into Estudiante  VALUES (201690999,'Alexander Guerra',2900,TO_DATE('22/02/2002','DD/MM/YYYY'));
insert into Estudiante  VALUES (201547744 , 'Sofia Alejandra' , 5000 , TO_DATE('02/04/1990' , 'DD/MM/YYYY'));
insert into Estudiante  VALUES (201244444 , 'Irma Dolores' , 6000 , TO_DATE('02/03/1991' , 'DD/MM/YYYY'));
insert into Estudiante  VALUES (201533333 , 'Caterin López' , 3400 , TO_DATE('02/02/1988' , 'DD/MM/YYYY'));
insert into Estudiante  VALUES (201522222 , 'Aracely Morales' , 3100 , TO_DATE('01/09/1987' , 'DD/MM/YYYY'));
insert into Estudiante  VALUES (201511111 , 'Beatriz López' , 4500 , TO_DATE('22/11/1989' , 'DD/MM/YYYY'));
select * from Estudiante;
commit;
-- delete from estudiante






insert into Inscrito values (2 , 201545826 , TO_DATE('19/11/2015','DD/MM/YYYY'));
insert into Inscrito values (08 , 201848960 , TO_DATE('21/11/2018','DD/MM/YYYY'));
insert into Inscrito values (02 , 201812211 , TO_DATE('21/11/2018','DD/MM/YYYY'));
insert into Inscrito values (07 , 201725223 , TO_DATE('15/11/2017','DD/MM/YYYY'));
insert into Inscrito values (05 , 201690999 , TO_DATE('15/11/2016','DD/MM/YYYY'));
insert into Inscrito values (06 , 201547744 , TO_DATE('19/11/2015','DD/MM/YYYY'));
insert into Inscrito values (02 , 201244444 , TO_DATE('21/11/2012','DD/MM/YYYY'));
insert into Inscrito values (02 , 201533333 , TO_DATE('21/11/2015','DD/MM/YYYY'));
insert into Inscrito values (02 , 201522222 , TO_DATE('21/11/2015','DD/MM/YYYY'));
insert into Inscrito values (05 , 201511111 , TO_DATE('15/11/2015','DD/MM/YYYY'));
SELECT * FROM Inscrito;
commit;
-- delete from inscrito




insert into Plan values ('Mixta' , 01 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 02 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 03 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 04 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 05 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 06 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 07 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
insert into plan values ('Mixta' , 08 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2025' , 'Segundo Semestre' , 250);
select * from plan;
commit;
-- delete from plan


-- **********************************************************
-- AREA BASICA 8 SEMESTRES   -    2 CLASES X CADA SEMESTRE
-- **********************************************************
insert into curso values (039 , 'deportes 1');  -- 1
insert into curso values (040 , 'deportes 2');  -- 1
insert into curso values (017 , 'social humanistica 1');    -- 2
insert into curso values (019 , 'social humanistica 2');    -- 2
insert into curso values (101 , 'matematica basica 1'); -- 3
insert into curso values (103 , 'matematica basica 2'); -- 3
insert into curso values (147 , 'fisica basica');   -- 4
insert into curso values (150 , 'fisica 1');    -- 4
insert into curso values (152 , 'fisica 2');    -- 5
insert into curso values (107 , 'mate intermedia 1');   -- 5
insert into curso values (112 , 'mate intermedia 2');   -- 6
insert into curso values (114 , 'mate intermedia 3');   -- 6
insert into curso values (118 , 'mate aplicada 1');   -- 7
insert into curso values (120 , 'mate aplicada 2');   -- 7
insert into curso values (116 , 'mate aplicada 3');   -- 8
insert into curso values (122 , 'mate aplicada 4');   -- 8
select * from curso
commit
-- delete from curso

-- **********************************************************
--  ESPECIFICA 3 CLASES X SEMESTRE
-- **********************************************************
-- SISTEMAS  05-VESPERTINA
insert into curso values (770 , 'intr. a la prog. y computacion 1');    -- 9
insert into curso values (771 , 'intro. a la prog. y computacion 2');   -- 9
insert into curso values (729 , 'modelacion y simulacion 1');           -- 9
insert into curso values (720 , 'modelacion y simulacion 2');           -- 10
insert into curso values (777 , 'org. lenguajes y compiladores 1');     -- 10
insert into curso values (781 , 'org. lenguajes y compiladores 2');     -- 10

-- INDUSTRIAL  02-MIXTA
insert into curso values (660 , 'mercadotecnia 1');         -- 9
insert into curso values (661 , 'mercadotecnia 2');         -- 9
insert into curso values (632 , 'ingenieria de plantas');   -- 9
insert into curso values (634 , 'ingenieria de metodos');   -- 10
insert into curso values (200 , 'ing. electrica 1');        -- 10
insert into curso values (202 , 'ing. electrica 2');        -- 10

-- QUIMICA  04-VESPERTIRNA
insert into curso values (430 , 'quimica 2');                       --9
insert into curso values (418 , 'IQ5 trans. masa en u. continuas'); --9
insert into curso values (398 , 'cinetica de procesos quimicos');   --9
insert into curso values (434 , 'procesos quimicos industriales');  --10
insert into curso values (436 , 'diseño de equipos');               --10
insert into curso values (7902 , 'seminario quimica');              --10

-- MECANICA  06-MIXTA
insert into curso values (508 , 'montaje y mantenimiento de equipo');   --9
insert into curso values (513 , 'mant. de hospitales 1');               --9
insert into curso values (502 , 'refrigeración y aire acondicionado');  --9
insert into curso values (512 , 'instrumentacion mecanica');            --10
insert into curso values (510 , 'instalaciones mecanicas');             --10
insert into curso values (515 , 'mant. de hospitales 1');               --10

-- CIVIL  08-MIXTA
insert into curso values (460 , 'pavimentos');              --9
insert into curso values (322 , 'diseño estructural');      --9
insert into curso values (320 , 'cimentaciones 1');         --9
insert into curso values (332 , 'puentes');                 --10
insert into curso values (324 , 'diseño estructural 2');    --10
insert into curso values (7991 , 'seminario civil');        --10




-- **********************************************************
-- **********************************************************
-- AREA BASICA
insert into pensum values   (039 , 'Mixta' , 05 , '0' , 17 , 61 , 36 , 0);  -- deportes 1
insert into pensum values   (040 , 'Mixta' , 05 , '0' , 17 , 61 , 36 , 0);  -- deportes 2
insert into pensum values   (017 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- humanistica
insert into pensum values   (019 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- humanistica 2
insert into pensum values   (101 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 68);  -- mb1
insert into pensum values   (103 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 68);  -- mb2
insert into pensum values   (147 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 102);  -- fb
insert into pensum values   (150 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 102);  -- fisica 1
insert into pensum values   (152 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- fisica 2
insert into pensum values   (107 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- inter 1
insert into pensum values   (112 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- inter 2
insert into pensum values   (114 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- inter 3
insert into pensum values   (118 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- apli 1
insert into pensum values   (120 , 'Mixta' , 05 , '0' , 17 , 61 , 36 , 0);  -- apli 2
insert into pensum values   (116 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 238);  -- apli 3
insert into pensum values   (122 , 'Mixta' , 05 , '0' , 17 , 61 , 36 , 238);  -- apli 4

insert into pensum values   (039 , 'Mixta' , 02 , '0' , 17 , 61 , 36 , 0);  -- deportes 1
insert into pensum values   (040 , 'Mixta' , 02 , '0' , 17 , 61 , 36 , 0);  -- deportes 2
insert into pensum values   (017 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- humanistica
insert into pensum values   (019 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- humanistica 2
insert into pensum values   (101 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 68);  -- mb1
insert into pensum values   (103 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 68);  -- mb2
insert into pensum values   (147 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 102);  -- fb
insert into pensum values   (150 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 102);  -- fisica 1
insert into pensum values   (152 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- fisica 2
insert into pensum values   (107 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- inter 1
insert into pensum values   (112 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- inter 2
insert into pensum values   (114 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- inter 3
insert into pensum values   (118 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- apli 1
insert into pensum values   (120 , 'Mixta' , 02 , '0' , 17 , 61 , 36 , 0);  -- apli 2
insert into pensum values   (116 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 238);  -- apli 3
insert into pensum values   (122 , 'Mixta' , 02 , '0' , 17 , 61 , 36 , 238);  -- apli 4

insert into pensum values   (039 , 'Mixta' , 04 , '0' , 17 , 61 , 36 , 0);  -- deportes 1
insert into pensum values   (040 , 'Mixta' , 04 , '0' , 17 , 61 , 36 , 0);  -- deportes 2
insert into pensum values   (017 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- humanistica
insert into pensum values   (019 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- humanistica 2
insert into pensum values   (101 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 68);  -- mb1
insert into pensum values   (103 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 68);  -- mb2
insert into pensum values   (147 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 102);  -- fb
insert into pensum values   (150 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 102);  -- fisica 1
insert into pensum values   (152 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- fisica 2
insert into pensum values   (107 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- inter 1
insert into pensum values   (112 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- inter 2
insert into pensum values   (114 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- inter 3
insert into pensum values   (118 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- apli 1
insert into pensum values   (120 , 'Mixta' , 04 , '0' , 17 , 61 , 36 , 0);  -- apli 2
insert into pensum values   (116 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 238);  -- apli 3
insert into pensum values   (122 , 'Mixta' , 04 , '0' , 17 , 61 , 36 , 238);  -- apli 4

insert into pensum values   (039 , 'Mixta' , 06 , '0' , 17 , 61 , 36 , 0);  -- deportes 1
insert into pensum values   (040 , 'Mixta' , 06 , '0' , 17 , 61 , 36 , 0);  -- deportes 2
insert into pensum values   (017 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- humanistica
insert into pensum values   (019 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- humanistica 2
insert into pensum values   (101 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 68);  -- mb1
insert into pensum values   (103 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 68);  -- mb2
insert into pensum values   (147 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 102);  -- fb
insert into pensum values   (150 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 102);  -- fisica 1
insert into pensum values   (152 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- fisica 2
insert into pensum values   (107 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- inter 1
insert into pensum values   (112 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- inter 2
insert into pensum values   (114 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- inter 3
insert into pensum values   (118 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- apli 1
insert into pensum values   (120 , 'Mixta' , 06 , '0' , 17 , 61 , 36 , 0);  -- apli 2
insert into pensum values   (116 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 238);  -- apli 3
insert into pensum values   (122 , 'Mixta' , 06 , '0' , 17 , 61 , 36 , 238);  -- apli 4

insert into pensum values   (039 , 'Mixta' , 08 , '0' , 17 , 61 , 36 , 0);  -- deportes 1
insert into pensum values   (040 , 'Mixta' , 08 , '0' , 17 , 61 , 36 , 0);  -- deportes 2
insert into pensum values   (017 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- humanistica
insert into pensum values   (019 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- humanistica 2
insert into pensum values   (101 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 68);  -- mb1
insert into pensum values   (103 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 68);  -- mb2
insert into pensum values   (147 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 102);  -- fb
insert into pensum values   (150 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 102);  -- fisica 1
insert into pensum values   (152 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- fisica 2
insert into pensum values   (107 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- inter 1
insert into pensum values   (112 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- inter 2
insert into pensum values   (114 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- inter 3
insert into pensum values   (118 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- apli 1
insert into pensum values   (120 , 'Mixta' , 08 , '0' , 17 , 61 , 36 , 0);  -- apli 2
insert into pensum values   (116 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 238);  -- apli 3
insert into pensum values   (122 , 'Mixta' , 08 , '0' , 17 , 61 , 36 , 238);  -- apli 4
-- SISTEMAS
insert into pensum values   (770 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (771 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (729 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (720 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (777 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (781 , 'Mixta' , 05 , '1' , 17 , 61 , 36 , 0);  -- 
-- INDUSTRIAL
insert into pensum values   (660 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (661 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (632 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (634 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (200 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (202 , 'Mixta' , 02 , '1' , 17 , 61 , 36 , 0);  -- 
-- QUIMICA
insert into pensum values   (430 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (418 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (398 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (434 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (436 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (7902 , 'Mixta' , 04 , '1' , 17 , 61 , 36 , 0);  -- 
-- MECANICA
insert into pensum values   (508 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (513 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (502 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (512 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (510 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (515 , 'Mixta' , 06 , '1' , 17 , 61 , 36 , 0);  -- 
-- CIVIL
insert into pensum values   (460 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (322 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (320 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (332 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (324 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- 
insert into pensum values   (7991 , 'Mixta' , 08 , '1' , 17 , 61 , 36 , 0);  -- 
commit






-- **********************************************************
-- AREA COMUN
-- **********************************************************
-- sistemas
insert into prerreq values (05 , 'Mixta' , 017 , 039 ); -- social 1
insert into prerreq values (05 , 'Mixta' , 019 , 040 ); -- social 2
insert into prerreq values (05 , 'Mixta' , 101 , 017 ); -- mb 1
insert into prerreq values (05 , 'Mixta' , 103 , 019 ); -- mb 2
insert into prerreq values (05 , 'Mixta' , 152 , 150 ); -- fisica 2
insert into prerreq values (05 , 'Mixta' , 112 , 107 ); -- inter2
insert into prerreq values (05 , 'Mixta' , 114 , 107 ); -- inter3
insert into prerreq values (05 , 'Mixta' , 116 , 118 ); -- apli3
insert into prerreq values (05 , 'Mixta' , 122 , 120 ); -- apli4
-- industrial
insert into prerreq values (02 , 'Mixta' , 017 , 039 ); -- social 1
insert into prerreq values (02 , 'Mixta' , 019 , 040 ); -- social 2
insert into prerreq values (02 , 'Mixta' , 101 , 017 ); -- mb 1
insert into prerreq values (02 , 'Mixta' , 103 , 019 ); -- mb 2
insert into prerreq values (02 , 'Mixta' , 152 , 150 ); -- fisica 2
insert into prerreq values (02 , 'Mixta' , 112 , 107 ); -- inter2
insert into prerreq values (02 , 'Mixta' , 114 , 107 ); -- inter3
insert into prerreq values (02 , 'Mixta' , 116 , 118 ); -- apli3
insert into prerreq values (02 , 'Mixta' , 122 , 120 ); -- apli4
select * from prerreq
delete from prerreq
-- quimica
insert into prerreq values (04 , 'Mixta' , 017 , 039 ); -- social 1
insert into prerreq values (04 , 'Mixta' , 019 , 040 ); -- social 2
insert into prerreq values (04 , 'Mixta' , 101 , 017 ); -- mb 1
insert into prerreq values (04 , 'Mixta' , 103 , 019 ); -- mb 2
insert into prerreq values (04 , 'Mixta' , 152 , 150 ); -- fisica 2
insert into prerreq values (04 , 'Mixta' , 112 , 107 ); -- inter2
insert into prerreq values (04 , 'Mixta' , 114 , 107 ); -- inter3
insert into prerreq values (04 , 'Mixta' , 116 , 118 ); -- apli3
insert into prerreq values (04 , 'Mixta' , 122 , 120 ); -- apli4
-- mecanica 
insert into prerreq values (06 , 'Mixta' , 017 , 039 ); -- social 1
insert into prerreq values (06 , 'Mixta' , 019 , 040 ); -- social 2
insert into prerreq values (06 , 'Mixta' , 101 , 017 ); -- mb 1
insert into prerreq values (06 , 'Mixta' , 103 , 019 ); -- mb 2
insert into prerreq values (06 , 'Mixta' , 152 , 150 ); -- fisica 2
insert into prerreq values (06 , 'Mixta' , 112 , 107 ); -- inter2
insert into prerreq values (06 , 'Mixta' , 114 , 107 ); -- inter3
insert into prerreq values (06 , 'Mixta' , 116 , 118 ); -- apli3
insert into prerreq values (06 , 'Mixta' , 122 , 120 ); -- apli4
-- civil
insert into prerreq values (08 , 'Mixta' , 017 , 039 ); -- social 1
insert into prerreq values (08 , 'Mixta' , 019 , 040 ); -- social 2
insert into prerreq values (08 , 'Mixta' , 101 , 017 ); -- mb 1
insert into prerreq values (08 , 'Mixta' , 103 , 019 ); -- mb 2
insert into prerreq values (08 , 'Mixta' , 152 , 150 ); -- fisica 2
insert into prerreq values (08 , 'Mixta' , 112 , 107 ); -- inter2
insert into prerreq values (08 , 'Mixta' , 114 , 107 ); -- inter3
insert into prerreq values (08 , 'Mixta' , 116 , 118 ); -- apli3
insert into prerreq values (08 , 'Mixta' , 122 , 120 ); -- apli4

-- ************************************************************************
-- OBLIGATORIAS AREA PROFESIONAL
-- ************************************************************************
insert into prerreq values (05 , 'Mixta' , 720 , 770 );
insert into prerreq values (05 , 'Mixta' , 777 , 771 );
insert into prerreq values (05 , 'Mixta' , 729 , 729 );
insert into prerreq values (02 , 'Mixta' , 200 , 661 );
insert into prerreq values (02 , 'Mixta' , 202 , 632 );
insert into prerreq values (04 , 'Mixta' , 434 , 430 );
insert into prerreq values (04 , 'Mixta' , 436 , 418 );
insert into prerreq values (04 , 'Mixta' , 7902 , 398 );
insert into prerreq values (06 , 'Mixta' , 512 , 508 );
insert into prerreq values (06 , 'Mixta' , 510 , 513 );
insert into prerreq values (06 , 'Mixta' , 515 , 502 );
insert into prerreq values (08 , 'Mixta' , 332 , 460 );
insert into prerreq values (08 , 'Mixta' , 324 , 322 );
insert into prerreq values (08 , 'Mixta' , 7991 , 320 );
select * from prerreq
commit



-- ************************************************************************
-- ************************************************************************
insert into catedratico values ( 9001 , 'Catedratico 1' , 9700 , ' ');
insert into catedratico values ( 9002 , 'Catedratico 2' , 9700 , ' ');
insert into catedratico values ( 9003 , 'Catedratico 3' , 9700 , ' ');
insert into catedratico values ( 9004 , 'Catedratico 4' , 9700 , ' ');
insert into catedratico values ( 9005 , 'Catedratico 5' , 9700 , ' ');
insert into catedratico values ( 9006 , 'Catedratico 6' , 9700 , ' ');
insert into catedratico values ( 9007 , 'Catedratico 7' , 9700 , ' ');
insert into catedratico values ( 9008 , 'Catedratico 8' , 9700 , ' ');
insert into catedratico values ( 9009 , 'Catedratico 9' , 9700 , ' ');
insert into catedratico values ( 9010 , 'Catedratico 10' , 9700 , ' ');
insert into catedratico values ( 9011 , 'Catedratico 11' , 9700 , ' ');
insert into catedratico values ( 9012 , 'Catedratico 12' , 9700 , ' ');
select * from catedratico
-- delete from catedratico
commit




-- ************************************************************************
-- ************************************************************************
insert into dia values(1 , 'Lunes');
insert into dia values(2 , 'Martes');
insert into dia values(3 , 'Miercoles');
insert into dia values(4 , 'Jueves');
insert into dia values(5 , 'Viernes');
insert into dia values(6 , 'Sabado');
select * from dia
commit






-- ************************************************************************
-- ************************************************************************
insert into salon values ('T-3' , '101' , 50 );
insert into salon values ('T-3' , '102' , 50 );
insert into salon values ('T-3' , '103' , 50 );
insert into salon values ('T-3' , '104' , 50 );
insert into salon values ('T-3' , '105' , 50 );
insert into salon values ('T-3' , '106' , 50 );
insert into salon values ('T-3' , '107' , 50 );
insert into salon values ('T-3' , '108' , 50 );
insert into salon values ('T-3' , '109' , 50 );
insert into salon values ('T-3' , '110' , 50 );
insert into salon values ('T-3' , '111' , 50 );
insert into salon values ('T-3' , '112' , 50 );
insert into salon values ('T-3' , '113' , 50 );
insert into salon values ('T-3' , '114' , 50 );
insert into salon values ('T-3' , '115' , 50 );
insert into salon values ('T-3' , '116' , 50 );
insert into salon values ('T-3' , '117' , 50 );
insert into salon values ('T-3' , '118' , 50 );
insert into salon values ('T-3' , '119' , 50 );
insert into salon values ('T-3' , '120' , 50 );
insert into salon values ('T-3' , '121' , 50 );
insert into salon values ('T-3' , '122' , 50 );
insert into salon values ('T-3' , '123' , 50 );
insert into salon values ('T-3' , '124' , 50 );
insert into salon values ('T-7' , 'L-II-1' , 65 );
insert into salon values ('T-7' , 'L-II-2' , 65 );
insert into salon values ('T-7' , 'L-II-3' , 65 );
insert into salon values ('T-7' , 'L-II-4' , 65 );
insert into salon values ('T-7' , 'L-II-5' , 65 );
insert into salon values ('T-7' , 'L-III-1' , 65 );
insert into salon values ('T-7' , 'L-III-2' , 65 );
insert into salon values ('T-7' , 'L-III-3' , 65 );
insert into salon values ('T-7' , 'L-III-4' , 65 );
insert into salon values ('T-7' , 'L-III-5' , 65 );
insert into salon values ('T-1' , '101' , 43 );
insert into salon values ('T-1' , '102' , 43 );
insert into salon values ('T-1' , '103' , 43 );
insert into salon values ('T-1' , '104' , 43 );
insert into salon values ('T-1' , '105' , 43 );
insert into salon values ('T-1' , '106' , 43 );
insert into salon values ('T-1' , '107' , 43 );
insert into salon values ('T-1' , '108' , 43 );
insert into salon values ('T-1' , '109' , 43 );
insert into salon values ('T-1' , '110' , 43 );
insert into salon values ('T-1' , '111' , 43 );
insert into salon values ('T-1' , '112' , 43 );
insert into salon values ('T-1' , '113' , 43 );
insert into salon values ('T-1' , '114' , 43 );
insert into salon values ('T-1' , '115' , 43 );
select * from salon
commit

-- **********************************************************
-- **********************************************************
-- Seccion 
--SISTEMAS
insert into seccion values(1,2021,'Segundo Semestre',17,9001); -- Catedratico 1, social humanistica 1
insert into seccion values(1,2021,'Segundo Semestre',19,9002); -- Catedratico 2, social humanistica 2
insert into seccion values(1,2021,'Segundo Semestre',101,9003); -- Catedratico 3, matematica basica 1
insert into seccion values(1,2021,'Segundo Semestre',103,9004); -- Catedratico 4, matematica basica 2
insert into seccion values(1,2021,'Segundo Semestre',150,9005); -- Catedratico 5, fisica 1
insert into seccion values(1,2021,'Segundo Semestre',152,9006); -- Catedratico 6, fisica 2
insert into seccion values(1,2021,'Segundo Semestre',107,9007); -- Catedratico 7, mate intermedia 1
insert into seccion values(1,2021,'Segundo Semestre',112,9008); -- Catedratico 8, mate intermedia 2
insert into seccion values(1,2021,'Segundo Semestre',114,9009); -- Catedratico 9, mate intermedia 3
insert into seccion values(1,2021,'Segundo Semestre',118,9010); -- Catedratico 10,mate aplicada 1
insert into seccion values(1,2021,'Segundo Semestre',116,9011); -- Catedratico 11,mate aplicada 3
insert into seccion values(1,2021,'Segundo Semestre',770,9012); -- Catedratico 12, intr a la prog 1
insert into seccion values(1,2021,'Segundo Semestre',771,9001); -- Catedratico 1, intro prog 2
insert into seccion values(1,2021,'Segundo Semestre',729,9001); -- Catedratico 1, modela 1
insert into seccion values(1,2021,'Segundo Semestre',720,9002); -- Catedratico 2, modela 2
insert into seccion values(1,2021,'Segundo Semestre',777,9003); -- Catedratico 3, compi 1