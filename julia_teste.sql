--CRUD

--INSERT

-- Insere uma nova questão na tabela 'questoes', associada ao simulado com id = 5.
INSERT INTO questoes (titulo, fonte_questao, texto_auxiliar, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, url_imagem, id_simulado) 
VALUES 
('QUESTÃO 16', '(Enem 2022)', NULL, 'O termo breakthrough no texto refere-se a:', 
'a) superação.', 
'b) avanço.', 
'c) retrospectiva.', 
'd) fracasso.', 
'e) estagnação.', 
'B', NULL, 1);

-- SELECTS

-- Seleciona todos os registros da tabela 'simulados'.
SELECT * FROM simulados;

-- Seleciona todas as questões do simulado com id_simulado = 1.
SELECT * FROM questoes WHERE id_simulado = 1;

-- Seleciona todas as questões do simulado com id_simulado = 2.
SELECT * FROM questoes WHERE id_simulado = 2;

-- Seleciona todas as questões do simulado com id_simulado = 3.
SELECT * FROM questoes WHERE id_simulado = 3;

-- Seleciona todas as questões do simulado com id_simulado = 4.
SELECT * FROM questoes WHERE id_simulado = 4;

-- Títulos das questões e suas respectivas respostas corretas para o simulado com id_simulado igual a 2
SELECT titulo, resposta_correta FROM questoes WHERE id_simulado = 2;

-- Conta o número de questões em cada simulado e agrupa pelo id_simulado.
SELECT id_simulado, COUNT(*) AS total_questoes 
FROM questoes 
GROUP BY id_simulado;

-- Selecionar todos os dados de questões com seus respectivos simulados (usando JOIN):
SELECT q.id_questoes, q.titulo, q.enunciado, q.resposta_correta, s.dificuldade
FROM questoes q
JOIN simulados s ON q.id_simulado = s.id;

-- UPDATES

-- Atualiza a descrição do simulado com dificuldade 'NÍVEL EXPERT'.
UPDATE simulados 
SET descricao = 'Desafie-se com este novo simulado para especialistas.' 
WHERE dificuldade = 'NÍVEL EXPERT';

-- Atualiza a resposta correta da questão com id_questoes = 2 para 'A'.
UPDATE questoes 
SET resposta_correta = 'A' 
WHERE id_questoes = 2;

--DELETES

-- Exclui todas as questões associadas ao simulado com id_simulado = 2.
DELETE FROM questoes WHERE id_simulado = 4;

-- Exclui o simulado com id = 5. 
DELETE FROM simulados WHERE id = 5;

