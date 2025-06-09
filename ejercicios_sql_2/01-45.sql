-- 45. Contar cuántos pedidos ha hecho cada alumno.
SELECT alumnos.nombre, COUNT(pedidos.id_pedido) AS cantidad_pedidos
FROM alumnos
JOIN pedidos ON  alumnos.id_alumno = pedidos.id_alumno
GROUP BY alumnos.nombre;