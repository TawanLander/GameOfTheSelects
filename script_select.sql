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
		
        where missao.nome = 'Salvar os dados da SPTech' and agentes.nome like 'n%'
        
/* Selecione todos os nomes dos agentes que terminem com 'bond' e suas respectivas especialidades que tem grau >= 6*/

/* Traga o nome e o cargo dos envolvidos formatados com a primeira letra maiúscula onde
nome dos envolvidos que incluam 'a' e que o cargo seja 'diretor' por ordem descrescente */

/* Traga o nome e a descrição dos envolvidos que não são alvos, formate o campo nome e descrição para que ambos fiquem com a primeira letra maiúscula */

/* Traga o nome, a data e o objetivo de uma a missão que acabe em x data e com o objetivo y trate os todas as colunas com a primeira letra maiúscula*/

/* Traga o nome e o objetivo das missões que comecem em 'x' data e que o objetivo contenha 'y', e que ainda não tenha data de finalização da missão */