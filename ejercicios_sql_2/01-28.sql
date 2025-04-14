-- 28. Eliminar a los alumnos que no tengan email registrado.
DELETE FROM alumnos
WHERE email IS NULL;

SELECT id_alumno, email
FROM alumnos