-- 8.	Contar el número de usuarios por compañía telefónica
select compañia, COUNT(*) AS cantidad_usuarios
FROM pruebas.usuarios
GROUP BY compañia;