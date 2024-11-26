CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    imagem_url TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL
);