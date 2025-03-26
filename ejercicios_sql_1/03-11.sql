-- 11.	Calcular el saldo mínimo de los usuarios de sexo “Hombre”
SELECT MIN(saldo) AS saldo_minimo
FROM usuarios
WHERE sexo = 'H';

