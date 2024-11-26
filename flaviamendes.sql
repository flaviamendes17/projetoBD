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

INSERT INTO sobre_nos (texto_principal, imagem_principal) VALUES ('Somos uma equipe de seis alunos do SENAI, cursando Desenvolvimento de Sistemas.Nosso objetivo é ajudar jovens estudantes a se prepararem para o vestibular,com foco no aprendizado da língua inglesa.Criamos esta página para facilitar esse importante processo de estudos.', 'https://i.ibb.co/xHj8SRy/foto-equipe.jpg');

INSERT INTO membros (sobre_id, nome, foto, descricao)
VALUES
(1, 'Alejandra', 'https://github.com/juguarnieri/site-ingles/blob/main/img/barros.png?raw=true', 'Desenvolvedora'),
(1, 'Flavia', 'https://github.com/juguarnieri/site-ingles/blob/main/img/mendes.png?raw=true', 'Scrum Master'),
(1, 'Giovanna', 'https://raw.githubusercontent.com/juguarnieri/site-ingles/refs/heads/main/img/alba.png', 'Desenvolvedora'),
(1, 'Julia', 'https://github.com/juguarnieri/site-ingles/blob/main/img/guarnieri.png?raw=true', 'Product Owner'),
(1, 'Luiz', 'https://i.ibb.co/qCd1zr6/luiz.jpg', 'Desenvolvedor');


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

INSERT INTO entrevistas (titulo, descricao, video, foto, entrevistador_id) VALUES ('Entrevista com professora Daniela', 'Entrevista com professora de inglês - Daniela', 'https://youtu.be/-3I8cMuG0FM?feature=shared', 'https://raw.githubusercontent.com/juguarnieri/site-ingles/refs/heads/main/img/Daniela.png', 1),
('Entrevista com professora Tayna', 'Entrevista com professora de inglês - Tayna', 'https://youtu.be/BMiltqcugBs?feature=shared', 'https://i.ibb.co/QpdBvfv/tayna.jpg', 1),
('Entrevista com professora Patricia', 'Entrevista com professora de inglês - Patricia', 'https://youtu.be/RQkLnsFJ3uM?feature=shared', 'https://i.ibb.co/HXN7PFH/patricia.jpg', 1);
