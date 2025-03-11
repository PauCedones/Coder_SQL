-- 7.	Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
SELECT SUM(saldo) AS "suma_saldo"
FROM pruebas.usuarios
WHERE compañia = "nextel";
