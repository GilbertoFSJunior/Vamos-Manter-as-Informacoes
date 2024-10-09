USE master;
GO

-- Criando o login
CREATE LOGIN loja WITH PASSWORD = 'loja', CHECK_POLICY = OFF;
GO

-- Criand o banco de dados
CREATE DATABASE loja;
GO

-- Usando o banco de dados
USE loja;
GO

-- Criar o usuário associado ao login
CREATE USER loja FOR LOGIN loja;
GO

-- Criar as tabelas (como já feito anteriormente)
CREATE TABLE Usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nome_usuario VARCHAR(100),
    senha_usuario VARCHAR(100)
);

CREATE TABLE Pessoas (
    id_pessoa INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    tipo_pessoa CHAR(1) 
);

CREATE TABLE PessoaFisica (
    cpf VARCHAR(11) PRIMARY KEY,
    id_pessoa INT FOREIGN KEY REFERENCES Pessoas(id_pessoa) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PessoaJuridica (
    cnpj VARCHAR(14) PRIMARY KEY,
    id_pessoa INT FOREIGN KEY REFERENCES Pessoas(id_pessoa) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Produtos (
    id_produto INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100),
    quantidade INT,
    preco_venda DECIMAL(10, 2)
);

CREATE TABLE Movimentacoes (
    id_movimento INT IDENTITY(1,1) PRIMARY KEY,
    tipo_movimento CHAR(1) CHECK (tipo_movimento IN ('E', 'S')), 
    id_produto INT FOREIGN KEY REFERENCES Produtos(id_produto) ON DELETE CASCADE ON UPDATE CASCADE,
    id_pessoa INT FOREIGN KEY REFERENCES Pessoas(id_pessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    quantidade INT,
    preco_unitario DECIMAL(10, 2)
);
0),
    quantidade INT,
    preco_venda DECIMAL(10, 2)
);

CREATE TABLE Movimentacoes (
    id_movimento INT IDENTITY(1,1) PRIMARY KEY,
    tipo_movimento CHAR(1) CHECK (tipo_movimento IN ('E', 'S')), 
    id_produto INT FOREIGN KEY REFERENCES Produtos(id_produto) ON DELETE CASCADE ON UPDATE CASCADE,
    id_pessoa INT FOREIGN KEY REFERENCES Pessoas(id_pessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    quantidade INT,
    preco_unitario DECIMAL(10, 2)
);

