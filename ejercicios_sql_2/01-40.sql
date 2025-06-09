-- 40. Obtener el promedio de dni de los alumnos por nacionalidad.
SELECT nacionalidad, AVG(dni) AS promedio_dni
FROM alumnos
GROUP BY nacionalidad;