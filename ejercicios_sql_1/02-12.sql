-- 12.	Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) AS saldo_promedio
FROM usuarios
WHERE marca = "LG"
