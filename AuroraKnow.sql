CREATE TABLE Empresas (
	id BIGSERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cnpj VARCHAR(25) NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	site VARCHAR(50) NOT NULL,
	email VARCHAR(30) NOT NULL
);

CREATE TABLE Rotas (
	id BIGSERIAL PRIMARY KEY,
	destino VARCHAR(150) NOT NULL,
	origem VARCHAR(150) NOT NULL
);

CREATE TABLE Usuarios (
	id BIGSERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	sobre_nome VARCHAR(200) NOT NULL,
	email VARCHAR(200) NOT NULL
);

CREATE TABLE Paradas (
	id BIGSERIAL PRIMARY KEY,
	latitude INT NOT NULL,
	longitude INT NOT NULL,
	ponto_referencia VARCHAR(300) NOT NULL
);

CREATE TABLE empresas_rotas (
	id_empresa INTEGER NOT NULL,
	id_rota INTEGER NOT NULL,
	FOREIGN KEY (id_empresa) REFERENCES Empresas (id),
	FOREIGN KEY (id_rota) REFERENCES Rotas (id)
);

CREATE TABLE usuarios_rotas (
	id_usuario INTEGER NOT NULL,
	id_rota INTEGER NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES Usuarios (id),
	FOREIGN KEY (id_rota) REFERENCES Rotas (id)
);

CREATE TABLE paradas_rotas (
	id_parada INTEGER NOT NULL,
	id_rota INTEGER NOT NULL,
	FOREIGN KEY (id_parada) REFERENCES Paradas (id),
	FOREIGN KEY (id_rota) REFERENCES Rotas (id)
);