-- 39. Seleccionar nacionalidades con más de 2 alumnos registrados.
SELECT nacionalidad, COUNT(*) AS cantidad_alumnos
FROM alumnos
GROUP BY nacionalidad
HAVING COUNT(*) >2 ;
