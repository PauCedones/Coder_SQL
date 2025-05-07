-- Insertar usuarios
INSERT INTO Usuario (nombre, email) VALUES 
('Ana García', 'ana@example.com'),
('Carlos Ruiz', 'carlos@example.com'),
('Lucía Fernández', 'lucia@example.com');

-- Insertar hábitos
INSERT INTO Habito (nombre, descripcion, unidad_medida, es_personalizado) VALUES
('Tomar agua', 'Consumo diario de agua en litros', 'litros', FALSE),
('Caminar', 'Cantidad de pasos diarios', 'pasos', FALSE),
('Meditación', 'Minutos dedicados a la meditación diaria', 'minutos', TRUE);

-- Asignar hábitos a usuarios
INSERT INTO Usuario_Habito (id_usuario, id_habito, meta_diaria, fecha_inicio) VALUES
(1, 1, 2.00, '2025-04-01'), -- Ana toma agua
(1, 2, 8000, '2025-04-01'), -- Ana camina
(2, 1, 1.50, '2025-04-01'), -- Carlos toma agua
(3, 3, 10, '2025-04-05');   -- Lucía medita

-- Insertar registros
INSERT INTO Registro (id_usuario_habito, fecha, valor_registrado) VALUES
(1, '2025-05-01', 2.00),
(1, '2025-05-02', 1.50),
(2, '2025-05-01', 8500),
(3, '2025-05-01', 1.25),
(3, '2025-05-02', 1.50),
(4, '2025-05-01', 12),
(4, '2025-05-02', 10);
