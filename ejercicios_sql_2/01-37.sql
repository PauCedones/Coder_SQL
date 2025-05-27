-- 37.Contar cuántos alumnos tienen el mismo apellido.
SELECT COUNT(apellido), apellido
FROM alumnos
GROUP BY apellido;

