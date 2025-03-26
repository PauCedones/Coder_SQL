-- 4.	Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) AS saldo_promedio
FROM usuarios
WHERE marca = "NOKIA";
