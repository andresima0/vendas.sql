-- vendas.sql
-- Author: Andre Simao

-- PASSO 01
CREATE DATABASE Sistema_Vendas_Online;
-- PASSO 02
USE Sistema_vendas_Online;

-- PASSO 03
CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY auto_increment,
	nome VARCHAR(100),
    tipo CHAR(2),
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200)
);
DESC clientes;

-- PASSO 04 e 06
CREATE TABLE pessoa_fisica(
	id_cliente INT,
    cpf VARCHAR(14),
    PRIMARY KEY (id_cliente),
	FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
DESC pessoa_fisica;

-- PASSO 05 e 06
CREATE TABLE pessoa_juridica(
	id_cliente INT,
    cnpj VARCHAR(18),
    PRIMARY KEY (id_cliente),
	FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);
DESC pessoa_juridica;

-- PASSO 07
CREATE TABLE enderecos(
	id_endereco INT PRIMARY KEY,
    nome_logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(100),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    cep VARCHAR(9)    
);
DESC enderecos;

-- PASSO 08
ALTER TABLE clientes DROP COLUMN endereco;
ALTER TABLE clientes ADD COLUMN id_endereco INT;

DESC clientes;

-- PASSO 09
INSERT INTO enderecos (id_endereco, nome_logradouro, numero, 
complemento, bairro, cidade, estado, cep) VALUES
	(1, 'Rua A', '123', 'Apto 101', 'Centro', 'São Paulo', 'SP', '01001-000'),
    (2, 'Rua B', '456', 'Casa 1', 'Jardim', 'Rio de Janeiro', 'RJ', '20000-000'),
    (3, 'Avenida C', '789', '', 'Liberdade', 'Belo Horizonte', 'MG', '30000-000'),
    (4, 'Rua D', '321', '', 'Barra Funda', 'São Paulo', 'SP', '01133-000'),
    (5, 'Rua E', '987','', 'Santo Amaro', 'São Paulo', 'SP', '04750-000'),
    (6, 'Avenida F', '654', '', 'Jardim Paulista', 'São Paulo', 'SP', '01402-000'),
    (7, 'Rua G', '555', 'Sala 2', 'Centro', 'Curitiba', 'PR', '80000-000'),
    (8, 'Rua H', '444', '', 'Cidade Nova', 'Belo Horizonte', 'MG', '31170-000'),
    (9, 'Avenida I', '333', '', 'Centro', 'Porto Alegre', 'RS', '90000-000'),
    (10, 'Rua J', '222', '', 'Centro', 'Salvador', 'BA', '40000-000'),
    (11, 'Avenida K', '111', '', 'Jardim Botânico', 'Rio de Janeiro', 'RJ', '22460-000'),
    (12, 'Rua L', '555', '', 'Vila Olímpia', 'São Paulo', 'SP', '04550-000'),
    (13, 'Avenida M', '888', '', 'Santo Antônio', 'Recife', 'PE', '50000-000'),
    (14, 'Rua N', '222', '', 'Alphaville', 'Barueri', 'SP', '06454-000'),
    (15, 'Rua O', '333', '', 'Centro', 'Campinas', 'SP', '13000-000'),
    (16, 'Avenida P', '444', '', 'Vila Mariana', 'São Paulo', 'SP', '04005-000'),
    (17, 'Rua Q', '777', '', 'Jardim São Luís', 'São Paulo', 'SP', '05840-000'),
    (18, 'Avenida R', '666', '', 'Centro', 'Brasília', 'DF', '70000-000'),
    (19, 'Rua S', '555', '', 'Praia de Belas', 'Porto Alegre', 'RS', '90110-000'),
    (20, 'Rua T', '222', '', 'Centro', 'Fortaleza', 'CE', '60000-000');

SELECT * FROM enderecos;

-- PASSO 10
INSERT INTO clientes (nome, tipo, telefone, email, id_endereco) VALUES
		('João Silva', 'PF',  '(11) 1234-5678', 'joao.silva@email.com', 1),
        ('Maria Santos', 'PF',  '(11) 9876-5432', 'maria.santos@email.com', 2),
        ('Empresa XYZ Ltda.', 'PJ',  '(11) 1111-1111', 'contato@empresaxyz.com', 3),
        ('Fulano de Tal', 'PF',  '(11) 2222-2222', 'fulano.tal@email.com', 4),
        ('Ciclano da Silva', 'PF', '(11) 3333-3333', 'ciclano.silva@email.com', 5),
        ('Empresa ABC S.A.', 'PJ', '(11) 4444-4444', 'contato@empresaabc.com', 6);

SELECT * FROM clientes;

-- PASSO 11   
INSERT INTO pessoa_fisica (id_cliente)
	SELECT id_cliente FROM clientes WHERE tipo = 'PF';
    
SELECT * FROM pessoa_fisica;

-- PASSO 12
INSERT INTO pessoa_juridica (id_cliente)
	SELECT id_cliente FROM clientes WHERE tipo = 'PJ';

SELECT * FROM pessoa_juridica;

-- PASSO 13
set sql_safe_updates = 0;
UPDATE pessoa_fisica SET cpf = '123.456.789-10' WHERE id_cliente = 1;
UPDATE pessoa_fisica SET cpf = '987.654.321-09' WHERE id_cliente = 2;
UPDATE pessoa_juridica SET cnpj = '12.345.678/0001-90' WHERE id_cliente = 3;
UPDATE pessoa_fisica SET cpf = '111.222.333-44' WHERE id_cliente = 4;
UPDATE pessoa_fisica SET cpf = '456.789-123-00' WHERE id_cliente = 5;
UPDATE pessoa_juridica SET cnpj = '12.345.678/0001-90' WHERE id_cliente = 6;

SELECT * FROM pessoa_fisica;
SELECT * FROM pessoa_juridica;

set sql_safe_updates = 1;

-- PASSO 14
CREATE TABLE fornecedores(
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
	tipo CHAR(2),
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    id_endereco INT
);
DESC fornecedores;

-- PASSO 15 E 17
CREATE TABLE fornecedor_fisica(
	id_fornecedor INT,
    cpf VARCHAR(14),
    PRIMARY KEY (id_fornecedor),
	FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id_fornecedor)
);
DESC fornecedor_fisica;

-- PASSO 16 E 17
CREATE TABLE fornecedor_juridica(
	id_fornecedor INT,
    cnpj VARCHAR(18),
    PRIMARY KEY (id_fornecedor),
	FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id_fornecedor)
);
DESC fornecedor_juridica;

-- PASSO 18 
INSERT INTO fornecedores (tipo, nome, email, telefone, id_endereco) VALUES
	('PF', 'José da Silva', 'jose.silva@fornecedor.com.br', '(11) 1234-5678', 1),
    ('PF', 'Empresa X', 'contato@empresax.com.br', '(21) 9876-5432', 2),
    ('PJ', 'Empresa Y', 'contato@empresay.com.br', '(31) 2468-1357', 3),
    ('PF', 'Maria Oliveira', 'maria.oliveira@fornecedor.com.br', '(11) 9999-8888', 4),
    ('PJ', 'Empresa Z', 'contato@empresaz.com.br', '(41) 3691-2580', 5);
    
SELECT * FROM fornecedores;

-- PASSO 19   
INSERT INTO fornecedor_fisica (id_fornecedor)
	SELECT id_fornecedor FROM fornecedores WHERE tipo = 'PF';
    
SELECT * FROM fornecedor_fisica;

-- PASSO 20
INSERT INTO fornecedor_juridica (id_fornecedor)
	SELECT id_fornecedor FROM fornecedores WHERE tipo = 'PJ';

SELECT * FROM fornecedor_juridica;

-- PASSO 21
set sql_safe_updates = 0;
UPDATE fornecedor_fisica SET cpf='123.456.789-10' WHERE id_fornecedor =1;
UPDATE fornecedor_fisica SET cpf='987.654.321-09' WHERE id_fornecedor =2;
UPDATE fornecedor_juridica SET cnpj='12.345.678/0001-90' WHERE id_fornecedor =3;
UPDATE fornecedor_fisica SET cpf='111.222.333-44' WHERE id_fornecedor =4;
UPDATE fornecedor_juridica SET cnpj='12.333.346/0001-90' WHERE id_fornecedor =5;

SELECT * FROM fornecedor_fisica;
SELECT * FROM fornecedor_juridica;

set sql_safe_updates = 1;

-- APRESENTAÇÃO DE RESULTADOS

SHOW TABLES;

DESC clientes;
DESC pessoa_fisica;
DESC pessoa_juridica;
DESC enderecos;
DESC fornecedores;
DESC fornecedor_fisica;
DESC fornecedor_juridica;

SELECT * FROM clientes;
SELECT * FROM pessoa_fisica;
SELECT * FROM pessoa_juridica;
SELECT * FROM enderecos;
SELECT * FROM fornecedores;
SELECT * FROM fornecedor_fisica;
SELECT * FROM fornecedor_juridica;  