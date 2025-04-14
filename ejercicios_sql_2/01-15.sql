-- 15. Seleccionar los últimos 3 alumnos registrados.
SELECT nombre, apellido, fecha_registro
from alumnos
ORDER BY fecha_registro DESC
LIMIT 3