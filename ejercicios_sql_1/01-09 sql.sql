-- 9.	Contar el número de usuarios por nivel

SELECT nivel, COUNT(*) AS cantidad_nivel
FROM pruebas.usuarios
GROUP BY nivel