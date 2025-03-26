-- 3.	Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL
SELECT usuario, telefono, compañia
FROM usuarios 
WHERE compañia <> 'TELCEL';