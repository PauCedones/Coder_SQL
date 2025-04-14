-- Crear la base de datos
CREATE DATABASE app_habitos_saludables;

-- Seleccionar la base de datos
USE app_habitos_saludables;

-- Crear la tabla Usuario
CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear la tabla Habito
CREATE TABLE Habito (
    id_habito INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    unidad_medida VARCHAR(50),
    es_personalizado BOOLEAN DEFAULT FALSE
);

-- Crear la tabla Usuario_Habito
CREATE TABLE Usuario_Habito (
    id_usuario_habito INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_habito INT NOT NULL,
    meta_diaria DECIMAL(10, 2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_habito) REFERENCES Habito(id_habito) ON DELETE CASCADE
);

-- Crear la tabla Registro
CREATE TABLE Registro (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario_habito INT NOT NULL,
    fecha DATE NOT NULL,
    valor_registrado DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_usuario_habito) REFERENCES Usuario_Habito(id_usuario_habito) ON DELETE CASCADE
);


