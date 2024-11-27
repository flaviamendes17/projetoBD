CREATE DATABASE portal_ingles29;
\c portal_ingles29

-- TABELA DE SIMULADOS -- ATUALIZADA
CREATE TABLE simulados (
    id SERIAL PRIMARY KEY,
    dificuldade VARCHAR(150) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL
);


-- TABELA DE QUESTÕES --
CREATE TABLE questoes (
    id_questoes SERIAL PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    fonte_questao VARCHAR(50),
    texto_auxiliar TEXT,
    enunciado TEXT NOT NULL,
    alternativa_a TEXT NOT NULL,
    alternativa_b TEXT NOT NULL,
    alternativa_c TEXT NOT NULL,
    alternativa_d TEXT NOT NULL,
    alternativa_e TEXT,
    resposta_correta CHAR(1) NOT NULL,
    url_imagem VARCHAR(500),
    id_simulado INT NOT NULL,

    FOREIGN KEY (id_simulado) REFERENCES simulados(id)
);


-- INSEÇÕES NAS TABELAS:

INSERT INTO simulados (dificuldade, descricao, url) VALUES 
('NÍVEL BÁSICO', 'Comece testando seus conhecimento com um simulado básico.', 'https://site-ingles-theta.vercel.app/pages_html/simulado_basico.html'),
('NÍVEL INTERMEDIÁRIO', 'Está na hora de se desafiar mais, faça esse simulado intermediário.', 'https://site-ingles-theta.vercel.app/pages_html/simulado_intermediario.html'),
('NÍVEL AVANÇADO', 'Tem ido muito bem, que tal testar seu inglês avançado?', 'https://site-ingles-theta.vercel.app/pages_html/simulado_avancado.html'),
('NÍVEL PROFICIENTE', 'Agora resta a parte final para ver se aprendeu bem, teste tudo que aprendeu com esse simulado de nível proficiente.', 'https://site-ingles-theta.vercel.app/pages_html/simulado_proficiente.html');

-- TESTE:
SELECT * FROM simulados;

INSERT INTO questoes (titulo, fonte_questao, texto_auxiliar, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, url_imagem, id_simulado) 
VALUES 
('QUESTÃO 1', '(Enem 2021)', NULL, 'A presença de at odds with na fala da personagem do cartum revela o(a):', ' a) necessidade de acessar informações confiáveis.', 'b) dificuldade de conciliar diferentes anseios.', 'c) desejo de dominar novas tecnologias.', 'd) desafio de permanecer imparcial.', 'e) vontade de ler notícias positivas.', 'B', 'https://blogger.googleusercontent.com/img/aAVvXsEhCvRSIDqYEwlUR-cW3xR4EpXkw35jJeGURtAx8e4uvrtKEkBvhGIM13Be357bLKauia5nZqyvEoG6-nkT9W8dIbSmF6UIq_zG2SDzKclfJhtK3WilvF0QDtksY6qDgMH7Z-eTibyCaY5oRWwpL7tFwsE8miV0qhofs9rMicZkzCusC_1_Ym0zlEjoL=s600', 1),

('QUESTÃO 2', '(Enem 2019)', 'A pet is certainly a great friend. After a difficult day, pet owners quite literally feel the love. In fact, for nearly 25 years, research has shown that living with pets provides certain health benefits. Pets help lower blood pressure and lessen anxiety. They boost our immunity. They can even help you get dates. Allergy Fighters: A growing number of studies have suggested that kids growing up in a home with "furred animals" will have less risk of allergies and asthma. Date Magnets: Dogs are great for making love connections. Forget Internet matchmaking – a dog is a natural conversation starter. Dogs for the Aged: Walking a dog or just caring for a pet – for elderly people who are able – can provide exercise and companionship. Good for Mind and Soul: Like any enjoyable activity, playing with a dog can elevate levels of serotonin and dopamine – nerve transmitters that are known to have pleasurable and calming properties. Good for the Heart: Heart attack patients who have pets survive longer than those without, according to several studies.', 'Ao discutir sobre a influência de animais de estimação no bem-estar do ser humano, a autora, a fim de fortalecer seus argumentos, utiliza palavras e expressões como research, a growing number of research e several studies com o objetivo de:',  ' a) mostrar que animais de estimação ajudam na cura de doenças como alergias e asma.', 'b) esclarecer sobre o modo como os idosos devem se relacionar com animais de estimação.','c) fornecer dados sobre os impactos de animais de estimação nas relações amorosas.', 'd) explicar como o contato com animais de estimação pode prevenir ataques cardíacos.',  'e) convencer sobre os benefícios da adoção de animais de estimação para a saúde.', 'E', NULL, 1),

('QUESTÃO 3', '(Enem 2016)', 'BOGOF is used as a noun as in There are some great bogofs on at the supermarket or an adjective, usually with a word such as offer or deal — there are some great bogof offers in store . When you combine the first letters of the words in a phrase or the name of an organisation, you have an acronym. Acronyms are spoken as a word so NATO (North Atlantic Treaty Organisation) is not pronounced N-A-T-O. We say NATO. Bogof, when said out loud, is quite comical for a native speaker, as it sounds like an insult, Bog off! meaning go away, leave me alone, slightly childish and a little old-fashioned. BOGOF is the best-known of the supermarket marketing strategies. The concept was first imported from the USA during the 1970s recession, when food prices were very high. It came back into fashion in the late 1990s, led by big supermarket chains trying to gain a competitive advantage over each other. Consumers were attracted by the idea that they could get something for nothing. Who could possibly say no?',' Considerando-se as informações do texto, a expressão bogof é usada para:',  ' a) anunciar mercadorias em promoção.',  'b) pedir para uma pessoa se retirar.',  'c) comprar produtos fora de moda.',  'd) indicar recessão na economia.',  'e) chamar alguém em voz alta.', 'A', NULL, 1),

('QUESTÃO 4', '(Enem 2022)', NULL, 'Na tirinha, o comportamento da mulher expressa:', ' a) revolta com a falta de sorte.','b) receio pelo futuro do casamento.',  'c) gosto pela prática da leitura.',  ' d) entusiasmo com os livros de terror.', 'e) rejeição ao novo tipo de residência.', 'C', 'https://kuadro-static.storage.googleapis.com/050548bae767435282242b1c404c6348/0000.png', 1),

('QUESTÃO 5','(Enem 2023)', ' No man is an island,Entire of itself; Every man is a piece of the continent, A part of the main. [...] Any man s death diminishes me, Because I am involved in mankind.' ,' Nesse poema, a expressão “No man is an island” ressalta o(a):', ' a) medo da morte.','b) ideia de conexão.', 'c) conceito de solidão.', 'd) risco de devastação.', 'e) necessidade de empatia.', 'B', NULL, 1),

('QUESTÃO 6', '(Enem 2022)' , 'As my official bio reads, I was made in Cuba, assembled is Spain, and imported to the United States – meaning my mother, seven months pregnant, and the rest of my family arrived as exiles from Cuba to Madrid, where I was born. Less than two months later, we emigrated once more and settled in New York City, then eventually in Miami, where I was raised and educated. Although technically we lived in the United States, the Cuban community was culturally insular in Miami during the 1970s, bonded together by the trauma of exile. What s more, it seemed that practically everyone was Cuban: my teachers, my classmates, the mechanic, the bus driver. I didn t grow up feeling different or treated as a minority. The few kids who got picked on in my grade school were the ones with freckles and funny last names like Dawson and O Neil.', 'Ao relatar suas vivências, o autor destaca o(a):', ' a) qualidade da educação formal em Miami.', 'b) prestígio da cultura cubana nos Estados Unidos.', 'c) oportunidade de qualificação profissional em Miami.', 'd) fortalecimento do elo familiar em comunidades estadunidenses.', 'e) cenário da integração de cubanos nos Estados Unidos.', 'E', NULL, 1),

('QUESTÃO 7', '(Enem 2022)' , 'Two hundred years ago, Jane Austen lived in a world where single men boasted vast estates; single ladies were expected to speak several languages, sing and play the piano. In both cases, it was, of course, advantageous if you looked good too. So, how much has – or hasn t – changed? Dating apps opaquely outline the demands of today s relationship market; users ruminate long and hard over their choice of pictures and what they write in their biographies to hook in potential lovers, and that s just your own profile. What do you look for in a future partner s profile – potential signifiers of a popular personality, a good job, a nice car? These apps are a poignant reminder of the often classist atitudes we still adopt, as well as the financial and aesthetic expectations we demand from potential partners.', 'O texto aborda relações interpessoais com o objetivo de:', ' a) problematizar o papel de gênero em casamentos modernos.', 'b) apontar a relevância da educação formal na escolha de parceiros.', 'c) comparar a expectativa de parceiros amorosos em épocas distintas.', 'd) discutir o uso de aplicativos para proporcionar encontros românticos.', 'e) valorizar a importância da aparência física na seleção de pretendentes.', 'C', NULL, 1),

('QUESTÃO 8', '(Enem 2020)', NULL, 'No cartum, o estudante faz uma pergunta usando turn this thing on por:', ' a) suspeitar que o colega está com seu material por engano.', 'b) duvidar que o colega possa se tornar um bom aluno.', 'c) desconfiar que o livro levado é de outra matéria.', 'd) entender como desligada a postura do colega.', 'e) desconhecer como usar um livro impresso.', 'E', 'https://media.brainly.com.br/image/rs:fill/w:1080/q:75/plain/https://pt-static.z-dn.net/files/de6/fe2e4d354289169973d812038323c68b.png', 1),

('QUESTÃO 9', '(Enem 2022)' , 'A Teen s View of Social Media Instagram is made up of all photos and videos. There is the home page that showcases the posts from people you follow, an explore tab which offers posts from accounts all over the world, and your own page, with a notification tab to show who likes and comments on your posts. It has some downsides though. It is known to make many people feel insecure or down about themselves because the platform showcases the highlights of everyone s lives, while rarely showing the negatives. This can make one feel like their life is not going as well as others, contributing to the growing rates of anxiety or depression in many teens today. There is an underlying desire for acceptance through the number of likes or followers one has.', 'O termo “downsides” introduz a ideia de que o Instagram é responsável por:', ' a) oferecer recursos de fotografia.', 'b) divulgar problemas dos usuários.', 'c) estimular aceitação dos seguidores.', ' d) provocar ansiedade nos adolescentes.', 'e) aproximar pessoas ao redor do mundo.', 'D', NULL, 1),


('QUESTÃO 10', '(Enem 2021)' , 'Becoming Back in the ancestral homeland of Michelle Obama, black women were rarely granted the honorific Miss or Mrs., but were addressed by their first name, or simply as “gal” or “auntie” or worse. This so openly demeaned them that many black women, long after they had left the South, refused to answer if called by their first name. A mother and father in 1970s Texas named their newborn “Miss” so that white people would have no choice but to address their daughter by that title. Black women were meant for the field or the kitchen, or for use as they saw fit. They were, by definition, not ladies. The very idea of a black woman as first lady of the land, well, that would have been unthinkable.', 
'O uso do vocábulo “unthinkable” ressalta que:', ' a) a ascensão social era improvável.', 'b) a mudança de nome era impensável.', 'c) a origem do indivíduo era irrelevante.', ' d) o trabalho feminino era inimaginável.', 'e) o comportamento parental era irresponsável.', 'A', NULL, 1),

('QUESTÃO 11', '(Enem 2020)' , 'A Minor Bird I have wished a bird would fly away, And not sing by my house all day; Have clapped my hands at him from the door When it seemed as if I could bear no more. The fault must partly have been in me. The bird was not to blame for his key. And of course there must be something wrong In wanting to silence any song.', 'No poema de Robert Frost, as palavras “fault” e “blame” revelam por parte do eu lírico uma:', ' a) culpa por não poder cuidar do pássaro.', 'b) atitude errada por querer matar o pássaro.', 'c) necessidade de entender o silêncio do pássaro.', ' d) sensibilização com relação à natureza do pássaro.', 'e) irritação quanto à persistência do canto do pássaro.', 'D', NULL, 1),

('QUESTÃO 12', '(Enem 2011)', NULL , 'Na fase escolar, é prática comum que os professores passem atividades extraclasse e marquem uma data para que as mesmas sejam entregues para correção. No caso da cena da charge, a professora ouve uma estudante apresentando argumentos para:', ' a) discutir sobre o conteúdo do seu trabalho já entregue.', 'b) elogiar o tema proposto para o relatório solicitado.', 'c) sugerir temas para novas pesquisas e relatórios.', 'd) reclamar do curto prazo para entrega do trabalho.', 'e) convencer de que fez o relatório solicitado.', 'E', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTa1OONJJ56SFY6XCW3-bYfg4BjhxH6hiy6MzJEwAVQTLhbfwHC', 1),

('QUESTÃO 13', '(Enem 2012)' , 'Quotes Of The Day Friday, Sep. 02, 2011 “There probably was a shortage of not just respect and boundaries but also love. But you do need, when they cross the line and break the law, to be very tough.” British Prime Minister DAVID CAMERON, arguing that those involved in the recent riots in England need “tough love” as he vows to “get to grips” with the country s problem families.', 'A respeito dos tumultos causados na Inglaterra em agosto de 2011, as palavras de alerta de David Cameron têm como foco principal:', ' a) enfatizar a discriminação contra os jovens britânicos e suas famílias.', 'b) criticar as ações agressivas demonstradas nos tumultos pelos jovens.', 'c) estabelecer relação entre a falta de limites dos jovens e o excesso de amor.', 'd) reforçar a ideia de que os jovens precisam de amor, mas também de firmeza.', 'e) escrever o tipo de amor que gera problemas às famílias de jovens britânicos.', 'D', NULL, 1),

('QUESTÃO 14', '(Enem 2019)' , ' Children If children live with criticism, they learn to condemn. If children live with fear, they learn to be apprehensive. If children live with pity, they learn to feel sorry for themselves. If children live with ridicule, they learn to feel shy. If children live with tolerance, they learn patience. If children live with praise, they learn appreciation. If children live with acceptance, they learn to love. If children live with approval, they learn to like themselves. If children live with recognition, they learn it is good to have a goal. If children live with sharing, they learn generosity. If children live with fairness, they learn justice. If children live with kindness and consideration, they learn respect. If children live with friendliness, they learn the world is a nice place in which to live.', 
'Valores culturais de um povo revelam sua forma de ser, agir e pensar. Na concepção da autora, as diferentes formas de educar crianças nos Estados Unidos confirmam que as crianças:', ' a) temem quem as amedronta.', 'b) aprendem com o que vivem.', 'c) amam aqueles que as aceitam.', 'd) são gentis quando respeitadas.', 'e) ridicularizam quem as intimida.', 'B', NULL, 1),

('QUESTÃO 15', '(Enem 2020)', NULL, 'A observação dos elementos verbais e visuais do anúncio leva-nos à compreensão de que o objetivo da companhia de abastecimento de água de Denver é:', ' a) conscientizar sobre a necessidade de otimização do consumo.', 'b) divulgar espaços publicitários de grande visibilidade.', 'c) sensibilizar para a conservação do patrimônio público.', 'd) apresentar uma forma mais econômica de fazer publicidade.', 'e) denunciar possíveis danos decorrentes de atos de vandalismo.', 'A', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQMyX4NTJiVg8Iyaxycq-cVxq-p_2KahQtlYJdKEeTSsQ1ouxuV', 1);



SELECT * FROM simulados;