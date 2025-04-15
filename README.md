"# Banco de Dados da Cafeteria " 

##criado em postiguersql


##Criação tabela

CREATE DATABASE CAFETERIA;
--------------------------------------
Criação das tabelas
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    preco NUMERIC(10, 2) NOT NULL,
    estoque INTEGER NOT NULL
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_nome TEXT NOT NULL,
    data DATE NOT NULL
);

CREATE TABLE pedido_itens (
    pedido_id INTEGER REFERENCES pedidos(id),
    produto_id INTEGER REFERENCES produtos(id),
    quantidade INTEGER NOT NULL,
    PRIMARY KEY (pedido_id, produto_id)
);