-- 1.	Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono, marca
FROM pruebas.usuarios
WHERE marca != "LG" AND marca != "SAMSUNG"