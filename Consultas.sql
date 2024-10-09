SELECT * FROM Pessoas p
JOIN PessoaFisica pf ON p.id_pessoa = pf.id_pessoa;

SELECT * FROM Pessoas p
JOIN PessoaJuridica pj ON p.id_pessoa = pj.id_pessoa;

SELECT m.*, p.nome AS fornecedor, pr.nome_produto
FROM Movimentacoes m
JOIN Produtos pr ON m.id_produto = pr.id_produto
JOIN Pessoas p ON m.id_pessoa = p.id_pessoa
WHERE m.tipo_movimento = 'E';


SELECT m.*, p.nome AS comprador, pr.nome_produto
FROM Movimentacoes m
JOIN Produtos pr ON m.id_produto = pr.id_produto
JOIN Pessoas p ON m.id_pessoa = p.id_pessoa
WHERE m.tipo_movimento = 'S';
