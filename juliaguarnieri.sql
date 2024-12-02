CREATE DATABASE portal_ingles;
\c portal_ingles;

-- TABELA DE SIMULADOS 
CREATE TABLE simulados (
    id SERIAL PRIMARY KEY,
    dificuldade VARCHAR(150) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    url_imagem_nivel VARCHAR(255) NOT NULL
);

-- TABELA DE QUESTÕES 
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

INSERT INTO simulados (dificuldade, descricao, url, url_imagem_nivel) VALUES 
('NÍVEL BÁSICO', 'Comece testando seus conhecimento com um simulado básico.', 'https://site-ingles-theta.vercel.app/pages_html/simulado_basico.html', 'https://thumbs.dreamstime.com/b/conceito-de-teste-cor-desenho-animado-vetor-exame-quiz-design-achatado-estilo-m%C3%A3os-humanas-segurando-caneta-e-papel-ilustra%C3%A7%C3%A3o-208845043.jpg'),
('NÍVEL INTERMEDIÁRIO', 'Está na hora de se desafiar mais, faça esse simulado intermediário.', 'https://site-ingles-theta.vercel.app/pages_html/simulado_intermediario.html', 'https://img.freepik.com/vetores-premium/resultados-do-teste-de-exame-escolar_40816-277.jpg?semt=ais_hybrid'),
('NÍVEL AVANÇADO', 'Tem ido muito bem, que tal testar seu inglês avançado?', 'https://site-ingles-theta.vercel.app/pages_html/simulado_avancado.html', 'https://blog.unipar.br/wp-content/uploads/2020/01/GettyImages-1271011451-1-445x445.jpg'),
('NÍVEL PROFICIENTE', 'Agora resta a parte final para ver se aprendeu bem, teste tudo que aprendeu com esse simulado de nível proficiente.', 'https://site-ingles-theta.vercel.app/pages_html/simulado_proficiente.html', 'https://image.slidesdocs.com/responsive-images/background/paper-college-students-campus-june-classroom-student-powerpoint-background_925b62983f__960_540.jpg');

SELECT * FROM simulados;

--Nivel Básico

INSERT INTO questoes (titulo, fonte_questao, texto_auxiliar, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, url_imagem, id_simulado) 
VALUES 
('QUESTÃO 1', '(Enem 2021)', NULL, 'A presença de at odds with na fala da personagem do cartum revela o(a):', ' a) necessidade de acessar informações confiáveis.', 'b) dificuldade de conciliar diferentes anseios.', 'c) desejo de dominar novas tecnologias.', 'd) desafio de permanecer imparcial.', 'e) vontade de ler notícias positivas.', 'B', 'https://blogger.googleusercontent.com/img/aAVvXsEhCvRSIDqYEwlUR-cW3xR4EpXkw35jJeGURtAx8e4uvrtKEkBvhGIM13Be357bLKauia5nZqyvEoG6-nkT9W8dIbSmF6UIq_zG2SDzKclfJhtK3WilvF0QDtksY6qDgMH7Z-eTibyCaY5oRWwpL7tFwsE8miV0qhofs9rMicZkzCusC_1_Ym0zlEjoL=s600', 1),

('QUESTÃO 2', '(Enem 2019)', 'A pet is certainly a great friend. After a difficult day, pet owners quite literally feel the love. In fact, for nearly 25 years, research has shown that living with pets provides certain health benefits. Pets help lower blood pressure and lessen anxiety. They boost our immunity. They can even help you get dates. Allergy Fighters: A growing number of studies have suggested that kids growing up in a home with furred animals will have less risk of allergies and asthma. Date Magnets: Dogs are great for making love connections. Forget Internet matchmaking – a dog is a natural conversation starter. Dogs for the Aged: Walking a dog or just caring for a pet – for elderly people who are able – can provide exercise and companionship. Good for Mind and Soul: Like any enjoyable activity, playing with a dog can elevate levels of serotonin and dopamine – nerve transmitters that are known to have pleasurable and calming properties. Good for the Heart: Heart attack patients who have pets survive longer than those without, according to several studies.', 'Ao discutir sobre a influência de animais de estimação no bem-estar do ser humano, a autora, a fim de fortalecer seus argumentos, utiliza palavras e expressões como research, a growing number of research e several studies com o objetivo de:',  ' a) mostrar que animais de estimação ajudam na cura de doenças como alergias e asma.', 'b) esclarecer sobre o modo como os idosos devem se relacionar com animais de estimação.','c) fornecer dados sobre os impactos de animais de estimação nas relações amorosas.', 'd) explicar como o contato com animais de estimação pode prevenir ataques cardíacos.',  'e) convencer sobre os benefícios da adoção de animais de estimação para a saúde.', 'E', NULL, 1),

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


SELECT * FROM questoes;
-- Nível Avançado
INSERT INTO questoes (titulo, fonte_questao, texto_auxiliar, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, url_imagem, id_simulado) 
VALUES 
('QUESTÃO 1', '(IBFC INEP 2012)', NULL, 'The alternative that brings the sentences with the same meaning of “My cousin recovered from his health problems because he has completely changed his lifestyle” is', 
'a) If my cousin didn t have change his lifestyle completely, he wouldn t recover from his health problems.', 
'b) If my cousin hasn t completely changed his lifestyle, he couldn t have recovered from his health problems.', 
'c) If my cousin hasn t completely changed his lifestyle, he wouldn t have recovered from his health problems.', 
'd) If my cousin hadn t completely changed his lifestyle, he wouldn t have recovered from his health problems.', 
'e) If my cousin hadn t completely changed his lifestyle, he wouldn t recovered from his health problems.', 
'D', NULL, 3),

('QUESTÃO 2', '(ADM&TEC 2024)', 'Netflix is trying to prove to the world that it s all grown up

Netflix is trying to persuade Wall Street that it is now all grown up. After squeezing out millions of additional subscribers via its password sharing crackdown and through the introduction of cheaper advertiser-supported plans, the streamer knows that its growth spurts are coming to an end — and now it wants investors to stop obsessing over those pesky membership numbers and instead focus on other metrics.
In our early days, when we had little revenue or profit, membership growth was a strong indicator of our future potential. But now we are generating very substantial profit and free cash flow. We are also developing new revenue streams like advertising and our extra member feature, so memberships are just one component of our growth, Netflix told shareholders as it reported quarterly earnings.
To that end, Netflix said that it will no longer report quarterly subscriber numbers, starting in 2025. Alas, the metric that Wall Street has forever judged Netflix on the metric that prompted legacy media companies to burn endless piles of cash in their bids to compete with the streamer — will be retired. The decision to shut off transparency on the metric represents a significant turning point in the streaming revolution. For years, Netflix has prided itself on being extraordinarily transparent. Now it is aiming to hold its cards closer to its chest. And given that streaming giant is the trendsetter in the space, one could expect that other media companies will be inspired by the company s move and also opt to cease reporting such data.
To be fair, what Netflix is saying is not necessarily off base either. As the company shifts its business model away from subscriptions and toward advertising and other revenue streams, it makes sense to consider how much time users are spending on the service. The more content a user consumes on Netflix, the more likely they are to continue paying for the service, and the more money Netflix then makes from that single subscriber. We are focused on revenue and operating margin as our primary financial metrics — and engagement (i.e. time spent) as our best proxy for customer satisfaction,” Netflix underscored in its letter to shareholders.
Regardless, less transparency in an already opaque industry is not ideal. The walled garden of streaming already lacks the same detailed viewership data that Nielsen collects on linear television broadcasters. Now, visibility into the streaming world will get even dimmer.
The announcement from Netflix managed to overshadow its otherwise stellar quarter. The company handily beat expectations and added a staggering 9.3 million subscribers, meaning it now boasts nearly 270 million in total. Netflix also beat analyst expectations on both earnings and revenue. However, it was not all good news. Netflix forecasted its subscriber growth to be lower in quarter two, chalking it up to “typical seasonality.” That led the stock to slide nearly 5% in after-hours trading.
Whether typical seasonality” is solely to blame, or whether the streamer is simply starting to hit a ceiling, is hard to tell. Perhaps it is a mix of both. Whatever the cause, the stock sliding on the less-than-ideal outlook is a prime example of why Netflix wants Wall Street to stop focusing on its subscriber numbers. And, in one year s time, investors won t have a choice.', 'Based on Text, mark the statements below as True (T) or False (F). ( ) Netflix s steps might lead other streaming companies to crack on reporting quarterly subscriber numbers.
( ) Excluding engagement, being less transparent is the key for Netflix to maintain its customer satisfaction.
( ) Netflix wants investors to stop obsessing over membership numbers and instead focus on other metrics.
( ) Falling short of expectations, the streaming company added a staggering 9.3 million subscribers.', 
'a) F. T. F. T.', 
'b) F. F. T. F.', 
'c) T. F. T. F.', 
'd) T. T. F. T.', 
NULL, 
'B', NULL, 3),

('QUESTÃO 3', '(CONTEMAX 2024)', NULL, 'Lisa is discussing instructions from her supervisor with a colleague. Convert the direct speech into reported speech. and choose the correct sentence.', 
'a) My supervisor said that we could prepare the lesson plans for next week.', 
'b) My supervisor said that we had to prepare the lesson plans for next week.', 
'c) My supervisor said that we must to prepare the lesson plans for next week.', 
'd) My supervisor said that we has to prepare the lesson plans for next week.', 
'e) My supervisor said that we might prepare the lesson plans for next week.', 
'B', NULL, 3),

('QUESTÃO 4', '(FUVEST 2023)', 'We ve been given no shortage of digital tools that should, in theory, help us work better, with more focus and efficiency, and connect us more easily with our colleagues. Instead, email, instant messaging, remote-meeting apps, work-flow and project-management software can feel like buckets with holes in the bottom, maddeningly inadequate to the task of keeping us from drowning in work. It is clear that something in the great digital-workplace experiment has gone wrong. Or maybe it is more accurate to say that it is still too early to expect that we would have figured out how to make things go right. We are working now with new technologies that only emerged in the 90s, says Cal Newport, a Georgetown computer-science professor. The idea that we immediately figured out the best way to use them is ahistorical. Of course we haven t gotten it right yet.
Disponível em http://www.nytimes.com (adaptado).', 'A expressão sublinhada no trecho The idea that we immediately figured out the best way to use them is ahistorical pode ser substituída, sem prejuízo do sentido, por', 
'a) disturbed', 
'b) constructed.', 
'c) failed.', 
'd) made.', 
'e) understood.', 
'E', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT0FwQ9OMsF-3jFrN1ntdLWy4nXM4u8F3qsxlHcsO5s0TgX_bJO', 3),

('QUESTÃO 5', '(FUNDATEC 2024)', 'In the image below we can see a boy talking to the Google Home Mini, which is an electronic device, and then with a tiger:', 'Which of the alternatives below correctly fills out the gaps in the dialogue, from top to bottom?', 
'a) to – no preposition – towards – to', 
'b) to – on – to – of', 
'c) no preposition – to – with – of', 
'd) to – no preposition – with – of', 
'e) no preposition – onto – with – to', 
'B', NULL, 3),

('QUESTÃO 6', '(PUC - SP 2017)', NULL, 'O candidato não conseguiu colocar a foto no passaporte porque:', 
'a) Excedeu o número de tentativas que a máquina permitia.', 
'b) Possivelmente não teve suas características étnico-raciais reconhecidas pelo programa.', 
'c) Não observou os critérios técnicos necessários para poder completar o procedimento.', 
'd) Ignorou a necessidade de percorrer os itens constantes dos aspectos de segurança antes de fazer a próxima tentativa.', 
NULL, 
'B', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_5b85b68d2f8153e441e0c5fbfd6fbda0_294928.jpg.jpeg', 3),

('QUESTÃO 7', '(PUC - SP 2017)', NULL, 'O infográfico tem como objetivo principal:', 
'a) Dar exemplos de tipos de bullying eletrônico para que os pais possam se precaver.', 
'b) Mostrar ao adolescente assediado que ele não está só.', 
'c) Chamar a atenção da população para o fato de que o bullying é uma realidade perigosa.', 
'd) Mostrar à população que o combate ao bullying depende da ação adequada de cada pessoa individualmente.', 
NULL, 
'D', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_d11a7f76a7b17decf57dc6442bf4b176_296094.jpg.jpeg', 3),

('QUESTÃO 8', '(UERJ 2015)', NULL, 'Modal verbs can be used to refer to a speaker s attitude. The modal should indicates that Calvin believes his knowledge of the bad quality of the TV show would be characterized as:', 
'a) Desirable.', 
'b) Probable.', 
'c) Surprising.', 
'd) Mandatory.', 
NULL, 
'A', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_fd031b9f66302db9beec5dcc6a100d23_110091.jpg.jpeg', 3),

('QUESTÃO 9', '(VUNESP - 2014)', 'Leia o texto para responder à questão. The Institute for Supply Management s (ISM) manufacturing index rose to 53.2 from 51.3 in January. A reading above 50 indicates expansion. Separate data showed construction spending rose slightly in January, helped by residential construction. Manufacturing and construction are key to the US economy and there were fears that severe weather across many parts of the US may have hurt the sectors. Bradley Holcomb, chair of ISM s survey committee, said that while several manufacturers said severe weather was impacting their business, “other comments reflect optimism in terms of demand and growth in the near term”. Meanwhile, data released by the US Department of Commerce, showed that construction spending rose 0.1% in January, from December. Compared to the same month last year, construction spending was up 9.3%. However, the bad weather conditions impacted car sales in February with General Motors, Toyota and Ford all posting declines in their deliveries. But the drop in sales was less than expected and manufacturers were upbeat about the prospects in the coming months. “February auto sales emerged from a chill in the second half of the month, positioning the industry for a strong March,” said Bill Fay, general manager at Toyota, which saw a fall in deliveries of 4% during the month. General Motors sales fell 1%, compared to analysts  forecast of a 6% drop. Chrysler and Nissan Motors beat the trend with sales increases of 11% and 16% respectively. Analysts said that overall car sales during the month had been helped by incentives and discounts offered by dealers to lure customers to showrooms in an attempt to cushion the impact of the severe weather conditions. However, as weather conditions improve, the discounts will reduce.', 'The third paragraph shows that', 
'a) Auto manufacturers were already expecting a drop in sales for February.', 
'b) GM, Ford and Toyota expected to sell more cars in February because of the winter.', 
'c) Car sales are expected to drop in the months after February when the winter finishes.', 
'd) Chrysler sold more cars than Toyota in February, but Nissan sold more than them all.', 
'e) General Motors sold 6% fewer cars than Toyota in February.', 
'A', NULL, 3),

('QUESTÃO 10', '(PUC Campinas - 2016)', 'Leia o texto para responder à questão.
The colors of the rainbow so pretty in the sky
Are also on the faces of people passing .. I...
I see friends ..II.. hands
Saying, how do you do?
They are really saying,
I love you.', 'The word that correctly fills the blank ..II.. is', 
'a) Waving.', 
'b) Shaking.', 
'c) Grabbing.', 
'd) Clapping.', 
'e) Raising.', 
'B', NULL, 3),

('QUESTÃO 11', '(Instituto Access - 2024)', NULL, 'Choose the correct option to complete the sentence: “Sadly, many people __________ serious illnesses due to lack of early detection.”', 
'a) Die from.', 
'b) Come down with.', 
'c) Contract.', 
'd) Are diagnosed with.', 
NULL, 
'A', NULL, 3),

('QUESTÃO 12', '(Instituto Access - 2024)', 'On Friday, a major tech failure ________ services worldwide and highlighted the vulnerability of interconnected technologies.
Cybersecurity firm CrowdStrike apologized after an update to its antivirus software, which protects Microsoft Windows devices from attacks, caused a global ________ .
This led to thousands of flight cancellations and delays and affected banking, healthcare, and payment systems. Although the software bug has been fixed, experts warn that manually ________ each affected computer will take significant time and effort. Microsoft estimated that 8.5 million computers globally were impacted by the ________ , making it the worst cyber event in history. The UK s National Cyber Security Centre and Germany s IT security agency have warned that ________ might exploit the situation. Despite the fix, it will take time to resolve all issues and clear backlogs. It is important to be prepared for such disruptions in the future and have resilient systems.
Available at: https://www.newsinlevels.com/products/global-it-outage-level-3/. Accessed: July 25, 2024.', 'Read and mark the option which fills in the blanks accordingly.', 
'a) Restarted - blackout - installing - news - robbers.', 
'b) Disrupted - outage - rebooting - glitch - scammers.', 
'c) Installed - chaos - cleaning - fact - thieves.', 
'd) Disturbed - news - reinstalling - story - programmers.', 
'e) Destroyed - coup - sending - failure - criminals.', 
'B', NULL, 3),

('QUESTÃO 13', '(Instituto Access - 2024)', NULL, 'Analise as sentenças e selecione a opção que apresenta a conjugação INCORRETA do tempo verbal perfeito.', 
'a) They hadn t eaten before the plane landed.', 
'b) I ll have finished my report by this time next week.', 
'c) If you had studied for your exam, you would have passed.', 
'd) He s written ten pages of the report.', 
'e) They ve are married for nearly fifty years.', 
'E', NULL, 3),

('QUESTÃO 14', '(VUNESP - 2013)', 'A transformer has a primary winding circuit with 200 turns and a secondary winding circuit with 10 turns. In an ideal, lossless, transformer model, the magnetic core permeability is infinite despite the voltages applied to the windings, the two windings are perfectly coupled and there are no internal resistance in the condutors. In such transformer, when a sinusoidal voltage is applied at the secondary winding with an amplitude of 5,0 [V] RMS, the RMS voltage in the primary winding terminals is equal to 100,0 [V].', 'Com relação a esse texto, assinale a alternative correta.', 
'a) No transformador ideal, é aplicada uma tensão não senoidal no enrolamento secundário, com amplitude de 5,0 [V] eficazes.', 
'b) No transformador ideal, é aplicada uma tensão senoidal no enrolamento primário, com amplitude de 5,0 [V] eficazes.', 
'c) O transformador ideal, sem perdas, apresenta permeabilidade infinita, independentemente da intensidade das tensões aplicadas nos enrolamentos, que são perfeitamente acoplados, sem nenhuma resistência interna em seus condutores.', 
'd) O transformador ideal, sem perdas, apresenta permissividade infinita, que depende da intensidade das tensões aplicadas nos enrolamentos, que são perfeitamente acoplados, sem nenhuma resistência interna em seus condutores.', 
'e) Um transformador apresenta um circuito magnético primário com 200 voltas e um circuito magnético secundário com 10 voltas.', 
'C', NULL, 3),

('QUESTÃO 15', '(VUNESP - 2023)', 'Leia o texto para responder a questão.
Learning strategies are defined as “specific actions, behaviors, steps, or techniques—such as seeking out conversation partners, or giving one self-encouragement to tackle a difficult language task—used by students to enhance their own learning. When the learner consciously chooses strategies that suit his or her learning style and the L2 task at hand, these strategies become a useful toolkit for active, conscious, and purposeful self-regulation of learning. Learning strategies can be classified into six types; the compensatory strategies, for example, are those that help the learner make up for missing knowledge.
A given strategy is neither good nor bad; it is neutral until the context of its use is thoroughly considered. What makes a strategy positive and helpful for a given learner? A strategy is useful if the following conditions are present: (a) the strategy relates to the L2 task at hand; (b) the strategy fits the particular student s learning style preferences to one degree or another; and (c) the student employs the strategy effectivety and links it with other relevant strategies. Strategies that fulfill these conditions “make learning easier, faster, more enjoyable, more self-directed, more effective, and more transferable to new situations” (Oxford 1990, p. 8). Learning strategies can also enable students to become more independent and lifelong learners.', 'In a reading class, the text is about “World Cup host countries in the 21st century. Aware of the fact that a strategy is useful if it relates to the L2 task at hand , the teacher coherently offers the following instruction to develop learners  ability to scan texts in English:', 
'a) “Focus on the text s key ideas and ignore other elaborate details”.', 
'b) “Carefully read the title and the first paragraph to anticipate the content of subsequent paragraphs”.', 
'c) “Activate your prior knowledge to create a mental image about text content”.', 
'd) “Compare the content of this text with texts you have read in Portuguese about the same theme”.', 
'e) “Identify the countries which have held World Cup Champioships in the last 22 years”.', 
'E', NULL, 3);

--Nível Proficiente

INSERT INTO questoes (titulo, fonte_questao, texto_auxiliar, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, url_imagem, id_simulado) 
VALUES 
('QUESTÃO 1', '(Enem 2023-PPL)', 'charge\nMCPHAIL, W. Disponível em: https://fineartamerica.com. Acesso em: 25 out. 2021.', 'Ao utilizar a expressão “be a shame if something were to happen to it”, o pássaro:', 'A) Expressa uma ideia de ameaça.', 'B) Demonstra uma sugestão de alimento.', 'C) Exprime uma sensação de vergonha.', 'D) Revela uma ocorrência do passado.', 'E) Retrata uma tentativa de aproximação.', 'A', 'https://edukavest.com.br/storage/uploads/questions/2024/1/enem-2023-quadrinho-de-mcphail.png', 4),

('QUESTÃO 2', '(Enem 2023-EDITAL)', 'Things We Carry on the Sea. 
We carry tears in our eyes: good-bye father, good-bye [mother
We carry soil in small bags: may home never fade in our [hearts We carry carnage of mining, droughts, floods, genocides
We carry dust of our families and neighbors incinerated [in mushroom clouds
We carry our islands sinking under the sea We carry our hands, feet, bones, hearts and best minds [for a new life
We carry diplomas: medicine, engineer, nurse, [education, math, poetry, even if they mean [nothing to the other shore
We carry railroads, plantations, laundromats, [bodegas, taco trucks, farms, factories, nursing [homes, hospitals, schools, temples... built on [our ancestors backs
We carry old homes along the spine, new dreams in our [chests
We carry yesterday, today and tomorrow
We are orphans of the wars forced upon us
We are refugees of the sea rising from industrial wastes
And we carry our mother tongues
[...]
As we drift... in our rubber boats... from shore... to shore... [to shore... PING, W. Disponível em: https://poets.org. Acesso em: 1 jun. 2023 (fragmento).', 'Ao retratar a trajetória de refugiados, o poema recorre à imagem de viagem marítima para destacar o(a):', 'A) Risco de choques culturais.', 'B) Impacto do ensino de história.', 'C) Importância da luta ambiental.', 'D) Existência de experiências plurais.', 'E) Necessidade de capacitação profissional.', 'D', NULL, 4),

('QUESTÃO 3', '(FUVEST 2024)', 'Vincent van Gogh. Salvador Dalí. Frida Kahlo. Casual perusers of ads everywhere would be forgiven for thinking that art galleries are enjoying some sort of golden age. The truth is less exciting, more expensive and certainly more depressing. For this is no ordinary art on offer; this art is “immersive”, the latest lovechild of TikTok and enterprising warehouse landlords. The first problem with immersive art? It is not actually very immersive. A common trope of “immersive” retrospectives is to recreate original pieces using gimmicky tech. But merely aiming a projector at a blank canvas does not do much in the way of sensory stimulation. My favourite element of an “immersive” show I have been to was their faithful recreation of Van Gogh s bedroom. An ambitious feat, executed with some furniture and, of course, mutilated pastiches of his paintings. While projectors, surround sound and uncomfortably wacky seating are mainstays of immersive art, there are also the VR headsets. But many exhibitions do not even include these with the standard ticket, so my return to reality has twice been accompanied by an usher brandishing a credit card machine. Sometimes these installations are so banal and depthless, visitors have often walked through installations entirely oblivious to whatever is happening around them. Despite the fixation “immersive experiences” have with novelty, the products of their labours are remarkably similar: disappointing light shows punctuated by a few gamified set pieces. Disponível em https://www.vice.com/en/article/. Adaptado.', 'De acordo com o texto, muitos visitantes das exposições de arte imersivas demonstram:', 'A) Fascínio pelas novidades tecnológicas utilizadas pelos curadores.', 'B) Desconforto causado pelo excesso de estímulos sensoriais.', 'C) Curiosidade sobre a biografia dos pintores e os movimentos artísticos.', 'D) Apreciação pelas informações oferecidas por guias e educadores.', 'E) Indiferença diante das simulações das obras de arte.', 'E', NULL, 4),

('QUESTÃO 4', '(FUVEST 2024)', 'Over the last two decades, technology companies and policymakers warned of a “digital divide” in which poor children could fall behind their more affluent peers without equal access to technology. Today, with widespread internet access and smartphone ownership, the gap has narrowed sharply.
But with less fanfare a different division has appeared: Across the country, poor children and adolescents are participating far less in sports and fitness activities than more affluent youngsters are. Call it the physical divide. Data from multiple sources reveal a significant gap in sports participation by income level.
A combination of factors is responsible. Spending cuts and changing priorities at some public schools have curtailed physical education classes and organized sports. At the same time, privatized youth sports have become a multibilliondollar enterprise offering new opportunities — at least for families that can afford hundreds to thousands of dollars each season for club-team fees, uniforms, equipment, travel to tournaments and private coaching.
“What s happened as sports has become privatized is that it has become the haves and have-nots,” said Jon Solomon, editorial director for the Aspen Institute Sports and Society Program. “Particularly for low-income kids, if they do not have access to sports within the school setting, where are they going to get their physical activity?” Mr. Solomon said. “The answer is nowhere.”
The New York Times. 24 March 2023. Adaptado.', 'Conforme o texto, um dos motivos para a disparidade relativa à prática de atividades físicas por alunos, segundo o nível de renda, reside:', 'A) No abismo persistente entre as notas de estudantes ricos e pobres.', 'B) No corte de gastos e mudanças de prioridades em algumas escolas públicas.', 'C) Na preferência por jogadores com potencial superior para competição.', 'D) Na redução de bolsas de estudos para adolescentes de famílias abaixo da linha de pobreza.', 'E) Na realização de campeonatos contemplados com doações de ONGs.', 'B', NULL, 4),

('QUESTÃO 5', '(IME 2023)', 'The climate is changing — the thing is, it is not just due to humans
By Tonya T. Neaves
Natural forces beyond human control are also gradually affecting our climate. These geophysical forces are vital to understanding global warming. Man is indeed responsible for a large portion — possibly even a majority — of global warming. But also in play are complex gravitational interactions, including changes in the Earth s orbit, axial tilt and torque. This fact needs to be included in the public debate. Because these gravitational shifts, occurring over millennia, can influence climate patterns and ultimately lead to noticeable variations in seasons.
Interestingly, research suggests climate change can alter the tilt of the Earth, but an unrelated change in tilt can also further change the climate. It is a balance-counterbalance relationship. Changes in seasons can also affect other types of storms, including severe winter snowstorms and tornadoes. The variations in the Earth s orbit are known as the Milankovitch cycles — after the Serbian geophysicist Milutin Milankovic, who hypothesized this phenomenon in the 1920s. He discovered that variations in the Earth s path around the Sun, axial tilt and torque could together affect our climate.
Even a slight change or orientation in the precession of the Earth s rotating body can cause a wobbling effect shifting torque in different areas since the planet is not a perfect sphere to some people s surprise. Now would seem a particularly apt time to act. The 2017 Atlantic hurricane season was an intense, record-setting period. With several landfall hurricanes barreling their way through the Caribbean and Gulf of Mexico, devastating parts of the Leeward Islands and United States.
Still, even President Donald J. Trump has implied the whole of idea climate change may just be a hoax. Most Republicans seem to agree that it is not a serious problem. Meanwhile, while some Democrats have tried to use the frequency and intensity of storms in the hopes of highlighting the climate change conversation, even this effort has seemed muted. The heightened culture of disaster only feeds our attention on political banter and ideological semantics with no room for informed 20 decision-making.
Though climate change is inevitable, we also need to have a healthy appreciation of the fact that climate shifts are not just limited to rapidly changing weather patterns. Turning the corner into unexplored territory is always difficult. By having a broader sense of communal resiliency — social, political and economic standing — we can manage this unavoidable pendulum of climate extremes.
Adapted from: THINK - Opinion, Analysis, Essays in: https://www.nbcnews.com/think/opinion/climate-changingnot-just-because-humans-here-s-why-matters-ncna824271 [Accessed on March 10th, 2023].', 'Choose the wrong option according to the text:', 'A) Politicians said that climate change may just be fake.', 'B) The variations in the Earth s path might affect our climate.', 'C) Human beings are the only responsible for global warming.', 'D) Global Warming is affecting seasons changes.', 'E) Changing the Earth s climate is inevitable.', 'C', NULL, 4),

('QUESTÃO 6', '(IME 2023)', 'Climate of conspiracy: A meta-analysis of the consequences of belief in conspiracy theories about climate change
By Mikey Biddlestone, Flavio Azevedo, Sander van der Linden
Despite widespread scientific consensus on climate change, conspiracy theories about its causes and consequences are flourishing. In response, psychological research has started to investigate the consequences of espousing conspiracy beliefs about climate change. Although some scholars maintain that the evidence for a causal link between belief in conspiracy theories and behavior remains elusive, others have argued that climate change conspiracy theories undermine pro-climate action. Overall, we find clear evidence that climate conspiracy beliefs have moderate-to-large negative correlations with not only acceptance of (climate) science, trust, and pro-environmental concern, but also with behavioural intentions and policy support.
Most of these effects were not moderated by design (experimental vs. correlational), political ideology, or prior conspiracy beliefs. After a meta-analysis we find clear evidence that climate change conspiracy beliefs correlate with a host of concerning societal outcomes, including lower acceptance of (climate) science, distrust, lower concern for the environment, and also lower intentions to take action and support pro-environmental policies. An important open question concerns the direction of causality. Although it is possible—and perhaps likely—that people who are skeptical of climate change are more likely to endorse conspiracy theories about global warming, we can also expect that people who are exposed to climate change conspiracy theories become more skeptical and are less likely to take pro-environmental action.
In one of the included experiments, people were less likely to sign a petition to counter climate change following exposure to a conspiracy theory about global warming. At the same time, we note that the number of experiments included in the analysis was unbalanced and relatively low compared to the number of correlational designs, which is likely a reflection of the larger literature: most studies do not provide an experimental test of whether exposure to conspiracy theories causes people to disengage from science and politics. Interestingly, our moderation analyses generally did not find that the observed effect sizes were impacted by study design, with the exception of pro-environmental policy-support. Moreover, although publication bias was present in many cases—which is somewhat expected considering our exclusion of the grey literature—the bias-corrected meta-analytic effect sizes were similar to those obtained in the main analyses.
Nonetheless, given the fact that only a few experimental studies were available for each outcome variable, we feel that it is premature to make any firm conclusions about the overall absence of moderation effects based on study design. In fact, it is interesting that in the case of policy support, data from the only experimental study did not corrobate the correlational evidence. In all likelihood, both causal pathways are possible and potentially mutually reinforcing so that people with skeptical prior attitudes might seek out conspiracy theories about climate change, whilst those exposed to conspiracy theories also become more skeptical about the issue.
Consistent with long standing political polarization on the issue of climate change at both elite and mass publics levels—at least in the United States—a large body of work has supported an asymmetrical relationship, such that the endorsement of climate change conspiracy theories appears stronger on the political right. Although conservative ideology itself had a strong positive meta-analytic correlation with belief in climate conspiracies (r = 0.45), it is interesting to note that the effect sizes were not reliably moderated by political orientation for any of the outcome measures. Similarly, we do not find evidence of reliable moderation effects for prior conspiracy beliefs. In addition, contrary to evidence which suggests that climate denial is uniquely prevalent in the United States, the effect-sizes were not moderated by country in our meta-analysis.
However, we note that the overwhelming majority of studies (86%) and participants (96%) were US-based. Although some interventions—such as highlighting scientific consensus and psychological inoculation —have shown promise in combatting conspiracy beliefs, considering that in many countries almost a third of the population endorses the belief that climate change is hoax, future research should urgently evaluate how to counter public belief in climate change conspiracy theories. We note, in many cases, the need to gather more data (from non-WEIRD samples), and the presence of publication bias and effect size heterogeneity..
Adapted from: Climate of conspiracy: A meta-analysis of the consequences of belief in conspiracy theories about climate change in: https://www.sciencedirect.com/science/article/pii/S2352250X22001099 [Accessed on March 10th, 2023].', 
'Acoording to the text, there is no correlation between climate conspiration theories and:', 
'A) Disbelief in Science.', 
'B) Politicians.', 
'C) Depressed people.', 
'D) Skeptical people.', 
'E) Climate denials.', 'C', NULL, 4),

('QUESTÃO 7', '(ITA 2020 - 1ª Fase)', 'About seven years ago, three researchers at the University of Toronto built a system that could analyze thousands of photos and teach itself to recognize everyday objects, like dogs, cars and flowers. The system was so effective that Google bought the tiny start-up these researchers were only just getting off the ground. And soon, their system sparked a technological revolution. Suddenly, machines could see in a way that was not possible in the past.
This made it easier for a smartphone app to search your personal photos and find the images you were looking for. It accelerated the progress of driverless cars and other robotics. And it improved the accuracy of facial recognition services, for social networks like Facebook and for the country s law enforcement agencies. But soon, researchers noticed that these facial recognition services were less accurate when used with women and people of color. Activists raised concerns over how companies were collecting the huge amounts of data needed to train these kinds of systems. Others worried these systems would eventually lead to mass surveillance or autonomous weapons.
Fonte: Matz, Cade. Seeking Ground Rules for A. 1. www.nvtimes.com, 01/03/2019. Adaptado. Acessado em Agosto/2019.', 
'De acordo com as informações do texto, selecione a alternativa que melhor complete a afirmação: The new system proved to be less precise when:', 
'A) Aplicado a carros autônomos.', 
'B) Ajustado ao reconhecimento facial de usuários em redes sociais.', 
'C) Usado para identificar objetos inanimados como carros e plantas.', 
'D) Usado para identificar africanos e descendentes de africanos.', 
'E) Testado por agências de segurança pública americanas.', 
'D', NULL, 4),

('QUESTÃO 8', '(ITA 2019 - 1ª Fase)', 'Charge. Fonte: http://www.commitstrip.com/en/2015/10/26/journalists-today/? Acesso em maio de 2018.','No último quadrinho, o chefe do jornalista:', 
'A) Solicita que ele lhe mostre as imagens que está escrevendo.', 
'B) Fica entusiasmado porque ele concorda que as imagens são sensacionalistas.', 
'C) Demonstra o interesse e pede que ele lhe mostre os dados do teste mencionado.', 
'D) Muda de ideia e demanda que ele exiba as ilustrações dos jornais concorrentes.', 
'E) Rende-se à lógica das redes sociais após checar a repercussão das fotos publicadas.', 
'C', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh6P6cYCKVWfdihuyiMglXHJseiSHqWCy-HczUC-n5RKtdcoBmFpiT3BPkHwQg4EBDorEKLpoBFlmB4XDdYsHuay_l00iVhyphenhyphenQHrh1lPMG29bFRCpfeDujDmLQnRZXZBV620hUkLXistJGU/s1600-rw/As+quest%C3%B5es+de+30+a+32+referem-se+%C3%A0+tirinha+a+seguir.jpg', 4),

('QUESTÃO 9', '(ITA 2024)', 'Read Your Way Through Salvador By Itamar Vieira Junior and translated by Johnny Lorenz. July 19, 2023.
I was born in Salvador, in the Brazilian state of Bahia, and lived in the general vicinity until I reached the age of 15. But it was when I left that I really came to know my city. How was I able to discover more about my birthplace while traveling far from home? It might sound rather clichéd but, I assure you, literature made this possible: It took me on a journey, long and profound, back home, enveloping me in words and imagination.
To understand the formation of our unique society and, consequently, the cityscape of Salvador, one should read, before anything else, “The Story of Rufino: Slavery, Freedom and Islam in the Black Atlantic,” by João José Reis, Flávio dos Santos Gomes and Marcus J.M. de Carvalho. Rufino was an alufá, or Muslim spiritual leader, born in the Oyo empire in present-day Nigeria and enslaved during his adolescence. “The Story of Rufino” is an epic tale, encapsulating the life of one man in search of freedom as well as the history of the development of Salvador itself, a place inextricably linked with the diaspora across the Black Atlantic. Another book for which I have deep affection is “The City of Women,” by the American anthropologist Ruth Landes. It offers an intriguing perspective, focusing on matriarchal power in candomblé, an Afro-Brazilian sacred practice, and revealing how the social organization of its spiritual communities reverberates across the city.
If you want to feel the intensity of life on the streets of Salvador, these two books, both by Amado, are indispensable: “Captains of the Sands” and “Dona Flor and Her Two Husbands.” The first is a coming-of-age story in which we follow a group of children and adolescents living on the streets and on the beaches around the Bay of All Saints. Written more than 80 years ago, the book was banned and even burned in the public square during the dictatorship of Getúlio Vargas in the first half of the 20th century. As a portrait of Salvador, it is still relevant and reveals our deep inequalities. “Dona Flor and her Two Husbands” is one of Amado s most popular novels, translated into more than 30 languages and adapted many times for theater, cinema, and television. The book is a kind of manifesto for a woman s liberation. Dona Flor possesses great culinary talent, and oppressed by a patriarchal society, finds herself divided between two men, one being her deceased husband. While the novel captures the daily life of the city in the 1940s, it is also a wonderful guide to the cuisine of Salvador, with its African and Portuguese influences.
I invite readers to travel into the interior of Bahia, many hours by car from Salvador to the region known as the Sertão, whose name translates loosely to “backwoods.” Two books can also transport you there, and they are sides of the same story: “Backlands: The Canudos Campaign,” by Euclides da Cunha, and “The War of the End of the World,” by Mario Vargas Llosa.
“Backlands” is one of the most important works in the history of Brazilian literature. It is a journalistic telling that introduces us not only to the brutal War of Canudos, but also to the intriguing landscape of the Sertão, a place so full of contradictions. In his writing of the conflict, da Cunha tells the story of the genesis of the tough sertanejo: a mythic, cowboyesque figure of the drought-stricken, lawless interior. “The War of the End of the World” is an essential epic that amplifies the narrative of “Backlands,” bringing a more 11 imaginative, creative aspect to the story of Antônio Conselheiro, the spiritual leader of a rebellion, and of the multitude that followed him to their deaths.
Fonte: “Read Your Way Through Salvador”. In: The New York Times, 19/07/2023, . Adaptado. Data de acesso: 01/09/2023.', 
'According to the text, the author recommends the book “The Story of Rufino: Slavery, Freedom and Islam in the Black Atlantic” for the reader to:', 
'A) Establish a connection of the book with Salvador, which epitomizes the Black diaspora.', 
'B) Understand how Rufino s Nigerian roots led him to fight for freedom in Salvador.', 
'C) Learn about Muslim leaders and their influence on cultures such as the present “quilombolas”.', 
'D) Find out how the city of Salvador presents a unique mix of African and European cultures.', 
'E) Agree that freedom of religion and belief is the most precious human right worth fighting for.', 
'A', NULL, 4),

('QUESTÃO 10', '(UFPR 2022 - 1ª Fase)', 'The surprising history of India s vibrant sari tradition
South Asian women have draped themselves in colorful silks and cottons for eons. The ways they are made and worn are dazzling and diverse.
The word “sari” means “strip of cloth” in Sanskrit. But for the Indian women – and a few men – who have been wrapping themselves in silk, cotton, or linen for millennia, these swaths of fabric are more than just simple garments. They are symbols of national pride, ambassadors for traditional (and cutting-edge) design and craftsmanship, and a prime example of the rich differences in India s 29 states.
“The sari both as symbol and reality has filled the imagination of the subcontinent, with its appeal and its ability to conceal and reveal the personality of the person wearing it,” says Delhi-based textile historian Rta Kapur Chishti, author of Saris of India: Tradition and Beyond and co-founder of Taanbaan, a fabric company devoted to reviving and preserving traditional Indian spinning and weaving methods.
The first mention of saris (alternately spelled sarees) is in the Rig Veda, a Hindu book of hymns dating to 3,000 B.C.; draped garments show up on Indian sculptures from the first through sixth centuries, too. What Delhi-based textile historian Rta Kapur Chishti calls the “magical unstitched garment” is ideally suited to India s blazingly hot climate and the modest-dress customs of both Hindu and Muslim communities. Saris also remain traditional for women in other South Asian countries including Pakistan, Bangladesh, and Nepal.
Available in: https://www.nationalgeographic.com/travel/photography/the-story-of-the-sari-in-india/.', 
'In the first sentence of the text, the underlined and in bold type word “eons” means:', 
'A) The last few years.', 
'B) An extremely long period of time.', 
'C) Many years to come.', 
'D) Special occasions.', 
'E) Indian women.', 
'B', NULL, 4),

('QUESTÃO 11', '(UFPR-2017-1ª FASE)', 'Britain bans gasoline and diesel cars starting in 2040
Britain will ban sales of new gasoline and diesel cars starting in 2040 as part of a bid to clean up the country s air. The decision to phase out the internal combustion engine heralds a new era of low-emission technologies with major implications for the auto industry, society and the environment. “We can not carry on with diesel and petrol cars”, U.K. environment secretary Michael Gove told the BBC on Wednesday. “There is no alternative to embracing new technology”. Almost 2.7 million new cars were registered in the U.K. in 2016, making it the second biggest market in Europe after Germany.
Meeting the 2040 deadline will be a heavy lift. British demand for electric and fuel cell cars, as well as plug-in hybrids, grew 40% in 2015, but they only accounted for less than 3% of the market. Still, experts say sales of clean cars are likely to continue on their dramatic upward trajectory.
The car industry says that demand for electric vehicles will only reach a tipping point once they are cheaper to own than conventional vehicles. The deadline was announced by the government on Wednesday as part of a plan to reduce air pollution. The blueprint highlighted roughly £1.4 billion in government investment designed to help ensure that every vehicle on the road in Britain produces zero emissions by 2050.
Gove said action was needed because gasoline and diesel engines contribute to health problems, “accelerate climate change, do damage to the planet and the next generation”. Roughly 40,000 deaths in Britain each year are attributable to outdoor air pollution, according to a study published last year by the Royal College of Physicians. Dirty air has been linked to cancer, asthma, stroke and heart disease, among other health issues.
The problem is especially pronounced in big cities. London surpassed the European Union s annual limit for nitrogen dioxide exposure just five days into the new year, according to King s College. The university estimates that air pollution is responsible for 9,400 premature deaths in the city every year.
The timeline for ending sales of internal combustion engines mirrors one proposed in early July by France. President Emmanuel Macron has given the auto industry the same deadline to make the switch to cleaner tech.
“We are quite rightly in a position of global leadership when it comes to shaping new technology”, Gove said. But the auto industry, which supports over 800,000 jobs in the U.K., is wary of hard deadlines.
Other countries have been even more ambitious than the U.K. India is planning to stop selling gas-powered vehicles by 2030. The German car industry and government officials will meet in early August to discuss the future of diesel engine technology.Manufacturers are trying to avoid diesel cars being banned from German towns and cities.
Disponível: http://money.cnn.com/2017/07/26/news/uk-bans-gasoline-diesel-engines-2040/index.html. Adaptado. Acesso: 26 de julho de 2017.',  'Consider the following excerpt taken from the text:
British demand for electric and fuel cell cars, as well as plug-in hybrids, grew 40% in 2015, but they only accounted for less than 3% of the market.
Choose the alternative that conveys the same meaning of the excerpt above.', 
'a) In 2015, British clean energy car manufacturers dominated the automobile market.',
'b) The search for plug-in hybrid cars is not as large as for electric and fuel cell cars.', 
'c) 40% of the cars sold in Britain in 2015 use clean energy.', 
'd) Only 3% of the car sales in the market refer to petrol energy vehicles.', 
'e) In 2015, the majority of the cars sold in Britain were internal combustion energy vehicles.', 'E', 
NULL, 4),

('QUESTÃO 12', '(FUVEST-2009-1ª FASE)', 'Two in every three people on the planet–some 4 billion in total–are “excluded from the rule of law.” In many cases, this begins with the lack of official recognition of their birth: around 40% of the developing world s five-year old children are not registered as even existing.
Later, people will find that the home they live in, the land they farm, or the business that they start, is not protected by legally enforceable property rights. Even in the rare cases when they can afford to go to court, the service is poor. India, for example, has only 11 judges for every 1million people.
These alarming statistics are contained in a report from a commission on the legal empowerment of the poor, released on June 3rd at the United Nations. It argues that not only are such statistics evidence of grave injustice, they also reflect one of the main reasons why so much of humanity remains mired in poverty. Because they are outside the rule of law, the vast majority of poor people are obliged to work (if they work at all) in the informal economy, which is less productive than the formal, legal part of the economy.
The Economist, June 7th 2008.', 
'O relatório citado no texto observa que:', 
'a) A ilegalidade é uma condição combatida em países subdesenvolvidos.',
'b) Os dados estatísticos sobre a pobreza no mundo são incompletos.',
'c) O fortalecimento do poder legal dos pobres melhoraria sua condição econômica e social.',
'd) A pobreza só poderia ser combatida com a intervenção das Nações Unidas.',
'e) A economia informal está em vias de ser abolida.','C', 
NULL, 4),

('QUESTÃO 13', '(ITA-2015-1ª FASE)', NULL, 'A reportagem anunciada na tirinha:', 
'a) Mostra a relação direta entre a obesidade e consumo de produtos calóricos.',
'b) Divulga um estudo científico com o objetivo de mudar o comportamento da audiência.',
'c) Demonstra indiferença com relação ao tema.',
'd) Estimula o uso de redes sociais para divulgar produtos dos patrocinadores.',
'e) Revela que 70% das pessoas com sobrepeso são sedentárias.',
'C', 
'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_dbabdc13dbb8d74f33799d256602d6fb_187099.jpg.jpeg', 4),

('QUESTÃO 14', '(ITA-2014-1ª FASE)', NULL, 'Em “the more I learn, the less clear anything gets”, mantém-se o mesmo sentido em:', 
'a) More learning, less obscurity.', 
'b) More learning, more obscurity.',
'c) Less learning, more obscurity.',
'd) Less learning, less doubts.',
'e) More doubts, more obscurity.',
'B', 'https://d23vy2bv3rsfba.cloudfront.net/questoes_imagens/0_a29b481a0765e5f4327c9b6e857fd251_187580.jpg.jpeg', 4),

('QUESTÃO 15', '(IME-2021/2022-2ª FASE)', 'Chariot
Rodrigo Quijada Plubins
Definition
The chariot was a light vehicle, usually on two wheels, drawn by one or more horses, often carrying two standing persons, a driver and a fighter using bow-and-arrow or javelins. The chariot was the supreme military weapon in Eurasia roughly from 1700 BCE to 500 BCE but was also used for hunting purposes and in sporting contests such as the Olympic Games and in the Roman Circus Maximus.
Horses were not used for transport, ploughing, warfare or any other practical human activity until quite late in history, and the chariot was the first such application. Donkeys and other animals were preferred in early civilizations.
The Horse
The horse s main ecological niche was the Eurasian steppe; a very wide (4,800 km) and narrow (800 km on average) strip of grassland running roughly from Hungary to China, encompassing parts of what today is Ukrania, southern Russia, Kazakhstan, Uzbekistan, Turkmenistan, Kyrgyzstan, Tajikistan and Mongolia. For most of ancient history, the steppe - which means “wasteland” in Russian - was the home of nomadic societies whose economy was based on herding, complemented by hunting and, to a much lesser degree, sporadic, itinerant agriculture. No cities or settled communities existed in the steppe, save a very few spots.
Steppe dwellers domesticated the horse for the purpose of breeding it for food like sheep and other animals already domesticated. That process is unfortunately poorly understood, and it occurred sometime before 2500 BCE. The wheel, an invention imported from the Middle East, had arrived in the steppe around 3100 BCE. The invention of the chariot in the steppe - perhaps originally meant as an improved tool for hunting - occurred roughly by 2000 BCE, probably in the area just east of the southern Ural mountains, where the oldest chariots have been unearthed. The word for horse appears just around this date for the first time in Mesopotamia, when an increase in north-south trade through Iran is attested.
Invention of the Chariot
The chariot then became a moving platform from which soldiers could shoot at enemies. Arrows and javelins were the main weapons used by the fighter on board, while a second person drove the chariot. The tactic was to move constantly, in and out of the battle, shooting from a distance.
There is no clear explanation as to why humans invented the chariot first, before riding the horse directly, which seems more straightforward to us. A chariot was obviously more expensive than the horse alone, and chariots could not enter or properly manoeuver in landscapes where a mounted horse can, such as hills, marshes or forests. We know people tried mounting horses very early, as we have found drawings depicting it, but those seem rare experiments that did not seem to work. The most common scholarly suggestion is that horses at that time were weaker than in the present, unsuitable for supporting a man and only after a very long period of constant, selective breeding, did a stronger horse come into being. Horses started consistently to be mounted roughly a millennium and a half after the chariot was invented.
The “compound bow”, invented sometime during the second millennium BCE, was the final ingredient for the rise of a deadly ensemble. Bow and arrow were much older, and the innovation of the compound bow was the use of two types of materials, inside and outside the bow, which gave it considerably more power. Compound bows were able to accurately hit a target 300 m away, and penetrate an armour 100 m away. It was the preferred weapon of charioteers and later horseback riding societies. Its power is reflected in the fact that these bows were last used in war as recently as the 19th century CE by the Chinese, well into the age of firearms.
We have scarce knowledge of what happened with the communities in the steppe once the chariot was invented. We can assume that war intensified - and some evidence about it does exist -, and those who first or better grasped the new invention stormed their neighbours, sizing valuable hunting and pasturing land rights. We truly understand the impact of the chariot only when this new form of warfare came out of the steppes and into the settled, agricultural lands.
Charioteers & Warfare
The first reference to charioteers comes from Syria around 1800 BCE. Over the course of the next four centuries, chariots advanced into civilization, either by direct migration of steppe people or by diffusion, and it quickly came to be the preferred elite weapon.
(...)
Everywhere, in Europe, the Middle East, India, and China, all rulers, from petty chiefs to great pharaohs, took the chariot as their master weapon. They started depicting themselves riding chariots, waging wars in chariots, including chariots and horses in their tombs as symbols of power, and so on. Their surrounding aristocracy, of course, followed suit, so the elite forces in every polity came to be charioteers. The horse came to be a valuable military asset, no longer a food source. Horse breeding became key for these states, and all powerful kings aspired to have the proper stables to supply their armies with chariots; imports from the steppes, though, long remained their major source.
The most famous chariot battle was that of Kadesh (1294 BCE), fought between the two superpowers of the time, Egypt and Hatti (Hittites), where some 50 chariots are presumed to have participated for each side. The small number of chariots compared to infantry troops is a good indicator of how effective the chariot was: in China, the ratio was up to 25 infantry soldiers per chariot.
Decline in Use
The use of the chariot declined very slowly, starting around 500 BCE (and yet, in some parts of Europe the technology was just arriving at that time). First and probably foremost, because horseback riding was developed in the steppes, and slowly but surely replaced the need for chariots. The first known forces mounting horses were those of the Scythians, steppe people who in the 7th century BCE attacked the Assyrian empire on horseback. Second, because infantry, formerly helpless against chariots, became more sophisticated due to the expanding use of iron weapons (from c. 1200 BCE onwards), and to new tactics in the form of phalanx formations. Fighting the invading Romans, the Celts were probably the last people who used chariots extensively, until around the 4th century CE.
Adapted from: Chariot. World History Encyclopedia. Available at: https://www.worldhistory.org/chariot/ [Accessed on 5th March 2021]. VOCABULARY:
BCE – Before Common Era (or BC, Before Christ)
CE – Common Era (or AD, Anno Domini)', 'Choose the correct option', 
'a) In a battle, one soldier needed to aim at an enemy and another had to guarantee a long stationary position for the chariot.', 
'b) The main war tactic had to assure safety for the ones at the back of the main group of fighters.',
'c) It is believed that riding a horse made people think of using a chariot for military purposes.',
'd) Evidence shows why riding a horse increased the breeding of horses.',
'e) If a person were riding a horse, a variety of military actions could be possible.', 'E', NULL, 4);

SELECT * FROM questoes;

--TESTE BANCO DE DADOS

SELECT 
    s.descricao, 
    s.dificuldade, 
    s.url, 
    s.url_imagem_nivel,
    q.titulo, 
    q.fonte_questao, 
    q.texto_auxiliar, 
    q.enunciado, 
    q.alternativa_a, 
    q.alternativa_b, 
    q.alternativa_c, 
    q.alternativa_d, 
    q.alternativa_e, 
    q.resposta_correta, 
    q.url_imagem
FROM 
    simulados s
JOIN 
    questoes q ON s.id = q.id_simulado;

