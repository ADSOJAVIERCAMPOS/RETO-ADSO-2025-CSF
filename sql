CREATE DATABASE empleados_db;

USE empleados_db;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    departamento_codigo VARCHAR(50) NOT NULL,
    departamento_nombre VARCHAR(100) NOT NULL,
    fecha_hora_crea TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_hora_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    documento_tipo ENUM('RC', 'TI', 'CC', 'CE') NOT NULL,
    documento_numero VARCHAR(20) NOT NULL UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    departamentos_id INT,
    ciudad VARCHAR(100),
    direccion VARCHAR(255),
    correo_electronico VARCHAR(100),
    telefono VARCHAR(20),
    fecha_hora_crea TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_hora_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (departamentos_id) REFERENCES departamentos(id)
);
