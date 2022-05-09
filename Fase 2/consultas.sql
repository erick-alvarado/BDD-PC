-- 1. Dar el nombre del estudiante, promedio, y número de créditos ganados, para los
-- estudiantes que han cerrado Ingeniería en Ciencias y Sistemas.
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
)
select ec.carnet,ec.nombre, AVG(a.nota) as promedio, SUM(p.numCreditos) from asignacion a 
inner join estudiantes_cerrados ec on ec.carnet = a.carnet
inner join pensum p on p.codigo = a.codigo
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
group by ec.carnet,ec.nombre



-- 2. Dar el nombre del estudiante nombre de la carrera, promedio y número de créditos
-- ganados, para los estudiantes que han cerrado en alguna carrera, estén inscritos en ella o no.
with cursos_cierre_carrera as (
    select p.carrera, cu.codigo,cu.nombre from pensum p 
    inner join curso cu on cu.codigo = p.codigo
    where p.obligatoriedad = 'v'
    order by p.carrera
),
-- Verificar estudiantes cerrados
cursos_aprobados_estudiantes as(
    select ccc.carrera,e.carnet,e.nombre, count() as aprobados from asignacion a
    inner join estudiante e on e.carnet = a.carnet
    inner join cursos_cierre_carrera ccc on ccc.codigo = a.codigo
    group by ccc.carrera,e.carnet,e.nombre
),
estudiantes_cerrados as (
    select cae.carnet,cae.nombre, from cursos_aprobados_estudiantes cae 
    where cae.aprobados = (select count() from cursos_cierre where cae.carrera = cursos_cierre.carrera)
)
select ec.carnet,ec.nombre,c.nombre , AVG(a.nota) as promedio, SUM(p.numCreditos) from asignacion a 
inner join estudiantes_cerrados ec on ec.carnet = a.carnet
inner join pensum p on p.codigo = a.codigo
inner join carrera c on c.carrera = p.carrera
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
group by ec.carnet,ec.nombre,c.nombre


-- 3. Dar el nombre de los estudiantes que han ganado algún curso con alguno de los catedráticos que han impartido alguno de los cursos de la carrera de sistemas 
-- en alguno de los planes que se impartieron en el semestre pasado.

carrera = sistemas
plan = semestre pasado

select e.nombre from estudiante e
inner join asignacion a on a.carnet = e.carnet
inner join seccion s on s.seccion = a.seccion 
inner join curso c on c.codigo = s.codigo
inner join pensum p on codigo = c.codigo
inner join plan pl on pl.plan = p.plan
inner join catedratico cat on cat.cat = s.Catedratico_Cat
inner join carrera ca on ca.carrera = pl.carrera
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
and ca.nombre = 'sistemas'
and s.Ano = 2021
and s.ciclo = 'segundo semestre'
and c.nombre = 'curso_ejemplo'
and cat.nombre = 'nombre_ejemplo'
-- 4. Para un estudiante determinado que cerrado en alguna carrera, dar el nombre de los estudiantes que llevaron con él todos los cursos.
