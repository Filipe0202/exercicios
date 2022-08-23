CREATE DATABASE projeto;

USE projeto;

CREATE TABLE clientes(
nome VARCHAR(30),
cidade VARCHAR(30),
idade INT
);

ALTER TABLE clientes ADD email VARCHAR(30);

ALTER TABLE clientes DROP email;
RENAME TABLE clientes TO usuarios;

DROP DATABASE projeto;


INSERT INTO clientes VALUES ('Ralf', 'Blumenau', 30);

SELECT * FROM clientes;

INSERT INTO clientes (nome, idade) VALUES ('Tatiana',29);

INSERT INTO clientes VALUES 
('Mayra', 'Joinvile', 31), 
('Henrique', 'Blumenau', 30),
('Paloma', 'Florianopolis', 32);

UPDATE clientes SET cidade = 'Joinvile' WHERE nome = 'Paloma';

DELETE FROM clientes WHERE nome = 'Paloma';

SELECT * FROM clientes WHERE idade > 30 AND cidade <> 'Blumenau';

INSERT INTO clientes VALUES ('Igor', 'Pomerode', 25);

SELECT MAX(idade) FROM clientes;

SELECT MIN(idade) FROM clientes;

SELECT AVG(idade) FROM clientes;

SELECT * FROM clientes WHERE nome LIKE 'H%';

SELECT * FROM clientes WHERE nome LIKE '%A'; 

SELECT * FROM clientes WHERE nome LIKE '%R%';

SELECT * FROM clientes WHERE nome LIKE '%F';

SELECT * FROM clientes WHERE nome LIKE 'M%';

SELECT * FROM clientes WHERE cidade IN('Blumenau', 'Joinvile');

SELECT * FROM clientes WHERE idade BETWEEN 20 AND 30;

SELECT * FROM clientes ORDER BY nome ASC; 

SELECT * FROM clientes ORDER BY nome DESC; 
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;




	

