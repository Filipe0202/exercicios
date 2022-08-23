CREATE DATABASE exercicio;
USE exercicio; 

CREATE TABLE uzuarios(
nome VARCHAR(20),
sobrenome VARCHAR(40),
idade INT 
);
RENAME TABLE uzuarios TO usuarios; 
ALTER TABLE usuarios ADD email VARCHAR(40);
ALTER TABLE usuarios DROP sobrenome; 
INSERT INTO usuarios VALUES 
('Vanessa', '16', 'vanessa.rosa@gmail.com'),
('Adailton', '22', 'adailton.mas@yahoo.com'),
('Andressa', '36', 'andressa.simas@uol.com.br'),
('Mayra', '24', 'mayra_antunes@gmail.com'), 
('Cristiane', '14', 'cris.maya@gmail.com'),
('Carina', '27', 'carina.almeida@gmail.com'),
('Clovis', '29', 'clovis.simao@hotmail.com'),
('Gabriela', '23', 'gabriela.bragantino@live.com'),
('Cibele', null, 'cibele_lins@uol.com.br');

SELECT COUNT(*) FROM usuarios;
SELECT * FROM usuarios 	WHERE idade <= 17;
SELECT * FROM usuarios;
SELECT * FROM usuarios WHERE email LIKE '%gmail%';
SELECT * FROM usuarios WHERE idade = (SELECT MAX(idade) FROM usuarios);
SELECT * FROM usuarios WHERE idade IS null;
UPDATE usuarios SET idade = '27' WHERE idade IS null; 
DELETE FROM usuarios WHERE idade <= 18;
DELETE FROM usuarios;
DROP DATABASE exercicio; 




