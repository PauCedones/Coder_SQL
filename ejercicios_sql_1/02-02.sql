-- 2.	Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL
SELECT usuario, telefono
FROM pruebas.usuarios
WHERE compañia = "IUSACELL"