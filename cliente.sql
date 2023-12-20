--Criação da tabela de clientes:
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    NomeCliente VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    DataCadastro DATE
);

-- Inserção de alguns dados clientes:
INSERT INTO Clientes (ClienteID, NomeCliente, Email, Telefone, DataCadastro) VALUES
(1, 'João Silva', 'joao@example.com', '123456789', '2023-01-01'),
(2, 'Maria Oliveira', 'maria@example.com', '987654321', '2023-01-01'),
(3, 'Pedro Souza', 'pedro@example.com', '111223344', '2023-01-02');

--Criação da procedure para listar os clientes e seus dados:
DELIMITER //
CREATE PROCEDURE ListarClientesNomeDados()
BEGIN
    SELECT 
        ClienteID,
        NomeCliente,
        Email,
        Telefone,
        DataCadastro
    FROM 
        Clientes;
END //
DELIMITER ;

--Chamada da procedure para visualizar os resultados:
CALL ListarClientesNomeDados();

