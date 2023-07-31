-- criando a tabela categoria
Table Categoria {
  id INT [pk]
  nome VARCHAR
}
-- criando a tabela emprestimo
Table emprestimo {
  id INT [pk]
  livro_id INT [ref: > Livro.id]
  usuario_id INT [ref: > Usuario.id]
  data_emprestimo DATE
  data_devolucao DATE
  status VARCHAR
}

-- criando a tabela livro
Table livro {
  id INT [pk]
  titulo VARCHAR
  autor VARCHAR
  editora VARCHAR
  ano_publicacao INT
  categoria_id INT [ref: > Categoria.id]
}

-- criando a tabela usuario
Table usuario {
  id INT [pk]
  nome VARCHAR
  email VARCHAR
  telefone VARCHAR
}