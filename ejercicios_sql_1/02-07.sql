-- 7.	Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL
SELECT usuario, compañia
FROM usuarios
WHERE compañia != "TELCEL" OR compañia != "IUSACELL"