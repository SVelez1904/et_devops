-- Dar permisos globales al usuario root para que se conecte desde la red de Docker
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'admin123'; -- o la pass que tengas
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'admin123';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Tu script original sigue abajo:
CREATE DATABASE IF NOT EXISTS tienda_perritos;
USE tienda_perritos;

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('Alimento Cachorro Premium', 'Sabor a pollo, razas pequenas', 19990, 15),
('Alimento Adulto Light', 'Control de peso, razas medianas', 17990, 8),
('Snacks Dentales', 'Ayuda a la limpieza dental', 5990, 30),
('Alimento Adulto Pedigree', 'Sabor carne', 15990, 40),
('Bravery pollo Adulto raza pequena', 'Sabor a pollo', 25990, 20);
    