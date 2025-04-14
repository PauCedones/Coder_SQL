-- 22- Modificar la nacionalidad de todos los alumnos de Chile a Perú.
SET SQL_SAFE_UPDATES = 0;

UPDATE alumnos
SET nacionalidad = "Peru"
WHERE nacionalidad = "Chile"