-- Stores Procedures

DELIMITER //

-- Stored Procedure 1: sp_agregar_registro
-- Inserta un nuevo registro de valor diario para un hábito asociado a un usuario.
CREATE PROCEDURE sp_agregar_registro(
    IN p_id_usuario_habito INT,
    IN p_fecha DATE,
    IN p_valor_registrado DECIMAL(10,2)
)
BEGIN
    INSERT INTO Registro (id_usuario_habito, fecha, valor_registrado)
    VALUES (p_id_usuario_habito, p_fecha, p_valor_registrado);
END;
//

-- Stored Procedure 2: sp_actualizar_meta
-- Permite modificar la meta diaria de un hábito asignado a un usuario.
CREATE PROCEDURE sp_actualizar_meta(
    IN p_id_usuario_habito INT,
    IN p_nueva_meta DECIMAL(10,2)
)
BEGIN
    UPDATE Usuario_Habito
    SET meta_diaria = p_nueva_meta
    WHERE id_usuario_habito = p_id_usuario_habito;
END;
//

-- Stored Procedure 3: sp_eliminar_usuario
-- Elimina un usuario y en cascada todos sus registros y hábitos relacionados.
CREATE PROCEDURE sp_eliminar_usuario(
    IN p_id_usuario INT
)
BEGIN
    DELETE FROM Usuario
    WHERE id_usuario = p_id_usuario;
END;
//

DELIMITER ;
