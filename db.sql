
CREATE TABLE jogatinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE jogadores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    jogatina_id INT NOT NULL,
    FOREIGN KEY (jogatina_id) REFERENCES jogatinas(id) ON DELETE CASCADE
);


CREATE TABLE partidas (
    id SERIAL PRIMARY KEY,
    nome_jogo VARCHAR(100) NOT NULL,
    vencedor_id INT, 
    segundo_lugar_id INT, 
    jogatina_id INT NOT NULL,
    FOREIGN KEY (vencedor_id) REFERENCES jogadores(id) ON DELETE SET NULL,
    FOREIGN KEY (segundo_lugar_id) REFERENCES jogadores(id) ON DELETE SET NULL,
    FOREIGN KEY (jogatina_id) REFERENCES jogatinas(id) ON DELETE CASCADE
);


