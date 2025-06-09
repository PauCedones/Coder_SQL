-- 43. Hacer un RIGHT JOIN entre alumnos y pedidos.
SELECT pedidos.id_pedido, alumnos.nombre
FROM alumnos
RIGHT JOIN pedidos ON alumnos.id_alumno = pedidos.id_alumno ;