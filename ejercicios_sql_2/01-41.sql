-- 41 Seleccionar todos los pedidos y los nombres de los alumnos que los hicieron.
SELECT pedidos.id_pedido, alumnos.nombre
FROM pedidos
JOIN alumnos ON pedidos.id_alumno = alumnos.id_alumno;