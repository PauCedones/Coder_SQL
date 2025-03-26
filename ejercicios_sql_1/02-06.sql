-- 6.	Mostrar el email de los usuarios que no usan yahoo
SELECT usuario, email
FROM usuarios
WHERE email != "YAHOO";