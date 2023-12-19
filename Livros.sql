--Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:
--crie uma base de dados;
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
    
ALTER TABLE Autores
ADD COLUMN DataNascimento DATE,
ADD COLUMN GeneroLiterario VARCHAR(50);


UPDATE Autores
SET DataNascimento = '1902-10-31', GeneroLiterario = 'Poesia'
WHERE AutorID = 1;

UPDATE Autores
SET DataNascimento = '1927-03-06', GeneroLiterario = 'Realismo Mágico'
WHERE AutorID = 2;

UPDATE Autores
SET DataNascimento = '1775-12-16', GeneroLiterario = 'Romance'
WHERE AutorID = 3;

    
--utilize os comandos Joins para realizar consultas nas tabelas. 
SELECT Livros.Titulo, Livros.AnoPublicacao, Autores.Nome AS NomeAutor
FROM Livros
INNER JOIN Autores ON Livros.AutorID = Autores.AutorID;

SELECT Livros.Titulo, Livros.AnoPublicacao
FROM Livros
INNER JOIN Autores ON Livros.AutorID = Autores.AutorID
WHERE Autores.Nome = 'Carlos Drummond de Andrade';

SELECT Autores.Nome, COUNT(Livros.LivroID) AS NumeroLivros
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID
GROUP BY Autores.Nome;



