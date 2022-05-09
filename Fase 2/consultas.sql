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
inner join carrera ca on ca.carrera = pl.carrera
where a.nota >= p.notaAprobacion
and a.zona >= p.zonaMinima
and ca.nombre = 'sistemas'
and s.Ano = 2021
and s.ciclo = 'segundo semestre'
and c.nombre = 'curso_ejemplo'

-- 4. Para un estudiante determinado que cerrado en alguna carrera, dar el nombre de los estudiantes que llevaron con él todos los cursos.

