-- Seleccionar los alumnos mayores de 18 años.
SELECT nombre, apellido, fecha_nacimiento
FROM alumnos
WHERE YEAR(fecha_nacimiento) <= YEAR(CURDATE()) - 18
ORDER BY fecha_nacimiento ASC