-- 10. Seleccionar los alumnos que no sean de Argentina ni de Uruguay.
SELECT nombre, apellido, nacionalidad
FROM alumnos
WHERE nacionalidad != "Argentina" AND nacionalidad !=  "Uruguay"