
--Criando tabela livro
CREATE TABLE `Livro` (
  `id` INT PRIMARY KEY,
  `titulo` VARCHAR,
  `autor` VARCHAR,
  `editora` VARCHAR,
  `ano_publicacao` INT,
  `categoria_id` INT
);
--Criando tabela usuario
CREATE TABLE `Usuario` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR,
  `email` VARCHAR,
  `telefone` VARCHAR
);
--Criando tabela emprestimo
CREATE TABLE `Emprestimo` (
  `id` INT PRIMARY KEY,
  `livro_id` INT,
  `usuario_id` INT,
  `data_emprestimo` DATE,
  `data_devolucao` DATE,
  `status` VARCHAR
);
--Criando tabela categoria
CREATE TABLE `Categoria` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR
);
--Criando tabela condicoes_livro
CREATE TABLE `condicoes_livro` (
  `condicoes_id` INT PRIMARY KEY,
  `apto_emprestimo` BOOLEAN,
  `livro_id` INT,
  `data_devolucao` DATE
);

--adicionanado chaves estrangeiras
ALTER TABLE `Livro` ADD FOREIGN KEY (`categoria_id`) REFERENCES `Categoria` (`id`);

ALTER TABLE `Emprestimo` ADD FOREIGN KEY (`livro_id`) REFERENCES `Livro` (`id`);

ALTER TABLE `Emprestimo` ADD FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id`);

ALTER TABLE `condicoes_livro` ADD FOREIGN KEY (`livro_id`) REFERENCES `Livro` (`id`);

ALTER TABLE `condicoes_livro` ADD FOREIGN KEY (`data_devolucao`) REFERENCES `Emprestimo` (`id`);
