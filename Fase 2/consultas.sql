-- 1. Dar el nombre del estudiante, promedio, y número de créditos ganados, para los
-- estudiantes que han cerrado Ingeniería en Ciencias y Sistemas.
with cursos_cierre as (
    select cu.codigo,cu.nombre from pensum p 
    inner join carrera c on c.carrera = p.carrera
    inner join curso cu on cu.codigo = p.codigo
    where p.obligatoriedad = '1'
    and c.nombre = 'Ingenieria Sistemas'
),
-- Verificar estudiantes cerrados
cursos_aprobados_estudiantes as(
    select e.carnet,e.nombre, count(*) as aprobados from asignacion a
    inner join estudiante e on e.carnet = a.carnet
    inner join inscrito i on i.carnet = e.carnet
    inner join carrera c on c.carrera = i.carrera
    where a.codigo = (select cc.codigo from cursos_cierre cc where cc.codigo = a.codigo)
    and c.nombre = 'Ingenieria Sistemas'
    group by e.carnet,e.nombre
),
estudiantes_cerrados as (
    select cae.carnet,cae.nombre from cursos_aprobados_estudiantes cae 
    where cae.aprobados = (select count(*) from cursos_cierre)
)
select ec.carnet,ec.nombre, AVG(a.nota) as promedio, SUM(p.numCreditos) from asignacion a 
inner join estudiantes_cerrados ec on ec.carnet = a.carnet
inner join inscrito i on i.carnet = ec.carnet
inner join pensum p on p.codigo = a.codigo and p.carrera = i.carrera
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
group by ec.carnet,ec.nombre



-- 2. Dar el nombre del estudiante nombre de la carrera, promedio y número de créditos
-- ganados, para los estudiantes que han cerrado en alguna carrera, estén inscritos en ella o no.
with cursos_cierre_carrera as (
    select p.carrera, cu.codigo,cu.nombre from pensum p 
    inner join curso cu on cu.codigo = p.codigo
    where p.obligatoriedad = '1'
    order by p.carrera
),
-- Verificar estudiantes cerrados
cursos_aprobados_estudiantes as(
    select i.carrera, e.carnet,e.nombre, count(*) as aprobados from asignacion a
    inner join estudiante e on e.carnet = a.carnet
    inner join inscrito i on i.carnet = e.carnet
    where a.codigo = (select cc.codigo from cursos_cierre_carrera cc where cc.codigo = a.codigo and cc.carrera = i.carrera )
    group by i.carrera, e.carnet,e.nombre
),
estudiantes_cerrados as (
    select cae.carrera,cae.carnet,cae.nombre from cursos_aprobados_estudiantes cae 
    where cae.aprobados = (select count(*) from cursos_cierre_carrera ccc where ccc.carrera = cae.carrera)
)
select car.nombre,ec.carnet,ec.nombre, AVG(a.nota) as promedio, SUM(p.numCreditos) from asignacion a 
inner join estudiantes_cerrados ec on ec.carnet = a.carnet
inner join inscrito i on i.carnet = ec.carnet
inner join carrera car on car.carrera = ec.carrera
inner join pensum p on p.codigo = a.codigo and p.carrera = i.carrera
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
group by car.nombre,ec.carnet,ec.nombre


-- 3. Dar el nombre de los estudiantes que han ganado algún curso con alguno de los catedráticos que han impartido alguno de los cursos de la carrera de sistemas 
-- en alguno de los planes que se impartieron en el semestre pasado.

select e.nombre,c.nombre,cat.nombre from seccion s 
inner join catedratico cat on cat.cat = s.catedratico_cat 
inner join asignacion a on a.seccion = s.seccion and a.codigo = s.codigo and a.ciclo = s.ciclo and a.ano = s.ano
inner join estudiante e on e.carnet = a.carnet
inner join inscrito i on i.carnet = a.carnet
inner join pensum p on p.codigo = a.codigo and p.carrera = i.carrera 
inner join curso c on c.codigo = s.codigo
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
and i.carrera = 5
and s.Ano = 2021
and s.ciclo = 'Segundo Semestre'
and c.nombre = 'matematica basica 1'
and cat.nombre = 'Catedratico 3'

-- 4. Para un estudiante determinado que cerrado en alguna carrera, dar el nombre de los estudiantes que llevaron con él todos los cursos.

with cursos_cierre as (
    select cu.codigo,cu.nombre from pensum p 
    inner join carrera c on c.carrera = p.carrera
    inner join curso cu on cu.codigo = p.codigo
    where p.obligatoriedad = 'v'
    and c.carrera = 'sistemas'
),
-- Verificar estudiantes cerrados
cursos_aprobados_estudiantes as(
    select e.carnet,e.nombre, count() as aprobados from asignacion a
    inner join estudiante e on e.carnet = a.carnet
    inner join inscrito i on e.carnet = e.carnet
    inner join carrera c on c.carrera = i.carrera
    where a.codigo = (select cc.codigo from cursos_cierre cc where cc.codigo = a.codigo)
    and c.nombre = 'sistemas'
    group by e.carnet,e.nombre
),
estudiantes_cerrados as (
    select cae.carnet,cae.nombre from cursos_aprobados_estudiantes cae 
    where cae.aprobados = (select count() from cursos_cierre)
    and ca.carnet = 'carnet_ejemplo'
)


select ec.carnet,ec.nombre, AVG(a.nota) as promedio, SUM(p.numCreditos) from asignacion a 
inner join estudiantes_cerrados ec on ec.carnet = a.carnet
inner join pensum p on p.codigo = a.codigo
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
group by ec.carnet,ec.nombre

--consulkta 5
select distinct e.nombre || ' ' || es.nombre from estudiante e
left join estudiante es
on e.nombre != es.nombre
left join Asignacion a
on e.carnet = a.carnet
left join Asignacion asi
on es.carnet = asi.carnet
left join seccion s
on s.SECCION = a.SECCION
left join Seccion se
on se.SECCION = asi.SECCION
where e.carnet != es.carnet and s.codigo = se.codigo


--consulta 6
select distinct c.nombre, e.nombre from Carrera c
left join inscrito i
on c.carrera = i.carrera
left join Estudiante e
on i.carnet = e.carnet
LEFT join Asignacion a
on e.carnet = a.carnet
where (a.nota) > (select avg(nota) from Asignacion)and (FLOOR((MONTHS_BETWEEN(CURRENT_DATE, e.FECHANACIMIENTO ) / 12))) < (select avg( FLOOR((MONTHS_BETWEEN(CURRENT_DATE, FECHANACIMIENTO ) / 12))) from ESTUDIANTE)


--consulta 7
create or replace trigger Convertir
after insert
on CATEDRATICO
for each row
begin
    UPDATE CATEDRATICO
        SET SUELDOLETRA = UPPER(TO_CHAR(TO_DATE(:new.SUELDOMENSUAL,'J'),'Jsp'))
        WHERE CAT = :new.CAT;
end Convertir;

