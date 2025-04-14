-- 8. Seleccionar los alumnos que no tengan telefono registrado.
SELECT nombre, apellido, telefono
FROM alumnos
WHERE telefono IS NULL OR telefono = '';
