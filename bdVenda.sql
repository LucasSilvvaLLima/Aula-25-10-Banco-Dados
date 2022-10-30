CREATE DATABASE Venda;

USE Venda;

CREATE TABLE Cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    cep CHAR(9),
    bairro VARCHAR(45),
    complemento VARCHAR(45),
    fkIndicador INT,
    FOREIGN KEY (fkIndicador) REFERENCES Cliente (idCliente)
);

CREATE TABLE Venda(
	idVenda INT AUTO_INCREMENT,
    dataVenda DATETIME,
    fkCliente INT,
    FOREIGN KEY (fkCliente) REFERENCES Cliente(idCliente),
    PRIMARY KEY (idVenda, fkCliente)
);

CREATE TABLE Produto(
	idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    descricao VARCHAR(250),
    preco DECIMAL(10,2)
);

CREATE TABLE Carrinho(
	idCarrinho INT AUTO_INCREMENT,
    fkVenda INT,
    FOREIGN KEY (fkVenda) REFERENCES Venda(idVenda),
    fkProduto INT,
    FOREIGN KEY (fkProduto) REFERENCES Produto(idProduto),
    PRIMARY KEY (idCarrinho, fkVenda, fkProduto),
    desconto INT
);

INSERT INTO Cliente VALUES 
	(null, 'Lucas Silva', 'lucas@gmail.com', '59156-758', 'Cajupiranga', '2° andar número 14', null),
	(null, 'Vitor Matheus', 'vitormatheussales@bernardino.co', '59156-758', 'Setor Industrial Munir Calixto', 'Lote 6', null),
    (null, 'Alexandre Mário Drumond', 'alexandre.mario.drumond@djapan.com.br', '72429-120', 'Gama', 'Conjunto 4', null);
    
INSERT INTO Cliente VALUES
	(null, 'Fernando Caleb Gomes', 'fernando.caleb.gomes@ci.com.br', '57073-383', 'Cidade Universitária', 'Conjunto 1', 1),
	(null, 'Lucca Paulo Dias', 'lucca_dias@cartovale.com.br', '57044-170', 'São Jorge', 'Andar 10', 2),
    (null, 'Marina Malu Dias', 'marina_malu_dias@proshock.com.br', '69036-790', 'Santo Agostinho', 'Lote 9', 3),
    (null, 'Josefa Alice Larissa Teixeira', 'josefa-teixeira86@geometrabte.com.br', '29052-090', 'Jesus de Nazareth', 'Galeria 3', 1),
    (null, 'Carolina Sueli da Mata', 'carolina_sueli_damata@bol.com.br', '04374-040', 'Vila Santa Catarina', 'Anexo 9', 2),
    (null, 'Thomas Leandro Bernardes', 'thomas_leandro_bernardes@dpi.indl.com.br', '65632-660', 'Sete Estrelas', 'Andar 8', 3),
    (null, 'Sophia Fabiana da Rosa', 'sophia.fabiana.darosa@macaubas.com', '69920-172', 'Distrito Industrial', 'Terreo 1', 1);
    
INSERT INTO Produto(nome, descricao, preco) VALUES
	('Galaxy A03', 'Samsung Galaxy A03 Core Dual SIM 32 GB black 2 GB RAM, Tela PLS de 6.5", Bateria de 5000mAh', '699.99'),
    ('Smart Tv Roku Led Hd 32', 'ESPECIFICAÇÕES: Marca: Aoc Linha: 5195/78G Modelo: 32S5195 Modelo alfanumérico: 32S5195/78G Cor: Preta Voltagem: Bivolt', '1120.90'),
    ('Ventilador de mesa Mondial', 'Ventilador de mesa Mondial VSP-30 turbo preto com 6 pás cor prata, 30 cm de diâmetro 127 V', '132.90'),
    ('Jogo De Panelas Antiaderente', 'Peças incluídas: 1 Panela Antiaderente Cereja e Creme com tampa de vidro,16 cm de diâmetro e capacidade para 1,4 litros. 1 Panela Antiaderente Cereja e Creme com tampa de vidro,18 cm de diâmetro e capacidade para 1,8 litros. 1 Caçarola Antiaderente', '176.68'),
    ('Alto-falante Mondial CM-400', 'Alto-falante Mondial CM-400 portátil com bluetooth preto e vermelho 110V/220V', '509.50'),
    ('Tênis Unissex Furious 2 Mizuno', 'Marca: Mizuno Modelo: Furious 2 Gênero: Unissex Indicado Para: Dia a Dia Material: Tecido Mesh Tecnologia: Furious Cabedal: Tecido Mesh Entressola: EVA Solado: Borracha Palmilha: Removível Pisada: Neutra Peça da Foto: Tamanho 40', '197.99'),
    ('Liquidificador portátil Mondial Turbo Power', 'Capacidade de 2.2 L. A sua potência é de 550 W. Possui base antiderrapante. Lâmina resistente de aço inoxidável. Tampa dosadora incorporada. Funciona com 3 velocidades. Tem trava de segurança. Livre de BPA. Inclui filtro e manual.', '116.99'),
    ('Micro-ondas Panasonic inox 34L 127V', 'Potência de 900w. Display digital. Dimensões: 520 mm de largura, 325.2 mm de altura, 432.1mm de profundidade. Possui bloqueio de segurança. Inclui acessórios. Com descongelamento automático por peso. Possui luz no interior. Com porta espelhada.', '179.99'),
    ('Air fryer Cadence Pratic Fryer preto 127V', 'Potência: 1250W. Painel perila. Contém 1 cesta removível. Possui temperatura ajustável entre 90 °c e 200 °c. Com temporizador programável.', '299.90'),
    ('Purificador De Água Pure 4x Electrolux', 'Marca: Electrolux Modelo: PE12B Cor: Branco Potência: 90W Voltagem: Bivolt Capacidade do Reservatório: 0,8 L Quantidades de Temperatura: 3: (Natural, Fria, Gelada) Tipo de Material: Plástico Frequência: 50/60 Hz Modelo do Refil: PAPPCA50', '500.00'),
    ('Tablet Samsung Galaxy Tab A8', 'Sistema operacional: Android. Com processador Octa-Core de 2GHz. Resolução da tela de 1920px x 1200px. Com leitor micro-SD. Reproduções em Full HD. Possui GPS. Memória interna expansível até 1 TB com fonte externa.', '1279'),
    ('Geladeira frost free Brastemp', 'Modelo detalhado: BRM44HBBNA. Tipo de degelo: frost free. Com capacidade de 375 litros. Possui freezer superior. Eficiência energética A', '2779'),
    ('Apple iPhone 11 (64 GB) - Preto', 'Tela LCD Liquid Retina HD de 6,1 polegadas. (3) Resistência à água e poeira (até dois metros por até 30 minutos, IP68). (1) Sistema de câmera dupla com câmeras ultra-angular e grande-angular de 12 MP; modo Noite, modo Retrato e vídeo 4K a 60 fps.', '3100'),
    ('Notebook Acer Aspire 5 A515-45', 'Notebook Acer Aspire 5 A515-45 prata 15.6", AMD Ryzen 7 5700U 8GB de RAM 256GB SSD, AMD Radeon RX Vega 8 (Ryzen 4000) 60 Hz 1920x1080px Windows 11 Home', '3249.90'),
    ('Macbook Pro 2022 Apple, M2 256gb 8gb', 'Chip M2 da Apple com CPU de 8 núcleos, GPU de 10 núcleos e Neural Engine de 16 núcleos Memória unificada de 8 GB Tela Retina de 13 polegadas com True Tone Duas portas Thunderbolt / USB 4 Touch Bar e Touch ID Magic Keyboard retroiluminadoa', '9699.99');

INSERT INTO Venda(dataVenda, fkCliente) VALUES
	('2022-10-18 13:17:17', 1),
    ('2022-10-11 15:00:00', 2),
    ('2022-10-21 20:00:00', 3),
    ('2022-10-15 13:00:00', 4),
    ('2022-10-11 14:00:00', 5),
    ('2022-10-18 14:14:44', 6),
    ('2022-10-21 13:00:00', 7),
    ('2022-10-11 21:00:00', 8),
    ('2022-10-11 10:00:00', 9),
    ('2022-10-11 17:00:00', 10),
    ('2022-10-18 09:30:00', 10),
    ('2022-10-11 19:56:00', 9),
    ('2022-10-21 21:11:00', 8),
    ('2022-10-15 12:01:00', 7),
    ('2022-10-11 14:30:00', 6),
    ('2022-10-18 14:55:00', 5),
    ('2022-10-21 13:19:00', 4),
    ('2022-10-11 21:22:00', 3),
    ('2022-10-11 10:11:00', 2),
    ('2022-10-11 17:15:00', 1);

INSERT INTO Carrinho(fkVenda, fkProduto, desconto) VALUES
	(1, 2, 5), (1, 4, 15),
    (2, 1, null), (2, 11, 7), (2, 11, 7),
    (3, 1, 8), (3, 15, 10), (3, 2, 5),
    (4, 14, 9), (4, 7, 3),
    (5, 13, null), (5, 9, 20),
    (6, 7, 50), (6, 2, 30), (6, 7, 50),
    (7, 12, 25),
    (8, 15, 10), (8, 13, 10),
    (9, 3, 15), (9, 8, null),
    (10, 1, 3), (10, 10, 30),
    (11, 4, 11), (11, 2, null),
    (12, 8, 25), (12, 4, 40),
    (13, 4, 40), (13, 9, 30), (13, 4, 40),
    (14, 1, null), (14, 2, null),
    (15, 15, 5), (15, 6, 19),
    (16, 11, null), (16, 12, 10),
    (17, 1, 50), (17, 1, 50),
    (18, 10, 10), (18, 1, 13),
    (19, 14, 5),
    (20, 6, null);
    
-- Exibir todos os dados de cada tabela criada, separadamente    
SELECT * FROM Cliente;
SELECT * FROM Produto;
SELECT * FROM Venda;
SELECT * FROM Carrinho;

-- g) Exibir os dados dos clientes e os dados de suas respectivas vendas
SELECT v.idVenda 'Venda:', 
	   c.nome 'Nome:', c.email 'Email:', c.cep 'CEP:', c.bairro 'Bairro:', c.complemento 'Complemento:', indicacao.nome 'Indicado por:',
	   v.dataVenda 'Data Compra:', 
       p.nome 'Produto:', p.descricao 'Descrição:', p.preco 'Preço:', 
       car.desconto 'Deconto %' FROM Cliente c
	LEFT JOIN Cliente indicacao ON c.fkIndicador = indicacao.idCliente
	JOIN Venda v ON c.idCliente = v.fkCliente
    JOIN Carrinho car ON car.fkVenda = v.idVenda
	JOIN Produto p ON car.fkProduto = p.idProduto
		ORDER BY v.idVenda;

-- h) Exibir os dados de um determinado cliente (informar o nome do cliente na consulta) e os dados de suas respectivas vendas.
SELECT v.idVenda 'Venda:', 
	   c.nome 'Nome:', c.email 'Email:', c.cep 'CEP:', c.bairro 'Bairro:', c.complemento 'Complemento:', c.fkIndicador 'Indicação:',
	   v.dataVenda 'Data Compra:', 
       p.nome 'Produto:', p.descricao 'Descrição:', p.preco 'Preço:', 
       car.desconto 'Deconto %' FROM cliente c
	JOIN venda v ON c.idCliente = v.fkCliente
	JOIN carrinho car ON v.idVenda = car.fkVenda
    JOIN produto p ON p.idProduto = car.fkProduto
		WHERE c.nome = 'Lucas Silva';

-- i)  Exibir os dados dos clientes e de suas respectivas indicações de clientes.
SELECT cliente.nome 'Nome Cliente:', cliente.email 'Email:', cliente.cep 'CEP:', cliente.bairro 'Bairro', cliente.complemento 'Complemento:', indicacao.nome 'Indicado por:',
	   indicacao.email 'Email indicador:', indicacao.cep 'CEP indicador:', indicacao.bairro 'Bairro indicador:', indicacao.complemento 'Complemento indicador:' FROM cliente
	LEFT JOIN cliente indicacao ON cliente.fkIndicador = indicacao.idCliente;

-- j) Exibir os dados dos clientes indicados e os dados dos respectivos clientes indicadores, 
	-- porém somente de um determinado cliente indicador (informar o nome do cliente que indicou na consulta).
SELECT cliente.nome 'Nome Cliente:', cliente.email 'Email:', cliente.cep 'CEP:', cliente.bairro 'Bairro', cliente.complemento 'Complemento:', 
	   indicacao.nome 'Indicado por:', indicacao.email 'Email indicador:', indicacao.cep 'CEP indicador:', indicacao.bairro 'Bairro indicador:', indicacao.complemento 'Complemento indicador:' FROM cliente
	LEFT JOIN cliente indicacao ON cliente.fkIndicador = indicacao.idCliente
		WHERE indicacao.nome = 'Lucas Silva';

-- l) Exibir os dados dos clientes, os dados dos respectivos clientes que indicaram, os dados das respectivas vendas e dos produtos.
SELECT c.nome 'Nome:', c.email 'Email:', c.cep 'CEP:', c.bairro 'Bairro', c.complemento 'Complemento:',
	   'Indicado por:' ,indicador.nome 'Nome:', indicador.email 'Email:', indicador.cep 'CEP:', indicador.bairro 'Bairro:', indicador.complemento 'Complemento:', 
	   v.idVenda 'Venda:', v.dataVenda 'Data Venda:', 
       p.nome 'Produto:', p.preco 'Preço:', p.descricao 'Descrição:',
       car.desconto 'Desconto %' FROM cliente c
	LEFT JOIN cliente indicador ON c.fkIndicador = indicador.idCliente
    JOIN venda v ON c.idCliente = v.fkCliente
    JOIN carrinho car ON v.idVenda = car.fkVenda
    JOIN produto p ON p.idProduto = car.fkProduto
		ORDER BY v.idVenda;
        
-- m) Exibir apenas a data da venda, o nome do produto e a quantidade do produto numa determinada venda.
SELECT v.dataVenda 'Data Venda', p.nome, COUNT(p.idProduto) 'Quantidade vendida:'  FROM carrinho car
	JOIN venda v ON v.idVenda = car.fkVenda
    JOIN produto p ON p.idProduto = car.fkProduto
		WHERE v.idVenda = 2
			GROUP BY p.idProduto;

-- n) Exibir apenas o nome do produto, o valor do produto e a soma da quantidade de produtos vendidos agrupados pelo nome do produto.
SELECT p.nome, p.preco, COUNT(car.fkProduto) 'Qtde Vendida' FROM produto p
	JOIN carrinho car ON p.idProduto = car.fkProduto
		GROUP BY p.nome;

-- o) Inserir dados de um novo cliente. Exibir os dados dos clientes, das respectivas vendas, e os clientes que não realizaram nenhuma venda.
	INSERT INTO cliente VALUES
		(null, 'Vivian Silva', 'vivian@outlook.com', '59145-600', 'Passagem de Areia', 'Terreo 1', 1);
        
SELECT v.idVenda 'Venda:', 
	   c.nome 'Nome:', c.email 'Email:', c.cep 'CEP:', c.bairro 'Bairro:', c.complemento 'Complemento:', indicacao.nome 'Indicado por:',
	   v.dataVenda 'Data Compra:', 
       p.nome 'Produto:', p.descricao 'Descrição:', p.preco 'Preço:', 
       car.desconto 'Deconto %' FROM Cliente c
	LEFT JOIN Cliente indicacao ON c.fkIndicador = indicacao.idCliente
	LEFT JOIN Venda v ON c.idCliente = v.fkCliente
    LEFT JOIN Carrinho car ON car.fkVenda = v.idVenda
	LEFT JOIN Produto p ON car.fkProduto = p.idProduto
        ORDER BY v.idVenda;
        
-- p) Exibir o valor mínimo e o valor máximo dos preços dos produtos;
SELECT MIN(preco) 'Valor mínimo', MAX(preco) 'Valor máximo' FROM produto;

-- q) Exibir a soma e a média dos preços dos produtos;
SELECT SUM(preco) 'Soma', AVG(preco) 'Média' FROM produto;
	
-- r) Exibir a quantidade de preços acima da média entre todos os produtos;
SELECT preco FROM produto
	WHERE preco > (SELECT AVG(preco) FROM produto);
    
-- s) Exibir a soma dos preços distintos dos produtos;
SELECT SUM(DISTINCT(preco)) FROM produto;

-- t) Exibir a soma dos preços dos produtos agrupado por uma determinada venda;
SELECT SUM(p.preco) 'Valor total da 2° venda' FROM produto p
	JOIN carrinho car ON p.idProduto = car.fkProduto
		WHERE car.fkVenda = 2
        GROUP BY car.fkVenda;
