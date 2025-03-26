-- 4.	Calcular la suma de los saldos de los usuarios de la compañia telefónica UNEFON
SELECT SUM(saldo) AS saldo_total_UNEFON
FROM usuarios
WHERE compañia = "UNEFON"
