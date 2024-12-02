CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    imagem_url TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL
);

INSERT INTO noticias (titulo, descricao, imagem_url, autor) VALUES 
('DICAS PARA PASSAR NA ENTREVISTA DE ADMISSÃO EM HARVARD', 
'Estratégias de sucesso para impressionar em uma das entrevistas mais concorridas do mundo.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img1.png', 
'Flavia Mendes'),

('DOMINE OS TEMPOS VERBAIS EM INGLÊS PARA O ENEM', 
'Entenda e pratique todos os tempos verbais que mais caem no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img2.jpg', 
'Luiz Gabriel'),

('DIALETOS DO INGLÊS: CONHEÇA AS VARIAÇÕES MAIS COMUNS E COMO ELAS APARECEM NO ENEM', 
'Explore os diferentes dialetos do inglês e saiba como eles podem aparecer nas questões do ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img3.png', 
'Flavia Mendes'),

('INTERPRETAÇÃO DE CHARGES, IMAGENS E GRÁFICOS EM INGLÊS', 
'Dicas para entender e interpretar com precisão a mídia visual em inglês, um conteúdo que costuma aparecer no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img4.png', 
'Flavia Mendes'),

('COMO IDENTIFICAR FALSOS COGNATOS NO ENEM', 
'Evite erros comuns ao identificar palavras que parecem, mas não são o que você imagina.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img5.png', 
'Luiz Gabriel'),

('TÉCNICAS DE SKIMMING E SCANNING PARA PROVAS DE INGLÊS', 
'Otimize seu tempo e acerte mais questões utilizando técnicas rápidas de leitura.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img6.png', 
'Luiz Gabriel'),

('EXPRESSÕES IDIOMÁTICAS EM INGLÊS - O QUE PODE CAIR NO ENEM', 
'Um guia prático das expressões idiomáticas mais recorrentes nas provas', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img7.png', 
'Giovanna Alba'),

('LITERATURA INGLESA NO ENEM - OBRAS E AUTORES QUE VOCÊ PRECISA CONHECER', 
'Conheça os principais autores e obras da literatura inglesa que podem ser cobrados no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img8.png', 
'Giovanna Alba'),

('VERBOS MODAIS EM INGLÊS - ENTENDA COMO ELES SÃO COBRADOS NO ENEM', 
'Domine o uso de verbos modais e prepare-se para questões frequentes no exame.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img9.png', 
'Giovanna Alba'),

('GÊNEROS TEXTUAIS EM INGLÊS - QUAIS SÃO E COMO ESTUDÁ-LOS PARA O ENEM', 
'Identifique e estude os diferentes gêneros textuais que aparecem nas provas do ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img10.png', 
'Luiz Gabriel'),

('FIQUE POR DENTRO: DAS GÍRIAS E EXPRESSÕES DO INGLÊS QUE TODO MUNDO ESTÁ USANDO NAS REDES EM 2024.', 
'Entenda os Termos e Frases em Inglês Que Estão Bombando nas Redes Sociais em 2024', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img11.png', 
'Flavia Mendes'),

('ESTRATÉGIAS PARA MELHORAR SUA ESCRITA EM INGLÊS PARA O ENEM', 
'Dicas práticas para desenvolver uma escrita clara e coerente, essencial para a redação.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img12.png', 
'Giovanna Alba'),

('COMO ENTENDER IRONIAS E SARCASMOS EM TEXTOS DA LÍNGUA INGLESA NO ENEM', 
'Aprenda a identificar e interpretar ironias e sarcasmos, elementos comuns em textos e questões do ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img13.png', 
'Alejandra Barros'),

('VOCABULÁRIO ESSENCIAL DA LÍNGUA INGLESA PARA O ENEM', 
'Uma lista das palavras e expressões mais importantes que frequentemente aparecem nas provas de inglês.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img14.png', 
'Alejandra Barros'),

('COMO FAZER UMA BOA REVISÃO DE LÍNGUA INGLESA PARA O ENEM EM POUCO TEMPO', 
'Estratégias para revisar de maneira eficiente todo o conteúdo de inglês que cai no ENEM.', 
'https://site-ingles-theta.vercel.app/img/noticias-pad-img15.png', 
'Alejandra Barros');