-- 12.	Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL
SELECT SUM(saldo) AS suma_saldo_telcel
FROM usuarios
WHERE compañia = "TELCEL"