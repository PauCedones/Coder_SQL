-- Seleccionar los alumnos que tengan un email registrado (no NULL).
SELECT nombre, apellido, email
FROM alumnos
WHERE email IS NOT null