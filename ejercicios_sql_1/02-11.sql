-- 11.	Listar el login de los usuarios con nivel 0 o 2
SELECT usuario, nivel
FROM usuarios
WHERE nivel = 0 OR nivel = 2