-- 11.	Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
SELECT nombre, telefono, marca
FROM usuarios
WHERE marca != "MOTOROLA" AND marca != "NOKIA"