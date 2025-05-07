-- Triggers

DELIMITER //

-- Trigger 1: trg_insert_registro_validacion
-- Valida que el valor registrado sea mayor a cero antes de insertar
CREATE TRIGGER trg_insert_registro_validacion
BEFORE INSERT ON Registro
FOR EACH ROW
BEGIN
    IF NEW.valor_registrado <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El valor registrado debe ser mayor a cero.';
    END IF;
END;
//

-- Trigger 2: trg_actualizar_fecha_registro
-- Asegura que la fecha de un nuevo registro no sea futura
CREATE TRIGGER trg_actualizar_fecha_registro
BEFORE INSERT ON Registro
FOR EACH ROW
BEGIN
    IF NEW.fecha > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede registrar una fecha futura.';
    END IF;
END;
//

-- Trigger 3: trg_log_eliminacion_usuario
-- Registra en una tabla de log los usuarios eliminados
CREATE TABLE IF NOT EXISTS Log_Eliminacion_Usuario (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    nombre VARCHAR(255),
    email VARCHAR(255),
    fecha_eliminacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER trg_log_eliminacion_usuario
BEFORE DELETE ON Usuario
FOR EACH ROW
BEGIN
    INSERT INTO Log_Eliminacion_Usuario (id_usuario, nombre, email)
    VALUES (OLD.id_usuario, OLD.nombre, OLD.email);
END;
//

DELIMITER ;
