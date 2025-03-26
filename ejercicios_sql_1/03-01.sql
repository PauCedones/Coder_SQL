-- 1.	Listar el login de los usuarios con nivel 1 o 3
SELECT usuario, nivel
FROM usuarios
WHERE nivel = 1 OR nivel = 3