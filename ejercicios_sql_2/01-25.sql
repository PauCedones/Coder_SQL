-- 25. Aumentar en 1 el dni de todos los alumnos que sean de Argentina.
UPDATE alumnos
SET dni = dni + 1
WHERE nacionalidad = "Argentina"

