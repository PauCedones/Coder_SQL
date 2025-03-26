-- 6.	Contar el número de usuarios por sexo
SELECT sexo, COUNT(*) AS cantidad
FROM usuarios
GROUP BY sexo;

