-- Criar o banco de dados

CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Nacionalidade VARCHAR(50)
);
--crie tabelas nessa base de dados;
INSERT INTO Autores (AutorID, Nome, Nacionalidade) VALUES
    (1, 'Carlos Drummond de Andrade', 'Brasileira'),
    (2, 'Gabriel García Márquez', 'Colombiana'),
    (3, 'Jane Austen', 'Inglesa');

--em cada tabela, adicione atributos;
CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AnoPublicacao INT,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

--insira dados em cada tabela;
INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID) VALUES
    (101, 'Memórias Póstumas de Brás Cubas', 1881, 1),
    (102, 'Cem Anos de Solidão', 1967, 2),
    (103, 'Orgulho e Preconceito', 1813, 3),
    (104, 'A Rosa do Povo', 1945, 1),
    (105, 'Dom Casmurro', 1899, 1);
    

-- Criar o trigger
DELIMITER //
CREATE TRIGGER after_insert_livros
AFTER INSERT ON Livros
FOR EACH ROW
BEGIN
    -- Atualizar o número de livros escritos pelo autor
    UPDATE Autores
    SET LivrosEscritos = LivrosEscritos + 1
    WHERE AutorID = NEW.AutorID;
END;
//
DELIMITER ;

