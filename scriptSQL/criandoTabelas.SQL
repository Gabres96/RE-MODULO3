-- Criando a base de dados
CREATE DATABASE IF NOT EXISTS "sistema_emprestimo"
USE "sistema_emprestimo"

-- criando a tabela categoria
CREATE TABLE IF NOT EXISTS Categoria {
  id INT [pk]
  nome VARCHAR
}
-- criando a tabela emprestimo
CREATE TABLE IF NOT EXISTS emprestimo {
  id INT [pk]
  livro_id INT [ref: > Livro.id]
  usuario_id INT [ref: > Usuario.id]
  data_emprestimo DATE
  data_devolucao DATE
  status VARCHAR
}

-- criando a tabela livro
CREATE TABLE IF NOT EXISTS livro {
  id INT [pk]
  titulo VARCHAR
  autor VARCHAR
  editora VARCHAR
  ano_publicacao INT
  categoria_id INT [ref: > Categoria.id]
}

-- criando a tabela usuario
CREATE TABLE IF NOT EXISTS usuario {
  id INT [pk]
  nome VARCHAR
  email VARCHAR
  telefone VARCHAR
}

CREATE TABLE IF NOT EXISTS condicoes_livro {
  condicoes_id INT [pk]
  apto_emprestimo BOOLEAN
  livro_id INT [ref: > Livro.id]
  data_devolucao DATE [ref: > Emprestimo.id]
}
