-- Obtener el dni más bajo registrado en la tabla.
SELECT 
    dni,
    (SELECT MIN(dni) FROM alumnos) AS dni_mas_bajo,
    (SELECT MAX(dni) FROM alumnos) AS dni_mas_alto
FROM alumnos;
