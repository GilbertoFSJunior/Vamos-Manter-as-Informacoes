USE loja;



INSERT INTO Usuarios (nome_usuario, senha_usuario)
VALUES ('op1', 'op1'), ('op2', 'op2');

INSERT INTO Produtos (nome_produto, quantidade, preco_venda)
VALUES 
('Produto A', 10, 20.00),
('Produto B', 5, 30.00),
('Produto C', 20, 15.00);

INSERT INTO Pessoas (nome, endereco, telefone, tipo_pessoa)
VALUES 
('Jo�o Silva', 'Rua A, 123', '(21) 99999-9999', 'F'), 
('Empresa XYZ', 'Avenida B, 456', '(21) 88888-8888', 'J'); 

INSERT INTO PessoaFisica (cpf, id_pessoa)
VALUES ('12345678909', (SELECT id_pessoa FROM Pessoas WHERE nome = 'Jo�o Silva'));

INSERT INTO PessoaJuridica (cnpj, id_pessoa)
VALUES ('12345678000195', (SELECT id_pessoa FROM Pessoas WHERE nome = 'Empresa XYZ'));
