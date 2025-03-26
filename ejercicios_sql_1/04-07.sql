-- 7.	Listar el login y teléfono de los usuarios con compañia telefónicaIUSACELL o TELCEL
SELECT usuario, telefono, compañia
FROM usuarios
WHERE compañia = "IUSACELL" OR compañia = "TELCEL"