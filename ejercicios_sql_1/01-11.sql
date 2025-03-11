-- 11.	Mostrar el email de los usuarios que usan gmail
SELECT usuario, email
FROM pruebas.usuarios
WHERE email LIKE "%gmail.com"