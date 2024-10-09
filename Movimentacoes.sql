INSERT INTO Movimentacoes (tipo_movimento, id_produto, id_pessoa, quantidade, preco_unitario)
VALUES 
('E', 1, (SELECT id_pessoa FROM Pessoas WHERE nome = 'Empresa XYZ'), 5, 18.00), 
('S', 1, (SELECT id_pessoa FROM Pessoas WHERE nome = 'Jo�o Silva'), 2, 20.00), 
('E', 2, (SELECT id_pessoa FROM Pessoas WHERE nome = 'Empresa XYZ'), 3, 28.00), 
('S', 2, (SELECT id_pessoa FROM Pessoas WHERE nome = 'Jo�o Silva'), 1, 30.00); 
