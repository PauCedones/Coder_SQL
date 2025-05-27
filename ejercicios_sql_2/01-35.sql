-- 35. Obtener la cantidad de alumnos por cada nacionalidad.
SELECT nacionalidad, COUNT(*) AS cantidad_alumnos
from alumnos
GROUP BY nacionalidad;