/*
CONCEITOS:
FÁCIL:
WHERE, LIKE, ORDER BY, ASC/DESC, DESCRIBE, AND

MÉDIO:
1 JOIN, FUNÇÕES MATEMÁTICAS (COUNT, AVG, MIN, MAX), CONCAT(), IFNULL()

DIFÍCIL:
+DE 1 JOIN, GROUP BY, LEFT/RIGHT JOIN, SUBQUERY, CASE WHEN
*/


/* Selecione todos os agentes da missão 'Salvar os dados da SPTech' que começem com 'n' no nome, traga junto as suas especialidades com as colunas especialidade e grau, seus 
equipamentos com as colunas nome tipo e funcionalidade e seus recursos com as colunas nome, utilidade e qtd
 trate as colunas para todas terem letra maiúscula como primeira letra, a coluna qtd deve estar escrita como 'Quantidade', todas as palavras acentuadas corretamente*/
 
 select agentes.nome as 'Nome', agentes.serie as 'Código do Agente', missao.nome as 'Missão', especialidade.*, equipamentos.*, recursos.* 
	from agentes
		join link_missao_agentes as LMA
			on agentes.id = LMA.agentes_id
		join missao
			on missao.id = LMA.missao_id 
            
		join link_especialidades_agentes as LEsA
			on agentes.id = LEsA.agentes_id
		join especialidades
			on especialidades.id = LEsA.especialidades_id
            
		join link_recursos_agentes as LRA
			on agentes.id = LRA.agentes_id
		join recursos
			on recursos.id = LRA.recursos.id
            
		join link_equipamentos_agentes as LEqA
			on agentes.id = LEqA.agentes_id
		join equipamentos
			on equipamentos.id = LEqA.equipamentos_id
		
        where missao.nome = 'Salvar os dados da SPTech' and agentes.nome like 'n%';
        
/* Selecione todos os nomes dos agentes que terminem com 'bond' e suas respectivas especialidades que tem grau >= 6*/

/* Traga o nome e o cargo dos envolvidos formatados com a primeira letra maiúscula onde
nome dos envolvidos que incluam 'a' e que o cargo seja 'diretor' por cargo em ordem descrescente */
select nome as 'Nome', cargo as 'Cargo' from envolvidos where nome like '%a%' and cargo = 'diretor' order by cargo desc;

/* Traga o nome e a descrição dos envolvidos que não são alvos, formate o campo nome e descrição para que ambos fiquem com a primeira letra maiúscula e acentuados corretamente */
select nome as 'Nome', descricao as 'Descrição' from envolvidos where alvo = 0;

/* Traga o nome, a data e o objetivo de uma a missão que acabe em '12 de janeiro de 2019 as 22:24 aos 16 segundos' data e com o objetivo 'Invadir a casa branca' 
trate os todas as colunas com a primeira letra maiúscula*/
select nome as 'Nome', dtInicio as 'Data de Início', objetivo as 'Objetivo' from missao where dtFim = '2019-01-12 22:24:16' and objetivo = 'Invadir a casa branca';

/* Traga o nome e o objetivo das missões que comecem em '10 de abril de 2025 as 10:59' data e que o objetivo contenha 'descobrir', e que ainda não tenha data de finalização da missão */
select nome, objetivo from missao where dtInicio = '2025-04-10 10:59:00' and objetivo like '%descobrir%' and dtFim is null;

/* Selecione o nome com a coluna formatada com a primaira letra maiúscula e a descrição, formatada da mesma maneira e com acentuação, dos envolvidos 
que sejam conhecidos como "El Macho" e que são alvos que são alvos */
select nome as 'Nome', descricao as 'Descrição' from envolvidos where aka = 'El Macho' and alvo = 1;

/* Selecione uma missão que durou 0 segundos, traga seu nome e objetivo com a coluna formatada com a primeira letra maiúscula*/
select nome as 'Nome', objetivo as 'Objetivo' from missao where dtInicio = dtFim;

/* Selecione  a todas as localizações do pais 'Brasil' e da provincia 'São Paulo' traga os resultados em ordem alfabética, ordanados pelo nome */
select * from localizacao where pais = 'Brasil' and provincia = 'São Paulo' order by nome asc;

/* Selecione a quantidade de recursos, o nome e sua utilidade, formate as colunas em com a primeira letra maiúscula, de forma que os resultados sejam de recursos com uma quantidade >= 100.97
e sua utilidade seja Comprar Coisas*/
select qtd as 'Quantidade', nome as 'Nome', utilidade as 'Utilidade' from recursos where qtd >= 100.97 and utilidade = 'Comprar Coisas';

/* Selecione todas as especialidades com grau > 5 ordene por especialidade em ordem decrescente*/
select * from especialidades where grau > 5 order by especialidade desc;

/* Selecione as localizações onde a cidade contenha 'Del' e que o pais comece com 'M' */
select * from localizacao where cidade like '%del%' and pais like 'M%';

/* Traga os campos da tabela missão */
describe missao;

/* Traga a localização do país que comece com 'J', sua provincia e cidade contenham 'k' ordene por lagradouro em ordem decrescente */
select * from localizacao where pais like 'J%' and provincia like '%k%' and cidade like '%k%' order by logradouro desc;

/* Selecione o nome e a série dos agentes que sua serie termine com 20 e o nome comece com A, ordene em ordem crescente pelo nome */
select nome, serie from agentes where serie like '%20' and nome like 'A%' order by nome asc;

/* Traga o nome e a data de finalização das missoes cujo objetivo seja resgate e que tenham começado a meia noite de 01 de janeiro de 2026, ordene pela data de finalização decrescente*/
select nome, dtFim from missao where objetivo like '%resgate%' and dtInicio = '2026-01-01 00:00:00' order by dtFim desc;

/* Traga o nome, tipo e funcionalidade dos equipamento onde o tipo seja 'Suporte' e sua funcionalidade contenha criptografia, ordene por tipo em ordem crescente */
select nome, tipo, funcionalidade from Equipamentos where tipo = 'Suporte' and funcionalidade like '%criptografia%' order by tipo asc;