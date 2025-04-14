-- 24. Modificar el apellido de un alumno cuyo nombre sea "María".
UPDATE alumnos
SET apellido = "Cambio de Nombre"
WHERE nombre = "María";

SELECT nombre, apellido
FROM alumnos
WHERE nombre ="Maria"