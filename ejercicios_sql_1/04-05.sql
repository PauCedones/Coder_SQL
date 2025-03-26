-- 5.	Mostrar el email de los usuarios que usan hotmail
SELECT usuario, email
FROM usuarios
WHERE email LIKE '%@hotmail.com'