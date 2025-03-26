-- 1.	Contar el número de usuarios por marca de teléfono
SELECT marca, COUNT(*) AS cantidad
FROM usuarios
GROUP BY marca