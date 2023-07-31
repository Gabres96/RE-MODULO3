--Inserindo dados na tabela categoria
INSERT INTO categoria
(nome)
 VALUES
 ("Ficção")
 
INSERT INTO categoria
(nome)
 VALUES
 ("Romance")
 
INSERT INTO categoria
(nome)
 VALUES
 ("Aventura")
 
INSERT INTO categoria
(nome)
 VALUES 
 ("Não Ficção")

INSERT INTO categoria
 VALUES
 ("Mistério")
 
 --Inserindo dados na tabela livro
 INSERT INTO livro
 (titulo, autor, editora, ano_publicacao)
 VALUES
 ("Dom Casmurro", "Machado de Assis", "Companhia das Letras", 1899)
INSERT INTO livro
(titulo, autor, editora, ano_publicacao)
 VALUES
 ("Harry Potter e a Pedra Filosofal", "J.K. Rowling", "Rocco", 1997,)
INSERT INTO livro 
(titulo, autor, editora, ano_publicacao)
VALUES
 ("O Senhor dos Anéis - A Sociedade do Anel", "J.R.R. Tolkien", "HarperCollins", 1954)
INSERT INTO livro
(titulo, autor, editora, ano_publicacao)

 VALUES ("Sapiens: Uma Breve História da Humanidade", "Yuval Noah Harari", "L&PM", 2015)
INSERT INTO livro
(titulo, autor, editora, ano_publicacao)
 VALUES ("Assassinato no Expresso Oriente", "Agatha Christie", "L&PM", 1934)
 
  --Inserindo dados na tabela usuario
  INSERT INTO usuario
(nome, email, telefone)
 VALUES
 ("João Silva", "joao.silva@example.com", "(11) 98765-4321")

INSERT INTO usuario
(nome, email, telefone)
 VALUES
 ("Maria Souza", "maria.souza@example.com", "(21) 99876-5432")

INSERT INTO usuario
(nome, email, telefone)
 VALUES
 ("Carlos Oliveira", "carlos.oliveira@example.com", "(31) 98888-7777")

INSERT INTO usuario
(nome, email, telefone)
 VALUES
 ("Ana Santos", "ana.santos@example.com", "(51) 99999-1234")

INSERT INTO usuario
(nome, email, telefone)
 VALUES
 ("Pedro Lima", "pedro.lima@example.com", "(61) 98888-1111")

   --Inserindo dados na tabela emprestimo
INSERT INTO emprestimo
(id_livro, is_usuario, data_emprestimo, data_devolucao, status)
 VALUES 
(1, 3, "2023-07-01", "2023-07-15", "Devolvido")


INSERT INTO emprestimo
(id_livro, is_usuario, data_emprestimo, data_devolucao, status)
 VALUES
 (2, 1, "2023-07-05", "2023-07-20", "Pendente")

INSERT INTO emprestimo
(id_livro, is_usuario, data_emprestimo, data_devolucao, status)
 VALUES
 (3, 2, "2023-07-10", "2023-07-24", "Pendente")

INSERT INTO emprestimo
(id_livro, is_usuario, data_emprestimo, data_devolucao, status)
 VALUES
 (4, 5, "2023-07-15", "2023-07-30", "Devolvido")

INSERT INTO emprestimo
(id_livro, is_usuario, data_emprestimo, data_devolucao, status)
 VALUES
 (5, 4, "2023-07-20", "2023-08-03", "Pendente")