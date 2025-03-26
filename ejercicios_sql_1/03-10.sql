-- 10.	Listar los números de teléfono sin saldo
SELECT usuario, saldo
FROM usuarios
WHERE saldo = 0