CREATE TABLE ProdutosMercado (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2),
    QuantidadeEmEstoque INT
);

-- Inserção de alguns dados fictícios
INSERT INTO ProdutosMercado (ProdutoID, NomeProduto, Categoria, Preco, QuantidadeEmEstoque) VALUES
(1, 'Arroz', 'Grãos', 5.99, 100),
(2, 'Feijão', 'Grãos', 4.99, 150),
(3, 'Leite', 'Laticínios', 3.49, 200),
(4, 'Carne de Frango', 'Carnes', 9.99, 50),
(5, 'Maçã', 'Frutas', 2.49, 120);

DELIMITER //
CREATE PROCEDURE RelatorioQuantidadeProdutosPorDia()
BEGIN
    SELECT 
        DATE(DataVenda) as DataCompra,
        SUM(Quantidade) as QuantidadeProdutos
    FROM 
        Vendas
    GROUP BY 
        DATE(DataVenda);
END //
DELIMITER ;

CALL RelatorioQuantidadeProdutosPorDia();
