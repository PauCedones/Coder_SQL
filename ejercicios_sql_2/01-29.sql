-- 29- Eliminar todos los alumnos cuyo telefono sea NULL.
DELETE FROM pedidos 
WHERE id_alumno IN (SELECT id_alumno FROM alumnos WHERE telefono IS NULL);

DELETE FROM alumnos
WHERE telefono IS NULL