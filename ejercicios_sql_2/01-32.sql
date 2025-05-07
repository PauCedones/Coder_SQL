-- 32. Contar cuántos alumnos tienen telefono registrado.
SELECT COUNT(*) 
FROM alumnos 
WHERE telefono IS NOT NULL;

