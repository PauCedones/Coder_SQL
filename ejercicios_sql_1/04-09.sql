-- 9.	Listar las diferentes marcas de celular en orden alfabético aleatorio
SELECT distinct marca
FROM usuarios
ORDER BY RAND()