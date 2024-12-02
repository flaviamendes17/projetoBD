/* Tabela de formulário */

CREATE TABLE formulario (
    id SERIAL PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    mensagem TEXT NOT NULL
);

/* Membros da equipe - pego da página sobre nós */

CREATE TABLE membros (
    id SERIAL PRIMARY KEY,
    sobre_id INT,
    nome VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (sobre_id) REFERENCES sobre_nos(id)
);

/* Tabela de links que está ligada aos membros da equipe */

CREATE TABLE links (
    id SERIAL PRIMARY KEY,
    membro_id INT,
    email VARCHAR(100), 
    instagram VARCHAR(100),
    linkedin VARCHAR(100),
    github VARCHAR(100),
    FOREIGN KEY (membro_id) REFERENCES membros(id)
);

INSERT INTO links (membro_id, email, instagram, linkedin, github) VALUES (1, 'alejandra.barros@aluno.senai.br', '4yo_b', 'Alejandra Barros', '4yo_b');
INSERT INTO links (membro_id, email, instagram, linkedin, github) VALUES (2, 'flavia.r.mendes@aluno.senai.br', 'flaviaramendes', 'Flavia Mendes', 'flaviamendes17');
INSERT INTO links (membro_id, email, instagram, linkedin, github) VALUES (3, 'giovanna.a.gomes6@aluno.senai.br', '_gialbag', 'Giovanna Alba Gomes', 'AlbaGomesG');
INSERT INTO links (membro_id, email, instagram, linkedin, github) VALUES (4, 'julia.guarnieri@aluno.senai.br', 'julia_guar', 'Júlia Guarnieri', 'juguarnieri');
INSERT INTO links (membro_id, email, instagram, linkedin, github) VALUES (5, 'luiz.g.carvalho11@aluno.senai.br', NULL, 'Luiz Gabriel Lopes Carvalho', 'LuizGabrielLopes');


/* Teste 1 */

    SELECT 
    m.id, 
    m.nome,
    m.foto, 
    m.descricao,
    l.email, 
    l.instagram,
    l.linkedin, 
    l.github 
FROM 
    membros m
LEFT JOIN 
    links l
ON 
    m.id = l.membro_id;

/* Adicionando as informações pedidas no formulário */

INSERT INTO formulario (nome, email, mensagem) VALUES ('Thiago', 'thiago@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO formulario (nome, email, mensagem) VALUES ('Giovanna', 'giovanna@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO formulario (nome, email, mensagem) VALUES ('Maria', 'maria@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO formulario (nome, email, mensagem) VALUES ('Marcelo', 'marcelo@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');
INSERT INTO formulario (nome, email, mensagem) VALUES ('Eduardo', 'eduardo@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.');

/* Adicionando os integrantes da tabela de membros - pego da página sobre nós */

INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Alejandra', 'https://github.com/juguarnieri/site-ingles/blob/main/img/barros.png?raw=true', 'Desenvolvedora');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Flavia', 'https://github.com/juguarnieri/site-ingles/blob/main/img/mendes.png?raw=true', 'Scrum Master');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Giovanna', 'https://raw.githubusercontent.com/juguarnieri/site-ingles/refs/heads/main/img/alba.png', 'Desenvolvedora');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Julia', 'https://github.com/juguarnieri/site-ingles/blob/main/img/guarnieri.png?raw=true', 'Product Owner');
INSERT INTO membros (sobre_id, nome, foto, descricao) VALUES (1, 'Luiz', 'https://i.ibb.co/qCd1zr6/luiz.jpg', 'Desenvolvedor');

-- SIMULADOS 

-- Simulado nível intermediário

INSERT INTO questoes (titulo, fonte_questao, texto_auxiliar, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, url_imagem, id_simulado) 
VALUES 
('QUESTÃO 1', '(Enem PPL 2014)', NULL, 'Implementar políticas adequadas de alimentação e nutrição é uma meta prioritária em vários países do mundo. A partir da campanha If you cant read it, why eat it?, os leitores são alertados para o perigo de', 'a) acessarem informações equivocadas sobre a formulação química de alimentos empacotados.', 'b) consumirem alimentos industrializados sem o interesse em conhecer a sua composição.', 'c) desenvolverem problemas de saúde pela falta de conhecimento a respeito do teor dos alimentos.', 'd) incentivarem crianças a ingerirem grande quantidade de alimentos processados e com conservantes.', 'e) ignorarem o aumento constante da obesidade causada pela má alimentação na fase de desenvolvimento da crianças.', 'B', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_5b21e0ec2a47532b367fdae86a1989d4_6953055.jpg.png', 2),

('QUESTÃO 2', '(Enem 2014)', 'Tennessee Mountain Properties Description
Own a renovated house for less than $290 per month!!!!!!!! New windows, siding, flooring (laminate throughout and tile in entry way and bathroom), kitchen cabinets, counter top, back door, fresh paint and laundry on main floor. Heat bills are very low due to a good solid house and an energy efficient furnace.
Disponível em: www.freerealestaeads.net. Acesso em: 30 nov. 2011 (adaptado).', 'Em jornais, há diversos anúncios que servem aos leitores. O conteúdo do anúncio veiculado por este texto interessará a alguém que esteja procurando', 'a) emprego no setor imobiliário.', 'b) imóvel residencial para compra.', 'c) serviço de reparos em domicílio.', 'd) pessoa para trabalho doméstico.', 'e) curso de decorador de interiores.', 'B', NULL, 2), 

('QUESTÃO 3', '(Brasil Escola)', NULL, 'Qual das alternativas apresenta apenas advérbios de tempo?', 'a) already, always, then, above', 'b) first, here, rarely, yet', 'c) below, before, never, hard', 'd) first, already, usually, yet', 'e) lately, still, next, finaly', 'E', NULL, 2),

('QUESTÃO 4', '(UNIP)', NULL, 'Its ________ honor to meet ________ young lady from Sweden.', 'a) a / an', 'b) an / an', 'c) a / a', 'd) an / a', NULL, 'D', NULL, 2),

('QUESTÃO 5', '(Enem PPL 2013)', NULL, 'Tirinhas são construídas a partir de contextos sociais e podem promover reflexões diversas. Essa tirinha provoca no leitor uma reflexão acerca da', 'a) divisão de espaço com os pais.', 'b) perda da atenção dos pais.', 'c) semelhança com os pais.', 'd) ausência dos pais.', 'e) submissão aos pais.', 'C', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_1c0a9e305b9fa37c94d922c126551b85_100906.jpg.jpeg', 2), 

('QUESTÃO 6', '(Enem PPL 2011)', NULL, 'Ao estabelecer uma relação entre a Matemática e o blues a partir da opinião pessoal de um dos rapazes, a charge sugere que', 'a) o blues, com seu ritmo depressivo, alivia o sentimento causado pela Matemática.', 'b) as canções iniciadas com a contagem de 1 a 4 fazem lembrar o blues.', 'c) as canções devem se iniciar com a contagem de 1 a 4 para se tornarem tristes.', 'd) o blues, assim como a Matemática, consegue despertar um sentimento inspirador.', 'e) o sentimento despertado pela Matemática serve como motivação para o blues.', 'A', 'https://edukavest.com.br/storage/uploads/questions/2024/9/enem-2012-charge-de-glasbergen-r.png', 2),

('QUESTÃO 7', '(Enem 2014)', 'The Road Not Taken (by Robert Frost)
Two roads diverged in a wood, and I —
I took the one less traveled by,
And that has made all the difference.
Disponível em: www.poetryfoundation.org. Acesso em: 29 nov. 2011 (fragmento).', 'Estes são os versos finais do famoso poema The Road Not Taken, do poeta americano Robert Frost. Levando-se em consideração que a vida é comumente metaforizada como uma viagem, esses versos indicam que o autor', 'a) festeja o fato de ter sido ousado na escolha que fez em sua vida.', 'b) lamenta por ter sido um viajante que encontrou muitas bifurcações.', 'c) viaja muito pouco e que essa escolha fez toda a diferença em sua vida.', 'd) reconhece que as dificuldades em sua vida foram todas superadas.', 'e) percorre várias estradas durante as diferentes fases de sua vida.', 'A', NULL, 2), 

('QUESTÃO 8', '(Enem PPL 2010)', 'Crystal Ball
Come see your life in my crystal glass —
Twenty-five cents is all you pay
Let me look into your past —
Heres what you had for lunch today:
Tuna salad and mashed potatoes,
Collard greens pea soup and apple juice,
Chocolate milk and lemon mousse.
You admit Ive got told it all?
Well, I know it, I confess,
Not by looking, in my ball,
But just by looking at your dress.
SILVERSTEIN, S. Falling up. New York: Harper Collins Publishers, 1996.', 'A curiosidade a respeito do futuro pode exercer um fascínio peculiar sobre algumas pessoas, a ponto de colocá-las em situações inusitadas. Na letra da música Crystal Ball, essa situação fica evidente quando é revelado à pessoa que ela', ' a) recebeu uma boa notícia.', ' b) ganhou um colar de pedras.', 'c) se sujou durante o almoço.', 'd) comprou vestidos novos.', 'e) encontrou uma moeda.', 'C', NULL, 2), 

('QUESTÃO 9', '(Unesp)', NULL, 'Indique a alternativa que expressa o mesmo significado de: When children watch TV, they encounter a wide range of places, people, and information.', 'a) When children watch TV, a wide range of places, people, and information will be encounter', 'b) When children watch TV, a wide range of places, people, and information are encountered.', 'c) When children watch TV, a wide range of places, people, and information is encountered.', ' d) When TV was watched, a wide range of places, people, and information are encountered by children.', 'e) A wide range of places, people, and information will be encountered when children watched TV.', 'C', NULL, 2),

('QUESTÃO 10', '(Enem, 2020)', 'Finally, Aisha finished with her customer and asked what colour Ifemelu wanted for her hair attachments.
“Colour four.”
“Not good colour,” Aisha said promptly.
“Thats what I use.”
“It look dirty. You dont want colour one?”
“Colour one it too black. It looks fake,” Ifemelu said, loosening her headwrap. “Sometimes I use colour two, but colour four is closest to my natural colour.”
[…]
She touched Ifemelus hair. “Why you dont have relaxer?”
“I like my hair the way God made it.”
“But how do you comb it? Hard to comb,” Aisha said.
Ifemelu had brought her own comb. She gently combed her hair, dense, soft and tightly coiled, until it framed her head like a halo. “Its not hard to comb if you moisturize it properly,” she said, slipping into the coaxing tone of the proselytizer that she used whenever she was trying to convince other black women about the merits of wearing their hair natural. Aisha snorted; she clearly could not understand why anybody would choose to suffer through combing natural hair, plucked a little attachment from the pile on the table ad began deftly to twist.
ADICHIE, C. Americanah: A novel. New York: Anchor Books, 2013.', 'A passagem do romance da escritora nigeriana traz um diálogo entre duas mulheres negras: a cabeleireira, Aisha, e a cliente, Ifemelu. O posicionamento da cliente é sustentado por argumentos que', 'a) reforçam um padrão de beleza.', 'b) retratam um conflito de gerações.', ' c) revelam uma atitude de resistência.', 'd) demonstram uma postura de imaturidade.', 'e) evidenciam uma mudança de comportamento.', 'C', NULL, 2),

('QUESTÃO 11', '(Enem, 2020)', NULL, 'Os recursos usados nesse pôster de divulgação de uma campanha levam o leitor a refletir sobre a necessidade de', 'a) criticar o tipo de tratamento dado à mulher.', 'b) rever o desempenho da mulher no trabalho.', 'c) questionar a sobrecarga de atribuições da mulher.', ' d) analisar as pesquisas acerca dos direitos da mulher.', ' e) censurar a mulher pelo uso de determinadas palavras.', 'A', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_8bfb4b7fe1f902f001f85c09fc3a5cfa_3643109.jpg.png', 2),

('QUESTÃO 12', '(Enem em inglês, 2018)', 'Dont write in English, they said,
English is not your mother tongue…
…The language I speak
Becomes mine, its distortions, its queerness
All mine, mine alone, it is half English, half
Indian, funny perhaps, but it is honest,
It is as human as I am human
…It voices my joys, my longings my
Hopes…
(Kamala Das, 1965:10)
GARGESH, R. South Asian Englishes. In: KACHRU, B.B.; KACHRU, Y.; NELSON, C.L. (Eds.). The Handbook of World English. Singapore: Blackwell, 2006', 'A poetisa Kamala Das, como muitos escritores indianos, escreve suas obras em inglês, apesar de essa não ser sua primeira língua. Nesses versos, ela', 'a) usa a língua inglesa como efeito humorístico.', ' b) recorre a vozes de vários escritores ingleses.', ' c) adverte sobre o uso distorcido da língua inglesa.', ' d) demonstra consciência de sua identidade linguística.', 'e) reconhece a incompreensão na sua maneira de falar inglês.', 'D', NULL, 2),

('QUESTÃO 13', '(Enem/2018)', 'Is it your opinion, Winston, that the past has real existence? [...] OBrien smiled faintly. I will put it more precisely. Does the past exist concretely, in space? Is there somewhere or other a place, a world of solid objects, where the past is still happening?
No.
Then where does the past exist, if at all?
In records. It is written down.
In records. And — —?
In the mind. In human memories.
In memory. Very well, then. We, the Party, control all records, and we control all memories. Then we control the past, do we not?
ORWELL. G, Nineteen Eighty-Four. New York: Signet Classics, 1977', 'O romance 1984 descreve os perigos de um Estado totalitário. A ideia evidenciada nessa passagem é que o controle do Estado se dá por meio do(a)', 'a) boicote a ideais libertários.', 'b) veto ao culto das tradições.', 'c) poder sobre memórias e registros.', ' d) censura a produções orais e escritas.', ' e) manipulação de pensamentos individuais.', 'C', NULL, 2),

('QUESTÃO 14', '(Enem 2012)', NULL, 'Cartuns são produzidos com o intuito de satirizar comportamentos humanos e assim oportunizam a reflexão sobre nossos próprios comportamentos e atitudes. Nesse cartum, a linguagem utilizada pelos personagens em uma conversa em inglês evidencia a', 'a) predominância do uso da linguagem informal sobre a língua padrão.', ' b) dificuldade de reconhecer a existência de diferentes usos da linguagem.', ' c) aceitação dos regionalismos utilizados por pessoas de diferentes lugares.', 'd) necessidade de estudo da língua inglesa por parte dos personagens.', 'e) facilidade de compreensão entre falantes com sotaques distintos.', 'B', 'https://media.brainly.com.br/image/rs:fill/w:640/q:75/plain/https://pt-static.z-dn.net/files/d83/3bd8dcc66b8683e7fc8052841235b1a3.jpg  DONAR. Disponível em: http://politicalgraffiti.wordpress.com. Acesso em: 17 ago. 2011.', 2),

('QUESTÃO 15', '(Enem/2018)', 'Lava Mae: Creating Showers on Wheels for the Homeless
San Francisco, according to recent city numbers, has 4,300 people living on the streets. Among the many problems the homeless face is little or no access to showers. San Francisco only has about 16 to 20 shower stalls to accommodate them.
But Doniece Sandoval has made it her mission to change that. The 51-year-old former marketing executive started Lava Mae, a sort of showers on wheels, a new project that aims to turn decommissioned city buses into shower stations for the homeless. Each bus will have two shower stations and Sandoval expects that they ll be able to provide 2,000 showers a week.
ANDREANO, C. Dísponível em: abcnews.go.com. Acesso: 26 jun. 2015 (adaptado).', 'A relação dos vocábulos shower, bus e homeless, no texto, refere-se a', 'a) empregar moradores de rua em lava a jatos para ônibus.', 'b) comissionar sem-teto para dirigir os ônibus da cidade.', 'c) exigir das autoridades que os ônibus municipais tenham banheiros.', 'd) abrigar dois mil moradores de rua em ônibus que foram adaptados.', ' e) criar acesso a banhos gratuitos para moradores de rua.', 'E', NULL, 2); 