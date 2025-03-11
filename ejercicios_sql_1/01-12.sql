-- 12.	Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono, marca
FROM pruebas.usuarios
WHERE marca = "LG" OR marca = "SAMSUNG" OR marca = "MOTOROLA"