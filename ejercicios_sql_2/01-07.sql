-- 7. Seleccionar los alumnos cuyo dni sea mayor a 30.000.000.
SELECT nombre, apellido, dni
FROM alumnos
WHERE dni >= 30000000
ORDER BY dni ASC