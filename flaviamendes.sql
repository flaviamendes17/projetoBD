/*sobre nos*/

CREATE TABLE sobre_nos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto_principal TEXT NOT NULL,
    imagem_principal VARCHAR(255) NOT NULL
);

CREATE TABLE membros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sobre_id INT,
    nome VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (sobre_id) REFERENCES sobre_nos(id)
);

INSERT INTO sobre_nos (texto_principal, imagem_principal) VALUES ('Texto principal', 'https://i.postimg.cc/c1BJRwzP/foto-da-equipe.jpg');

INSERT INTO membros (sobre_id, nome, foto, descricao)
VALUES
(1, 'Alejandra', 'images/alejandra.jpg', 'Desenvolvedora'),
(1, 'Flavia', 'images/flavia.jpg', 'Scrum Master'),
(1, 'Giovanna', 'images/giovanna.jpg', 'Desenvolvedora'),
(1, 'Julia', 'images/julia.jpg', 'Product Owner'),
(1, 'Luiz', 'images/luiz.jpg', 'Desenvolvedor');
/*adicionar urls*/

/*entrevistas*/
CREATE TABLE entrevistadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE entrevistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    video_url VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    entrevistador_id INT,
    FOREIGN KEY (entrevistador_id) REFERENCES entrevistadores(id) ON DELETE SET NULL
);

/*Um entrevistador pode entrevistar vários entrevistados. relação (1:N)*/


INSERT INTO entrevistadores (nome, descricao) VALUES ('Flavia Mendes e Julia Guarnieri', 'Alunas do senai Valinhos, conhecendo mais sobre professoras de inglês.');

INSERT INTO entrevistas (titulo, descricao, video, foto, entrevistador_id) VALUES ('Entrevista com professora Daniela', 'Entrevista com professora de inglês - Daniela', 'https://www.youtube.com/watch?v=3Q3J2s3J4j4', 'https://i.postimg.cc/3wZzvZ8V/entrevista.jpg', 1),
('Entrevista com professora Tayna', 'Entrevista com professora de inglês - Tayna', 'https://www.youtube.com/watch?v=3Q3J2s3J4j4', 'https://i.postimg.cc/3wZzvZ8V/entrevista.jpg', 1),
('Entrevista com professora Patricia', 'Entrevista com professora de inglês - Patricia', 'https://www.youtube.com/watch?v=3Q3J2s3J4j4', 'https://i.postimg.cc/3wZzvZ8V/entrevista.jpg', 1);
