-- 27. Eliminar todos los alumnos de Uruguay.
DELETE FROM pedidos
WHERE id_alumno IN (SELECT id_alumno FROM alumnos WHERE nacionalidad = "Uruguay");

DELETE FROM alumnos
WHERE nacionalidad = "Uruguay"