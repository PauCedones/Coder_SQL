-- 10.	Listar las diferentes compañias en orden alfabético aleatorio
SELECT DISTINCT compañia
FROM usuarios
ORDER BY RAND()