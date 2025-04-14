CREATE DATABASE IF NOT EXISTS escuela;
USE escuela;

CREATE TABLE alumnos (
    id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    dni INT,
    telefono VARCHAR(20),
    nacionalidad VARCHAR(50)
);

INSERT INTO alumnos (nombre, apellido, email, dni, telefono, nacionalidad) VALUES
('Juan', 'Pérez', 'juan.perez@gmail.com', 32567890, '1122334455', 'Argentina'),
('María', 'González', 'maria.gonzalez@hotmail.com', 29876543, '1144778899', 'Uruguay'),
('Carlos', 'López', NULL, 37567891, '1166554433', 'Chile'),
('Ana', 'Fernández', 'ana.fernandez@yahoo.com', 30987654, NULL, 'Argentina'),
('Diego', 'Martínez', 'diego.martinez@gmail.com', 34561234, '1199887766', 'Paraguay'),
('Lucía', 'Rodríguez', 'lucia.rodriguez@gmail.com', 31234567, '1122113344', 'Chile'),
('Pedro', 'Sánchez', NULL, 28765432, NULL, 'Perú'),
('Valentina', 'Díaz', 'valentina.diaz@gmail.com', 36789123, '1133557799', 'Argentina'),
('Martín', 'Torres', 'martin.torres@hotmail.com', 38912345, NULL, 'Uruguay'),
('Sofía', 'Ramírez', 'sofia.ramirez@gmail.com', 35432198, '1144556677', 'Argentina');

CREATE TABLE profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    dni INT
);

INSERT INTO profesores (nombre, apellido, email, dni) VALUES
('Roberto', 'Gómez', 'roberto.gomez@gmail.com', 23876543),
('Elena', 'Morales', 'elena.morales@hotmail.com', 26789012),
('Federico', 'Navarro', 'federico.navarro@gmail.com', 31267890),
('Patricia', 'Sosa', 'patricia.sosa@yahoo.com', 34567891),
('Germán', 'Paredes', 'german.paredes@gmail.com', 38901234);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_alumno INT,
    producto VARCHAR(50),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

INSERT INTO pedidos (id_alumno, producto) VALUES
(1, 'Libro de Matemáticas'),
(2, 'Cuaderno A4'),
(4, 'Calculadora Científica'),
(6, 'Libro de Historia'),
(8, 'Regla de 30cm'),
(9, 'Lápices de colores');

ALTER TABLE alumnos ADD COLUMN fecha_nacimiento DATE;

UPDATE alumnos SET fecha_nacimiento = '2005-03-12' WHERE id_alumno = 1;
UPDATE alumnos SET fecha_nacimiento = '1998-07-25' WHERE id_alumno = 2;
UPDATE alumnos SET fecha_nacimiento = '2003-11-08' WHERE id_alumno = 3;
UPDATE alumnos SET fecha_nacimiento = '2000-05-17' WHERE id_alumno = 4;
UPDATE alumnos SET fecha_nacimiento = '2006-09-30' WHERE id_alumno = 5;
UPDATE alumnos SET fecha_nacimiento = '1999-02-14' WHERE id_alumno = 6;
UPDATE alumnos SET fecha_nacimiento = '2001-06-21' WHERE id_alumno = 7;
UPDATE alumnos SET fecha_nacimiento = '1997-12-04' WHERE id_alumno = 8;
UPDATE alumnos SET fecha_nacimiento = '2002-08-19' WHERE id_alumno = 9;
UPDATE alumnos SET fecha_nacimiento = '2004-10-07' WHERE id_alumno = 10;

ALTER TABLE alumnos
ADD COLUMN fecha_registro DATE;

UPDATE alumnos
SET fecha_registro = '2025-01-01'
WHERE id_alumno = 1;

UPDATE alumnos
SET fecha_registro = '2025-02-01'
WHERE id_alumno = 2;

UPDATE alumnos
SET fecha_registro = '2025-03-01'
WHERE id_alumno = 3;

UPDATE alumnos
SET fecha_registro = '2025-04-01'
WHERE id_alumno = 4;

UPDATE alumnos
SET fecha_registro = '2025-05-01'
WHERE id_alumno = 5;

UPDATE alumnos
SET fecha_registro = '2025-06-01'
WHERE id_alumno = 6;

UPDATE alumnos
SET fecha_registro = '2025-07-01'
WHERE id_alumno = 7;

UPDATE alumnos
SET fecha_registro = '2025-08-01'
WHERE id_alumno = 8;

UPDATE alumnos
SET fecha_registro = '2025-09-01'
WHERE id_alumno = 9;

UPDATE alumnos
SET fecha_registro = '2025-10-01'
WHERE id_alumno = 10;

