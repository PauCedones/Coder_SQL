-- 9. Seleccionar los alumnos que sean de Argentina o Uruguay.
SELECT nombre, apellido, nacionalidad
FROM alumnos
WHERE nacionalidad = "Argentina" OR nacionalidad = "Uruguay"