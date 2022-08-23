CREATE DATABASE relacionamento;
USE relacionamento; 
CREATE TABLE cidades(
codigo INT AUTO_INCREMENT,
nome VARCHAR(30), 
PRIMARY KEY ( codigo)
);
CREATE TABLE clientes(
codigo INT AUTO_INCREMENT,
nome VARCHAR(15),
cidades INT,
PRIMARY KEY(codigo), 
FOREIGN KEY(cidades) REFERENCES cidades(codigo)
);
INSERT INTO cidades (nome) VALUES
('Blumenau'),
('Camboriu'),
('Joinville'),
('Indaial');

 SELECT * FROM cidades;
 
 INSERT INTO clientes (nome, cidades) VALUES
 ('Ana', 1),
 ('Julio', 3),
 ('Larissa', 1),
 ('Christian', 2);
 
 SELECT * FROM clientes;
 
 SELECT clientes.nome, cidades.nome FROM clientes INNER JOIN cidades ON clientes.cidades = cidades.codigo;
 
 SELECT cidades.nome, COUNT(clientes.nome) 
 FROM clientes LEFT JOIN cidades
 ON clientes.cidades = cidades.codigo 
 GROUP BY cidades.nome;
 
 SELECT cidades.nome,clientes.nome
 FROM clientes
 RIGHT JOIN cidades
 ON clientes.cidades = cidades.codigo;
 
 



