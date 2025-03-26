-- 10.	Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o UNEFON
SELECT usuario, telefono, compañia
FROM usuarios
WHERE compañia ="IUSACELL" OR compañia = "UNEFON"