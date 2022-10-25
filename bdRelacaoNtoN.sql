CREATE DATABASE relacaonton;

USE relacaonton;

CREATE TABLE Pessoa(
	idPessoa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    salario DECIMAL(10,2)
);

CREATE TABLE Endereco(
	idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    cep CHAR(9),
    bairro VARCHAR(45),
    cidade VARCHAR(45)
)AUTO_INCREMENT = 100;

-- CRIAR A NOSSA TABELA ASSOCIATIVA
CREATE TABLE endCompleto(
	fkEnd INT,
    FOREIGN KEY (fkEnd) REFERENCES Endereco(idEndereco),
    fkPessoa INT,
    FOREIGN KEY (fkPessoa) REFERENCES Pessoa(idPessoa),
    PRIMARY KEY (fkEnd,fkPessoa),
    numero INT,
    complemento VARCHAR(45)
);


INSERT INTO Pessoa VALUES
	(null, 'Vivian', '1.99'),
    (null, 'Paulo', '1.59'),
    (null, 'Nison', '0.09');
    
INSERT INTO Endereco VALUES 
	(null, '01414-905', 'Cerqueira Cesar', 'São Paulo'),
    (null, '04253-000', 'Sacomã', 'São Paulo'),
    (null, '88050-000', 'Centro', 'Florianópolis');
    
SELECT * FROM Pessoa;
SELECT * FROM Endereco;

INSERT INTO endCompleto VALUES
	(101, 1, '1500', 'apto 100'),
    (100, 2, '595', '10 andar'),
    (100, 3, '595', '6 andar');
    
SELECT * FROM Pessoa p
	INNER JOIN endCompleto ec ON p.idPessoa = ec.fkPessoa
	INNER JOIN endereco e ON ec.fkEnd = e.idEndereco;

SELECT p.nome as 'Nome', e.bairro as 'Bairro' FROM Pessoa p
	INNER JOIN endCompleto ec ON p.idPessoa = ec.fkPessoa
	INNER JOIN endereco e ON ec.fkEnd = e.idEndereco;
    
SELECT * FROM Pessoa
	RIGHT JOIN endCompleto ON idPessoa = fkPessoa
	RIGHT JOIN Endereco ON fkEnd = idEndereco;
    
SELECT p.nome as 'Nome', e.bairro as 'Bairro' FROM Pessoa p
	RIGHT JOIN endCompleto ec ON p.idPessoa = ec.fkPessoa
	RIGHT JOIN endereco e ON ec.fkEnd = e.idEndereco
UNION
SELECT p.nome as 'Nome', e.bairro as 'Bairro' FROM Pessoa p
	LEFT JOIN endCompleto ec ON p.idPessoa = ec.fkPessoa
	LEFT JOIN endereco e ON ec.fkEnd = e.idEndereco;
    
    
-- FUNÇÕES MATEMATICAS