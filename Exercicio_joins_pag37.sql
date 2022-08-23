CREATE DATABASE exercicio_joins;
USE exercicio_joins;
CREATE TABLE cursos(
codigo 	INT AUTO_INCREMENT,
curso VARCHAR(20),
PRIMARY KEY(codigo)
); 

CREATE TABLE clientes(
codigo INT AUTO_INCREMENT,
clientes VARCHAR(30),
codigo_curso INT,
PRIMARY KEY(codigo),
FOREIGN KEY(codigo_curso) REFERENCES cursos(codigo)
);

INSERT INTO cursos (curso) VALUES
('Java'),
('C#'),
('Phyton'),
('PHP'),
('Node.js');

SELECT * FROM cursos;

INSERT INTO clientes(clientes, codigo_curso) VALUES
('Larissa',3),
('Gabriel',1),
('Jean', 1),
('Gabriela', 2),
('Robson', 3),
('Isabella', 3),
('Eduardo', 2),
('Juliana', 3),
('Carlos', 2), 
('Lorena', 1);

SELECT * FROM clientes;

SELECT clientes.clientes, cursos.curso 
FROM clientes INNER JOIN cursos
ON clientes.codigo_curso = cursos.codigo;

SELECT cursos.curso, 
COUNT(clientes.clientes)
FROM clientes
RIGHT JOIN cursos
ON clientes.codigo_curso = cursos.codigo
GROUP BY cursos.curso;




