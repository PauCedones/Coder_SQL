-- Vista 1: progreso diario
-- Descripción: Muestra cuánto registró cada usuario por hábito cada día y cuánto le faltó para cumplir su meta.
-- Objetivo: Permite analizar fácilmente el cumplimiento diario de metas.
-- Tablas involucradas: Usuario, Habito, Usuario_Habito, Registro

CREATE VIEW vista_progreso_diario AS
SELECT
    u.id_usuario,
    u.nombre AS nombre_usuario,
    h.nombre AS nombre_habito,
    uh.meta_diaria,
    r.fecha,
    r.valor_registrado,
    (uh.meta_diaria - r.valor_registrado) AS diferencia_meta
FROM Registro r
JOIN Usuario_Habito uh ON r.id_usuario_habito = uh.id_usuario_habito
JOIN Usuario u ON uh.id_usuario = u.id_usuario
JOIN Habito h ON uh.id_habito = h.id_habito;

-- Vista 2: Resumen usuario
-- Descripción: Muestra los hábitos activos de cada usuario y desde cuándo los sigue.
-- Objetivo: Consultar rápidamente qué hábitos está trabajando cada persona.
-- Tablas involucradas: Usuario, Usuario_Habito, Habito

CREATE VIEW vista_resumen_usuario AS
SELECT
    u.id_usuario,
    u.nombre AS nombre_usuario,
    h.nombre AS nombre_habito,
    h.descripcion,
    uh.fecha_inicio,
    uh.meta_diaria
FROM Usuario_Habito uh
JOIN Usuario u ON uh.id_usuario = u.id_usuario
JOIN Habito h ON uh.id_habito = h.id_habito;

-- Vista 3: Registros recientes
-- Descripción: Muestra los últimos 7 días de registros de hábitos.
-- Objetivo: Visualizar actividad reciente del sistema.
-- Tablas involucradas: Registro, Usuario_Habito, Usuario, Habito

CREATE VIEW vista_registros_recientes AS
SELECT
    u.nombre AS nombre_usuario,
    h.nombre AS nombre_habito,
    r.fecha,
    r.valor_registrado
FROM Registro r
JOIN Usuario_Habito uh ON r.id_usuario_habito = uh.id_usuario_habito
JOIN Usuario u ON uh.id_usuario = u.id_usuario
JOIN Habito h ON uh.id_habito = h.id_habito
WHERE r.fecha >= CURDATE() - INTERVAL 7 DAY;
