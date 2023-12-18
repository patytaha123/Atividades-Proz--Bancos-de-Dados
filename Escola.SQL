 --crie uma tabela chamada ALUNO;  
 --defina os atributos da tabela;
 --adicione a chave primária de nome ID (identificador);
-- adicione um atributo nome do tipo varchar;
-- adicione um atributo e-mail do tipo varchar;
 --adicione um atributo endereço do tipo varchar.

-- Criar a tabela ALUNO
CREATE TABLE  ALUNO (
    Id INT PRIMARY KEY,
    Nome VARCHAR(50),
    Matricula INT,
    Email VARCHAR(100),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);

-- Inserir dados na tabela ALUNO
INSERT INTO ALUNO (Id, Nome, Email, Endereco, Telefone) VALUES
(01, 'João Carlos', 1234, 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11) 7825-4489'),
(02, 'João Vitor', 2345, 'Jvitor@gmail.com', 'Rua da saudade', '(11) 7825-6589'),
(03, 'Paulo Andre', 3456, 'Pandr@gmail.com', 'Rua do Sol', '(11) 7825-4495');



--Explicação dos atributos:

--Id: É a chave primária da tabela, identificando de forma única cada aluno.

--Nome: Representa o nome do aluno.

--Matricula: Representa o número de matrícula do aluno.

--Email: Representa o endereço de e-mail do aluno.

--Endereco: Representa o endereço do aluno.

--Telefone: Representa o número de telefone do aluno.

