-- Funciones

DELIMITER //

-- Función 1: calcular_porcentaje_cumplimiento
-- Calcula el porcentaje de cumplimiento de un usuario para un hábito en un día específico.
CREATE FUNCTION calcular_porcentaje_cumplimiento(id_usuario_habito INT, fecha_consulta DATE)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE valor DECIMAL(10,2);
    DECLARE meta DECIMAL(10,2);
    DECLARE porcentaje DECIMAL(5,2);

    SELECT r.valor_registrado INTO valor
    FROM Registro r
    WHERE r.id_usuario_habito = id_usuario_habito AND r.fecha = fecha_consulta;

    SELECT uh.meta_diaria INTO meta
    FROM Usuario_Habito uh
    WHERE uh.id_usuario_habito = id_usuario_habito;

    IF meta > 0 THEN
        SET porcentaje = (valor / meta) * 100;
    ELSE
        SET porcentaje = 0;
    END IF;

    RETURN ROUND(porcentaje, 2);
END;
//

-- Función 2: obtener_promedio_habito_mensual
-- Devuelve el promedio diario registrado por un usuario en un hábito para un mes y año específicos.
CREATE FUNCTION obtener_promedio_habito_mensual(id_usuario_habito INT, anio INT, mes INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);

    SELECT AVG(valor_registrado)
    INTO promedio
    FROM Registro
    WHERE id_usuario_habito = id_usuario_habito
      AND YEAR(fecha) = anio
      AND MONTH(fecha) = mes;

    RETURN ROUND(IFNULL(promedio, 0), 2);
END;
//

-- Función 3: dias_con_cumplimiento_total
-- Cuenta cuántos días un usuario cumplió o superó su meta diaria para un hábito específico.
CREATE FUNCTION dias_con_cumplimiento_total(id_usuario_habito INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_dias INT;

    SELECT COUNT(*) INTO cantidad_dias
    FROM Registro r
    JOIN Usuario_Habito uh ON r.id_usuario_habito = uh.id_usuario_habito
    WHERE r.id_usuario_habito = id_usuario_habito
      AND r.valor_registrado >= uh.meta_diaria;

    RETURN cantidad_dias;
END;
//

DELIMITER ;
