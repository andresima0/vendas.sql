# vendas.sql

### SQL Sales System

### Portuguese Version:

1.	Criar um banco de dados com o nome “Sistema_Vendas_Online”;

2.	Selecionar o banco de dados Sistema_Vendas_Online;

3.	Criar uma tabela clientes com os seguintes campos; 

    *	id_cliente INT PRIMARY KEY auto_increment, 
    *	tipo char(2), 
    *	nome VARCHAR(100), 
    *	email VARCHAR(100), 
    *	telefone VARCHAR(20), 
    *	endereco VARCHAR(200) 
 
4.	Criar uma tabela pessoa_fisica. A tabela deve possuir os campos id_cliente e cpf; 

5.	Criar uma tabela pessoa_juridica. A tabela deve possuir os campos id_cliente e cnpj; 

6.	Relacionar as tabelas clientes com pessoa_fisica e clientes com pessoa_juridica; 

7.	Criar uma tabela de Endereços com os seguintes campos:

    *	id_endereco INT PRIMARY KEY, 
    *	nome_logradouro VARCHAR(100), 
    *	numero VARCHAR(10), 
    *	complemento VARCHAR(100), 
    *	bairro VARCHAR(50), 
    *	cidade VARCHAR(50), 
    *	estado VARCHAR(2), 
    *	cep VARCHAR(9) 
 
8.	Ajustar a tabela de Clientes para receber o id_endereco no lugar do campo endereco; 

9.	Inserir 20 registros para endereços. Usar os dados a seguir:
    * (1, 'Rua A', '123', 'Apto 101', 'Centro', 'São Paulo', 'SP', '01001-000'), 
    * (2, 'Rua B', '456', 'Casa 1', 'Jardim', 'Rio de Janeiro', 'RJ', '20000-000'), 
    * (3, 'Avenida C', '789', '', 'Liberdade', 'Belo Horizonte', 'MG', '30000-000'), 
    * (4, 'Rua D', '321', '', 'Barra Funda', 'São Paulo', 'SP', '01133-000'), 
    * (5, 'Rua E', '987', '', 'Santo Amaro', 'São Paulo', 'SP', '04750-000'), 
    * (6, 'Avenida F', '654', '', 'Jardim Paulista', 'São Paulo', 'SP', '01402-000'),   (7, 'Rua G', '555', 'Sala 2', 'Centro', 'Curitiba', 'PR', '80000-000'), 
    * (8, 'Rua H', '444', '', 'Cidade Nova', 'Belo Horizonte', 'MG', '31170-000'), 
    * (9, 'Avenida I', '333', '', 'Centro', 'Porto Alegre', 'RS', '90000-000'), 
    * (10, 'Rua J', '222', '', 'Centro', 'Salvador', 'BA', '40000-000'), 
    * (11, 'Avenida K', '111', '', 'Jardim Botânico', 'Rio de Janeiro', 'RJ', '22460-000'), 
    * (12, 'Rua L', '555', '', 'Vila Olímpia', 'São Paulo', 'SP', '04550-000'), 
    * (13, 'Avenida M', '888', '', 'Santo Antônio', 'Recife', 'PE', '50000-000'), 
    * (14, 'Rua N', '222', '', 'Alphaville', 'Barueri', 'SP', '06454-000'), 
    * (15, 'Rua O', '333', '', 'Centro', 'Campinas', 'SP', '13000-000'), 
    * (16, 'Avenida P', '444', '', 'Vila Mariana', 'São Paulo', 'SP', '04005-000'), 
    * (17, 'Rua Q', '777', '', 'Jardim São Luís', 'São Paulo', 'SP', '05840-000'), 
    * (18, 'Avenida R', '666', '', 'Centro', 'Brasília', 'DF', '70000-000'), 
    * (19, 'Rua S', '555', '', 'Praia de Belas', 'Porto Alegre', 'RS', '90110-000'),   (20, 'Rua T', '222', '', 'Centro', 'Fortaleza', 'CE', '60000-000'); 
 
10.	Inserir 6 novos clientes na tabela de clientes. Usar os dados a seguir: 
    * ('João Silva', 'PF',  '(11) 1234-5678', 'joao.silva@email.com', 1), 
    * ('Maria Santos', 'PF',  '(11) 9876-5432', 'maria.santos@email.com', 2), 
    * ('Empresa XYZ Ltda.', 'PJ',  '(11) 1111-1111', 'contato@empresaxyz.com', 3), 
    * ('Fulano de Tal', 'PF',  '(11) 2222-2222', 'fulano.tal@email.com', 4), 
    * ('Ciclano da Silva', 'PF', '(11) 3333-3333', 'ciclano.silva@email.com', 5), 
    * ('Empresa ABC S.A.', 'PJ', '(11) 4444-4444', 'contato@empresaabc.com', 6); 
 
11.	Inserir os cpfs na pessoa_fisica usando os dados inseridos na tabela de clientes. (Usar um select dentro do insert); 

12.	Inserir os cnpjs na pessoa_juridica usando os dados inseridos na tabela de clientes. (Usar um select dentro do insert); 

13.	Atualizar a coluna cpf  ou a coluna cnpj na tabela pessoa_fisica ou tabela pessoa_juridica, usando os valores a seguir: 
    *	cpf='123.456.789-10' para id_cliente=1; 
    *	cpf='987.654.321-09' para id_cliente=2; 
    *	cnpj='12.345.678/0001-90' para id_cliente=3; 
    *	cpf='111.222.333-44' para id_cliente=4; 
    *	cpf='456.789-123-00' para id_cliente=5; 
    *	cnpj='12.345.678/0001-90' para id_cliente=6; 
 
14.	Criar uma tabela de Fornecedores com os seguintes campos: 
    *	id_fornecedor INT PRIMARY KEY auto_increment, 
    *	tipo char(2), 
    *	nome VARCHAR(100), 
    *	email VARCHAR(100), 
    *	telefone VARCHAR(20), 
   	*	id_endereco INT 
 
16.	Criar uma tabela fornecedor_fisica. A tabela deve possuir os campos id_fornecedor e cpf;

17.	Criar uma tabela fornecedor_juridica. A tabela deve possuir os campos id_ fornecedor e cnpj; 

18.	Relacionar as tabelas fornecedores com fornecedor_fisica e fornecedores com fornecedor_juridica; 

19.	Inserir os dados a seguir na tabela de fornecedores:
    * ('PF', 'José da Silva', 'jose.silva@fornecedor.com.br', '(11) 1234-5678', 1), 
    * ('PF', 'Empresa X', 'contato@empresax.com.br', '(21) 9876-5432', 2), 
    * ('PJ', 'Empresa Y', 'contato@empresay.com.br', '(31) 2468-1357', 3), 
    * ('PF', 'Maria Oliveira', 'maria.oliveira@fornecedor.com.br', '(11) 9999-8888', 4), ('PJ', 'Empresa Z', 'contato@empresaz.com.br', '(41) 3691-2580', 5); 
 
20.	Inserir os cpfs no fornecedor_fisica usando os dados inseridos na tabela de fornecedores. (Usar um select dentro do insert); 

21.	Inserir os cnpjs no fornecedor_juridica usando os dados inseridos na tabela de fornecedores. (Usar um select dentro do insert); 

22.	Atualizar a coluna cpf ou a coluna cnpj na tabela fornecedor_fisica ou tabela fornecedor_juridica, usando os valores a seguir:

    * cpf='123.456.789-10' para id_fornecedor =1;
    * cpf='987.654.321-09' para id_fornecedor =2; 
    *	cnpj='12.345.678/0001-90' para id_fornecedor =3; 
    *	cpf='111.222.333-44' para id_fornecedor =4;
    *	cnpj='12.333.346/0001-90' para id_fornecedor =5; 

Usando as instruções adequadas, exibir o dicionário de dados e os dados armazenadas em cada tabela.
