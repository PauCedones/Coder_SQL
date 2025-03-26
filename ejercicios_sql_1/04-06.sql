-- 6.	Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre, saldo, activo
FROM usuarios
WHERE saldo =0 OR activo =0