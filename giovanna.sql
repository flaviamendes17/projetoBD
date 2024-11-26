/* Formulário de formulário */

CREATE TABLE formulario (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    mensagem TEXT NOT NULL
);

/* Membros da equipe - pego da página sobre nós */

CREATE TABLE membros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sobre_id INT,
    nome VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (sobre_id) REFERENCES sobre_nos(id)
);

/* Adicionando as informações pedidas no formulário */

INSERT INTO contato (nome, email, mensagem) VALUES ('Thiago', 'thiago@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO contato (nome, email, mensagem) VALUES ('Giovanna', 'giovanna@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO contato (nome, email, mensagem) VALUES ('Maria', 'maria@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO contato (nome, email, mensagem) VALUES ('Marcelo', 'marcelo@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO contato (nome, email, mensagem) VALUES ('Eduardo', 'eduardo@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');

/* Adicionando os integrantes da tabela de membros - pego da página sobre nós */

INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Alejandra', 'https://github.com/juguarnieri/site-ingles/blob/main/img/barros.png?raw=true', 'Desenvolvedora');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Flavia', 'https://github.com/juguarnieri/site-ingles/blob/main/img/mendes.png?raw=true', 'Scrum Master');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Giovanna', 'https://raw.githubusercontent.com/juguarnieri/site-ingles/refs/heads/main/img/alba.png', 'Desenvolvedora');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Julia', 'https://github.com/juguarnieri/site-ingles/blob/main/img/guarnieri.png?raw=true', 'Product Owner');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Luiz', 'https://i.ibb.co/qCd1zr6/luiz.jpg', 'Desenvolvedor');