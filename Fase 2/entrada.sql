--Select
select * from estudiante;



--Insert


insert into estudiante (carnet,nombre,ingresoFamiliar,fechanacimiento) VALUES (201800546,'Erick Alvarado',3000,TO_DATE('10/09/2000','DD/MM/YYYY'));
insert into estudiante (carnet,nombre,ingresoFamiliar,fechanacimiento) VALUES (201800465,'Christian Salvatore',4000,TO_DATE('08/03/1995','DD/MM/YYYY'));
insert into estudiante (carnet,nombre,ingresoFamiliar,fechanacimiento) VALUES (201709878,'Javier Torres',8000,TO_DATE('31/10/2005','DD/MM/YYYY'));
insert into estudiante (carnet,nombre,ingresoFamiliar,fechanacimiento) VALUES (201600437,'Alexander Guerra',10000,TO_DATE('22/02/2002','DD/MM/YYYY'));
insert into estudiante (carnet,nombre,ingresoFamiliar,fechanacimiento) VALUES (201500987,'Sonia Guerra',55000,TO_DATE('02/04/1964','DD/MM/YYYY'));



insert all 
into carrera values (01 , 'Ingenieria Ambiental')
into carrera values	(02 , 'Ingenieria Industrial')
into carrera values (03 , 'Ingenieria Mecanica Industrial')
into carrera values (04 , 'Ingenieria Quimica')
into carrera values	(05 , 'Ingenieria Sistemas')
into carrera values	(06 , 'Ingenieria Mecanica')
into carrera values	(07 , 'Ingenieria Electrica')
into carrera values	(08 , 'Ingenieria Civil')
SELECT * FROM dual; 


insert into inscrito values (02 , 2012012345 , '19/11/2021'),
							(08 , 2013012345 , '21/11/2021'),
							(02 , 2014012345 , '21/11/2021'),
							(07 , 2015012345 , '15/11/2021'),
							(05 , 2016012345 , '15/11/2021'),
							(06 , 2017012345 , '19/11/2021'),
							(02 , 2018012345 , '21/11/2021'),
							(02 , 2019012345 , '21/11/2021'),
							(02 , 2020012345 , '21/11/2021'),
							(04 , 2021012345 , '15/11/2021');

insert into plan values 	('Mixta' , 01 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Mixta' , 02 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Mixta' , 03 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Vespertina' , 04 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Vespertina' , 05 , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Mixta' , 06 , '' , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Mixta' , 07 , '' , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250),
							('Mixta' , 08 , '' , 'Jornada Completa' , '2010' , 'Primer Semestre' , '2020' , 'Segundo Semestre' , 250);

insert into pensum values 	(001 , 'Mixta' , 01 , '1' , 250 , 61 , 36 , 46),
							(002 , 'Mixta' , 02 , '1' , 250 , 61 , 36 , 46),
							(003 , 'Vespertina' , 05 , '1' , 250 , 61 , 36 , 46),
							(004 , 'Mixta' , 03 , '1' , 250 , 61 , 36 , 46),
							(005 , 'Mixta' , 09 , '1' , 250 , 61 , 36 , 46),
							(006 , 'Vespertina' , 04 , '1' , 250 , 61 , 36 , 46),
							(007 , 'Vespertina' , 01 , '1' , 250 , 61 , 36 , 46),
							(008 , 'Mixta' , 06 , '1' , 250 , 61 , 36 , 46),
							(009 , 'Mixta' , 07 , '1' , 250 , 61 , 36 , 46),
							(0010 , 'Vespertina' , 08 , '1' , 250 , 61 , 36 , 46);

insert all 
into curso values (0100 , 'Matematica Basica 1')
into curso values (0101 , 'Quimica General 1')
into curso values (0113 , 'Matematica Basica 2')
into curso values (0125 , 'Fisica Basica')
into curso values (0137 , 'Fisica 1')
into curso values (0149 , 'Fisica 2')
into curso values (0152 , 'Matematica Intermedia 2')
into curso values (0164 , 'Orientación y Liderazgo')
into curso values (0176 , 'Matematica Intermedia 1')
into curso values (0188 , 'Deportes 1')
SELECT * FROM dual;


insert into prerreq values  (02 , 'Mixta' , 001 , 1 ),
							(02 , 'Mixta' , 002 , 2 ),
							(04 , 'Mixta' , 001 , 3 ),
							(03 , 'Vespertina' , 003 , 4 ),
							(07 , 'Vespertina' , 004 , 5 ),
							(09 , 'Mixta' , 005 , 6 ),
							(08 , 'Mixta' , 006 , 7 ),
							(02 , 'Mixta' , 007 , 8 ),
							(02 , 'Mixta' , 008 , 9 ),
							(02 , 'Mixta' , 009 , 10 );

insert all 
into catedratico values (324 , 'Flanders' , 9000)
into catedratico values (343 , 'Chapatin' , 10000)
into catedratico values (456 , 'Integral' , 7900)
into catedratico values (765 , 'El Pelón' , 8000)
into catedratico values (543 , 'Buffer' , 1000)
into catedratico values (786 , 'Chocomax' , 11000)
into catedratico values (987 , 'El dragon' , 1000)
into catedratico values (999 , 'Sata' , 13700)
SELECT * FROM dual;


insert into seccion values	('A' , '2021' , 'Segundo Semestre 2021' , 0100 , 0324),
							('A-' , '2021' , 'Segundo Semestre 2021' , 101 , 0343),
 							('A+' , '2021' , 'Segundo Semestre 2021' , 0113 , 0456),
							('B' , '2021' , 'Segundo Semestre 2021' , 0125 , 0765),
							('B-' , '2021' , 'Segundo Semestre 2021' , 0137 , 0543),
							('B+' , '2021' , 'Segundo Semestre 2021' , 0149 , 0786);
							('C' , '2021' , 'Segundo Semestre 2021' , 0152 , 0987),
							('C-' , '2021' , 'Segundo Semestre 2021' , 0164 , 0999),
							('C+' , '2021' , 'Segundo Semestre 2021' , 0176 , 0324),
							('D' , '2021' , 'Segundo Semestre 2021' , 0188 , 0343);

insert into asignacion values (2013012345 , 0100 , 'A' , 2021 , 'Segundo Semestre 2021' , 41 , 62),
							(2014012345 , 0113 , 'A+' , 2021 , 'Segundo Semestre 2021' , 30 , 30),
							(2013012345 , 0101 , 'A-' , 2021 , 'Segundo Semestre 2021' , 50 , 70),
							(2021012345 , 0137 , 'B-' , 2021 , 'Segundo Semestre 2021' , 49 , 70),
							(2021012345 , 0101 , 'A-' , 2021 , 'Segundo Semestre 2021' , 36 , 61),
							(2014012345 , 0101 , 'A-' , 2021 , 'Segundo Semestre 2021' , 20 , 20),
							(2016012345 , 0176 , 'C+' , 2021 , 'Segundo Semestre 2021' , 27 , 27),
							(2015012345 , 0152 , 'C' , 2021 , 'Segundo Semestre 2021' 60 , 80),
							(2017012345 , 0152 , 'C' , 2021 , 'Segundo Semestre 2021' , 36 , 59),
							(2014012345 , 0188 , 'D' , 2021 , 'Segundo Semestre 2021' , 60 , 85),
							(2018012345 , 0152 , 'C' , 2021 , 'Segundo Semestre 2021' , 35 , 35),
							(2021012345 , 0188 , 'D' , 2021 , 'Segundo Semestre 2021' , 70 , 90),
							(2019012345 , 0164 , 'C-' , 2021 , 'Segundo Semestre 2021' , 75 , 100),
							(2015012345 , 0164 , 'C-' , 2021 , 'Segundo Semestre 2021' , 75 , 90),
							(2019012345 , 0188 , 'D' , 2021 , 'Segundo Semestre 2021' , 75 , 100),
							(2018012345 , 0101 , 'A-' , 2021 , 'Segundo Semestre 2021' , 10 , 10),
							(2020012345 , 0152 , 'C' , 2021 , 'Segundo Semestre 2021' , 30 , 30),
							(2016012345 , 0137 , 'B-' , 2021 , 'Segundo Semestre 2021' , 20 , 20),
							(2021012345 , 0176 , 'C+' , 2021 , 'Segundo Semestre 2021' , 5 , 5);
insert all 
into dia values (1 , 'Lunes')
into dia values (2 , 'Martes')
into dia values (3 , 'Miercoles')
into dia values (4 , 'Jueves')
into dia values (5 , 'Viernes')
into dia values (6 , 'Sabado')
SELECT * FROM dual;


insert into salon values 	('T-3' , '104'),
							('T-3' , '107'),
							('T-3' , '109'),
							('T-7' , 'L-II-1'),
							('T-1' , '102'),
							('T-3' , '205'),
							('T-7' , 'L-II-3'),
							('T-3' , '209'),
							('T-4' , '100'),
							('T-1' , '103');

insert all 
into periodo values (1, TO_DATE('10/09/2000 07:10','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 08:50','DD/MM/YYYY  HH24:MI'))
into periodo values (2, TO_DATE('10/09/2000 08:50','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 09:40','DD/MM/YYYY  HH24:MI'))
into periodo values (3, TO_DATE('10/09/2000 09:40','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 10:30','DD/MM/YYYY  HH24:MI'))
into periodo values (4, TO_DATE('10/09/2000 10:30','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 11:20','DD/MM/YYYY  HH24:MI'))
into periodo values (5, TO_DATE('10/09/2000 11:20','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 12:10','DD/MM/YYYY  HH24:MI'))
into periodo values (6, TO_DATE('10/09/2000 12:10','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 13:00','DD/MM/YYYY  HH24:MI'))
into periodo values (7, TO_DATE('10/09/2000 13:00','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 13:50','DD/MM/YYYY  HH24:MI'))
into periodo values (8, TO_DATE('10/09/2000 13:50','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 14:40','DD/MM/YYYY  HH24:MI'))
into periodo values (9, TO_DATE('10/09/2000 14:40','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 15:30','DD/MM/YYYY  HH24:MI'))
into periodo values (10, TO_DATE('10/09/2000 15:30','DD/MM/YYYY HH24:MI'), TO_DATE('10/09/2000 16:20','DD/MM/YYYY  HH24:MI'))
SELECT * FROM dual;


insert into horario values 	(),
							(),
							(),
							(),
							(),
							(),
							(),
							(),
							(),
							();
