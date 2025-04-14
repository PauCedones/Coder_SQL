-- 14. Seleccionar el alumno con el dni más alto.
SELECT nombre, apellido, dni
FROM alumnos
ORDER BY dni ASC
LIMIT 1