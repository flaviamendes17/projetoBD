<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/8c/SENAI_S%C3%A3o_Paulo_logo.png" alt="Texto Alternativo" width="200">
</div>

<h1 align="center"> PORTAL MATÉRIAS - INGLÊS </h1>

Este projeto tem como objetivo desenvolver e implementar um banco de dados para o portal, integrando suas funcionalidades e conteúdo de forma estruturada. A estrutura do banco foi planejada para ser funcional, eficiente e pronta para consultas e futuras aplicações.

## LINKS
  <ul>
    <li><a href="https://www.canva.com/design/DAGXm_HE0gs/tM9J_H3gmbgxlceWwRf9RQ/edit?utm_content=DAGXm_HE0gs&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton" target="_blank">Canva Design- Slide</a></li>
    <li><a href="https://site-ingles-theta.vercel.app/" target="_blank">Site Inglês</a></li>
  </ul>
</div>


## MER
##### ENTIDADES
```
TABLE sobre_nos
TABLE membros
TABLE entrevistadores
TABLE entrevistas
TABLE simulados
TABLE questoes
TABLE carreiras
TABLE dicas
TABLE noticias
TABLE formulario
TABLE links
```
##### ATRIBUTOS
sobre_nos
```
id
texto_principal 
imagem_principal
```
membros
```
id 
sobre_id
nome 
foto 
descricao 
```
entrevistadores
```
id 
nome 
descricao
```
entrevistas
```
id
titulo
descricao
video_url
foto
entrevistador_id
```
simulados
```
id
dificuldade
descricao
url
url_imagem_nivel
```
questoes
```
id_questoes
titulo
fonte_questao
texto_auxiliar
enunciado
alternativa_a
alternativa_b
alternativa_c
alternativa_d
alternativa_e
resposta_correta
url_imagem
id_simulado
```
carreiras
```
id_carreira
nome_carreira
img_url
descricao_carreira
```
dicas
```
id_dica
categoria_dica
numero_dica
titulo_dica
descricao_dica
img_url
link_img_url
link_url
```
noticias
```
id
titulo
descricao
imagem_url
autor
link_img_url
link_url
link_imagem
```
formulario
```
id
nome
email
mensagen
```
links
```
id
membro_id
email
instagram
linkedin
github

```
## DER
![Texto Alternativo](https://s10.aconvert.com/convert/p3r68-cdx67/an04g-r4iaj.jpg)

## Conheça a equipe! 🌐📌

Por trás da criação temos cinco integrantes que fizeram o site acontecer. Conheça eles!
 ### Alejandra - Desenvolvedora
 <a href="https://ibb.co/YDMqFz5"><img src="https://i.ibb.co/YDMqFz5/alejandra.jpg" alt="alejandra" border="0"></a>
```
FUNÇÃO: 
• Tabela de carreiras;
• Tabela dicas.
```

### Flavia - Scrum Master
<a href="https://ibb.co/McyWxYw"><img src="https://i.ibb.co/McyWxYw/flavia.jpg" alt="flavia" border="0"></a>
```
FUNÇÃO: 
• DER
• Tabela sobre nós/ membros;
• Tabela video(entrevistas).

```
### Giovanna - Desenvolvedora
<a href="https://ibb.co/fXbjDmp"><img src="https://i.ibb.co/fXbjDmp/giovanna.jpg" alt="giovanna" border="0"></a>
```
FUNÇÃO: 
• Tabela de formulário;
• Tabela  links ( que tem relacionamento com a tabela membros da Flavia); 
• Inserts do simulado intermediário;
• MER.
```

### Júlia Guarnieri - Product Owner 
<a href="https://ibb.co/0CD1LyD"><img src="https://i.ibb.co/0CD1LyD/guarnieri.jpg" alt="guarnieri" border="0"></a>
```
FUNÇÃO: 
• Tabela simulados / questoes;
• Inserts nível básico, avançado e proficiente;
• Arrumar README.
```

### Luiz Gabriel - Desenvolvedor
<a href="https://ibb.co/5kC8xS0"><img src="https://i.ibb.co/5kC8xS0/luiz.jpg" alt="luiz" border="0"></a>

```
FUNÇÃO: 
•Tabela Notícias.
```
## Agradecimentos e Conclusão
Agradecemos a todos que colaboraram para a realização deste projeto. Cada membro da equipe contribuiu com suas habilidades para construir um portal funcional e organizado. Este trabalho é fruto de esforço coletivo e aprendizado ao longo do processo.
Esperamos que o portal seja útil e atenda às suas necessidades. Obrigado por conferir nosso projeto! 😉✌❤

