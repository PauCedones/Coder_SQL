-- 38. Obtener la cantidad de alumnos con email registrado y agrupar por nacionalidad.
SELECT nacionalidad, COUNT(*) AS cantidad_con_email
FROM alumnos
WHERE email IS NOT NULL
GROUP BY nacionalidad;