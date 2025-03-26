-- 8.	Listar el login y teléfono de los usuarios con compañia telefónica UNEFON
SELECT usuario, telefono, compañia
FROM usuarios
WHERE compañia = "UNEFON"