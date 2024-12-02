CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    imagem_url TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL,
    img_url TEXT,
    link_img_url TEXT,
    link_url TEXT,
    link_imagem TEXT
);

INSERT INTO noticias (titulo, descricao, imagem_url, autor, img_url, link_img_url, link_url, link_imagem) VALUES 
('DICAS PARA PASSAR NA ENTREVISTA DE ADMISSÃO EM HARVARD', 
'Estratégias de sucesso para impressionar em uma das entrevistas mais concorridas do mundo.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img1.png', 
'Flavia Mendes', 'https://site-ingles-theta.vercel.app/img/estrategias1.png', 'https://site-ingles-theta.vercel.app/img/planejar01.png', 'https://site-ingles-theta.vercel.app/img/entrevistas%20postura.jpg'),

('DOMINE OS TEMPOS VERBAIS EM INGLÊS PARA O ENEM', 
'Entenda e pratique todos os tempos verbais que mais caem no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img2.jpg', 
'Luiz Gabriel', 'https://teachpedia.com.br/wp-content/uploads/2023/12/tempos-verbais-em-ingles-future-perfect-continuous.jpg', 'https://st2.depositphotos.com/2707583/7234/v/450/depositphotos_72349447-stock-illustration-doodle-icon-london-seamless-pattern.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzqv8SGRyy-JGxSb2gdrK4B-PXl89RZHlMjA&s', 'https://img.freepik.com/vector-gratis/diseno-ilustracion-escuela-ingles-dibujado-mano_23-2149522696.jpg'),

('DIALETOS DO INGLÊS: CONHEÇA AS VARIAÇÕES MAIS COMUNS E COMO ELAS APARECEM NO ENEM', 
'Explore os diferentes dialetos do inglês e saiba como eles podem aparecer nas questões do ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img3.png', 'Flavia Mendes', 'https://site-ingles-theta.vercel.app/img/ingles%20americano%20e%20britanico.jpg'),

('INTERPRETAÇÃO DE CHARGES, IMAGENS E GRÁFICOS EM INGLÊS', 
'Dicas para entender e interpretar com precisão a mídia visual em inglês, um conteúdo que costuma aparecer no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img4.png', 
'Flavia Mendes', 'https://site-ingles-theta.vercel.app/img/interpretação%20ingles.jpg', 'https://site-ingles-theta.vercel.app/img/graficos.jpg'),

('COMO IDENTIFICAR FALSOS COGNATOS NO ENEM', 
'Evite erros comuns ao identificar palavras que parecem, mas não são o que você imagina.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img5.png', 
'Luiz Gabriel', 'https://www.studiocambridge.co.uk/wp-content/uploads/2020/10/Learn-English-Word-Cloud.png', 'https://as2.ftcdn.net/v2/jpg/02/80/12/65/1000_F_280126582_Ig4OLIbbSryXwe2S63aBu2TKY0Bj9WjH.jpg', 'https://img.freepik.com/free-vector/hand-drawn-english-school-illustration-design_23-2149537609.jpg', 'https://st2.depositphotos.com/1022214/8181/i/450/depositphotos_81813122-stock-photo-text-do-you-speak-english.jpg'),

('TÉCNICAS DE SKIMMING E SCANNING PARA PROVAS DE INGLÊS', 
'Otimize seu tempo e acerte mais questões utilizando técnicas rápidas de leitura.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img6.png', 
'Luiz Gabriel', 'https://cdn.blog.estrategiavestibulares.com.br/vestibulares/wp-content/uploads/2020/02/scanning-e-skimming-1200x675.webp', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-YmrjD4vMqYBxaF1M0QTxwA_jaU2FAVzyBQ&s'),

('EXPRESSÕES IDIOMÁTICAS EM INGLÊS - O QUE PODE CAIR NO ENEM', 
'Um guia prático das expressões idiomáticas mais recorrentes nas provas', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img7.png', 
'Giovanna Alba', 'https://site-ingles-theta.vercel.app/img/expressoes-idiomáticas.png'),

('LITERATURA INGLESA NO ENEM - OBRAS E AUTORES QUE VOCÊ PRECISA CONHECER', 
'Conheça os principais autores e obras da literatura inglesa que podem ser cobrados no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img8.png', 
'Giovanna Alba', 'https://site-ingles-theta.vercel.app/img/william-shakespeare.jpg', 'https://site-ingles-theta.vercel.app/img/charles-dickens.webp', 'https://site-ingles-theta.vercel.app/img/Jane-Austen.jpg', 'https://site-ingles-theta.vercel.app/img/George%20Orwell.jpg'),

('VERBOS MODAIS EM INGLÊS - ENTENDA COMO ELES SÃO COBRADOS NO ENEM', 
'Domine o uso de verbos modais e prepare-se para questões frequentes no exame.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img9.png', 
'Giovanna Alba', 'https://site-ingles-theta.vercel.app/img/modal-verbs.jpg'),

('GÊNEROS TEXTUAIS EM INGLÊS - QUAIS SÃO E COMO ESTUDÁ-LOS PARA O ENEM', 
'Identifique e estude os diferentes gêneros textuais que aparecem nas provas do ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img10.png', 
'Luiz Gabriel'),

('FIQUE POR DENTRO: DAS GÍRIAS E EXPRESSÕES DO INGLÊS QUE TODO MUNDO ESTÁ USANDO NAS REDES EM 2024.', 
'Entenda os Termos e Frases em Inglês Que Estão Bombando nas Redes Sociais em 2024', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img11.png', 
'Flavia Mendes', 'https://site-ingles-theta.vercel.app/img/redes%20sociais.jpg'),

('ESTRATÉGIAS PARA MELHORAR SUA ESCRITA EM INGLÊS PARA O ENEM', 
'Dicas práticas para desenvolver uma escrita clara e coerente, essencial para a redação.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img12.png', 
'Giovanna Alba', 'https://site-ingles-theta.vercel.app/img/como-escrever-em-ingles-dicas-para-melhorar-a-escrita.jpg'),

('COMO ENTENDER IRONIAS E SARCASMOS EM TEXTOS DA LÍNGUA INGLESA NO ENEM', 
'Aprenda a identificar e interpretar ironias e sarcasmos, elementos comuns em textos e questões do ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img13.png', 
'Alejandra Barros', 'https://site-ingles-theta.vercel.app/img/noticia13-img-1.jpg', 'https://site-ingles-theta.vercel.app/img/noticia13-img-3.png', 'https://site-ingles-theta.vercel.app/img/noticia13-img-2.png', 'https://site-ingles-theta.vercel.app/img/noticia13-img-4.png'),

('VOCABULÁRIO ESSENCIAL DA LÍNGUA INGLESA PARA O ENEM', 
'Uma lista das palavras e expressões mais importantes que frequentemente aparecem nas provas de inglês.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img14.png', 
'Alejandra Barros', 'https://site-ingles-theta.vercel.app/img/noticia14-img-1.png', 'https://site-ingles-theta.vercel.app/img/noticia14-img-2.png'),

('COMO FAZER UMA BOA REVISÃO DE LÍNGUA INGLESA PARA O ENEM EM POUCO TEMPO', 
'Estratégias para revisar de maneira eficiente todo o conteúdo de inglês que cai no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img15.png', 
'Alejandra Barros', 'https://site-ingles-theta.vercel.app/img/noticia15-img-1.png', 'https://site-ingles-theta.vercel.app/img/noticia15-img-2.png', 'https://site-ingles-theta.vercel.app/img/noticia15-img-3.png', 'https://site-ingles-theta.vercel.app/img/noticia15-img-4.png');