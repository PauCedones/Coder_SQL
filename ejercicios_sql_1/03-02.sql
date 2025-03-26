-- 2.	Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
SELECT usuario, nombre, telefono, marca
FROM usuarios
WHERE marca != "BLACKBERRY"