CREATE TABLE sobre_nos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto_principal TEXT NOT NULL,
    imagem_principal VARCHAR(255) NOT NULL,
);

CREATE TABLE membros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sobre_id INT,
    nome VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (sobre_id) REFERENCES sobre_nos(id)
);

INSERT INTO sobre_nos (texto_principal, imagem_principal) VALUES ('Texto principal', 'imagem.jpg');

INSERT INTO membros (sobre_id, nome, foto, descricao)
VALUES
(1, 'Alejandra', 'images/.jpg', 'Desenvolvedora'),
(1, 'Flavia', 'images/.jpg', 'Scrum Master'),
(1, 'Giovanna', 'images/.jpg', 'Desenvolvedora');
(1, 'Julia', 'images/.jpg', 'Product Owner');
(1, 'Luiz', 'images/.jpg', 'Desenvolvedor');


