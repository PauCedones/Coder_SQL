-- 5.	Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
SELECT usuario, compañia
FROM usuarios
WHERE compañia = "IUSACELL" or compañia = "AXEL"