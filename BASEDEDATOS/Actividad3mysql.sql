DROP DATABASE IF EXISTS empresa ;
CREATE DATABASE empresa;
USE empresa;
CREATE TABLE seccion(
codigo INTEGER(2) PRIMARY KEY,
nombre VARCHAR(20)
);
CREATE TABLE empleados(
apellidos VARCHAR(20) NOT NULL,
nombre VARCHAR(20),
domicilio VARCHAR(30),
seccion INTEGER(2),
fecha_ingreso DATE, 
telefono INTEGER(7),
FOREIGN KEY (seccion) REFERENCES seccion (codigo)
);
DESCRIBE seccion;
DESCRIBE empleados;
ALTER TABLE empleados
CHANGE nombre nombre VARCHAR(10);
DESCRIBE empleados;

