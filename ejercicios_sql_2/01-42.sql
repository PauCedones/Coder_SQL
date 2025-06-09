-- 42. Hacer un LEFT JOIN entre alumnos y pedidos.
SELECT pedidos.id_pedido, alumnos.nombre
FROM alumnos
LEFT JOIN pedidos ON alumnos.id_alumno = pedidos.id_alumno;