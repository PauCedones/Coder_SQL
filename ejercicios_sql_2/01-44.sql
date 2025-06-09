-- 44. Seleccionar solo los alumnos que no han hecho pedidos (LEFT JOIN con NULL).
SELECT pedidos.id_pedido, alumnos.nombre
FROM alumnos
LEFT JOIN pedidos ON alumnos.id_alumno = pedidos.id_alumno
WHERE id_pedido is NULL;