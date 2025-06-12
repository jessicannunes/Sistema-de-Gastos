CREATE TABLE tb_natureza (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(100)
)

CREATE TABLE tb_transacao(
	id INTEGER PRIMARY KEY,
	tb_natureza_id INTEGER NOT NULL REFERENCES tb_natureza(id),
	descricao VARCHAR(100) NOT NULL,
	valor NUMERIC(12,2) NOT NULL,
	data_gasto DATE NOT NULL
)

CREATE TABLE tb_categorias(
	id INTEGER PRIMARY KEY,
	descricao VARCHAR(100),
	tb_transacao_id INTEGER NOT NULL REFERENCES tb_transacao(id)
)