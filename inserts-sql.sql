# Inserts SQL - Missão Impossível SPTech

USE selects;

INSERT INTO missao (nome, objetivo, dtInicio, dtFim) VALUES
('Salvar os dados da SPTech', 'Descobrir quem vazou os dados da SPTech e impedir o vazamento definitivo', '2026-05-20 19:00:00', '2026-05-28 23:59:59'),
('Operação Café Fantasma', 'Investigar reuniões clandestinas realizadas em cafeterias próximas à faculdade', '2026-04-11 15:00:00', '2026-04-14 20:00:00'),
('Projeto Hydra', 'Descobrir uma rede de invasores infiltrados em instituições acadêmicas', '2026-03-01 08:00:00', '2026-03-21 18:00:00'),
('Firewall de Vidro', 'Recuperar arquivos criptografados antes do vazamento internacional', '2026-02-15 10:00:00', '2026-02-18 22:00:00');

INSERT INTO localizacao (pais, provincia, cidade, bairro, logradouro) VALUES
('Brasil', 'São Paulo', 'São Paulo', 'Aclimação', 'Rua Haddock Lobo'),
('Brasil', 'São Paulo', 'São Paulo', 'Paulista', 'Av. Paulista'),
('Brasil', 'São Paulo', 'São Paulo', 'Liberdade', 'Rua da Glória'),
('Brasil', 'São Paulo', 'São Paulo', 'Consolação', 'Rua Augusta');

INSERT INTO link_missao_localizacao VALUES
(1,1),
(2,2),
(3,3),
(4,4);

-- =========================
-- AGENTES
-- =========================
INSERT INTO agentes (nome, serie) VALUES
('Ethan Hunt', 'Missão Impossível'),
('Nathan Drake', 'Uncharted'),
('Nina Williams', 'Tekken'),
('James Bond', '007'),
('Lara Croft', 'Tomb Raider'),
('Sam Fisher', 'Splinter Cell'),
('Jason Bourne', 'Bourne'),
('Natasha Romanoff', 'Marvel'),
('Neo Anderson', 'Matrix'),
('Nick Fury', 'Marvel');

INSERT INTO especialidades (especialidade, grau) VALUES
('Hacking', 10),
('Infiltracao', 9),
('Disfarce', 8),
('Contraespionagem', 9),
('Sniper', 7),
('Criptografia', 10),
('Interrogatorio', 8),
('Combate', 9),
('Monitoramento', 8),
('Engenharia Reversa', 10);

INSERT INTO equipamentos (nome, tipo, funcionalidade, quantidade) VALUES
('Camera Invisivel', 'Espionagem', 'Registrar conversas sem levantar suspeitas', 12),
('Notebook Blackbird', 'Tecnologia', 'Invadir sistemas protegidos', 8),
('Drone Coruja', 'Reconhecimento', 'Mapear movimentacao de suspeitos', 5),
('Escuta Magnetica', 'Espionagem', 'Captar audio atraves de paredes', 15),
('Relogio EMP', 'Tecnologia', 'Desativar dispositivos eletrônicos', 4),
('Caneta Laser', 'Infiltracao', 'Cortar superfícies metálicas', 10),
('Microfone de Cafe', 'Espionagem', 'Captar conversas em cafeterias', 7),
('Óculos Spectre', 'Monitoramento', 'Reconhecimento facial em tempo real', 6);

INSERT INTO recurso (nome, utilidade, quantidade) VALUES
('Bitcoin Rastreado', 'Monitorar pagamentos ilegais', 15.50),
('Identidades Falsas', 'Infiltracao em ambientes restritos', 20.00),
('Servidores Espelho', 'Backup de dados roubados', 6.00),
('Carros Blindados', 'Extracao de agentes', 3.00),
('Passagens Internacionais', 'Fuga emergencial', 18.00),
('Cafe Premium', 'Cobertura para encontros secretos', 42.00);

INSERT INTO link_especialidades_agentes VALUES
(1,2),
(1,4),
(1,8),
(2,1),
(2,9),
(3,5),
(3,2),
(4,4),
(4,7),
(5,2),
(5,8),
(6,9),
(6,1),
(7,4),
(7,10),
(8,3),
(8,8),
(9,6),
(9,10),
(10,4),
(10,9);

-- =========================
-- RELAÇÃO AGENTES / EQUIPAMENTOS
-- =========================
INSERT INTO link_equipamentos_agentes VALUES
(1,1),
(1,2),
(2,3),
(2,2),
(3,6),
(4,1),
(4,4),
(5,8),
(6,3),
(6,4),
(7,2),
(8,6),
(9,5),
(10,8);

INSERT INTO link_recursos_agentes VALUES
(1,1),
(1,2),
(2,3),
(3,4),
(4,5),
(5,2),
(6,1),
(7,3),
(8,6),
(9,1),
(10,4);


INSERT INTO link_missao_agentes VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,2),
(6,2),
(4,2),
(7,3),
(8,3),
(9,4),
(10,4);


INSERT INTO envolvidos (missao_id, nome, cargo, aka, descricao, alvo) VALUES
(1, 'Ethan Hunt', 'Aluno', 'GhostFox', 'Agente infiltrado enviado por Ethan para investigar a turma internamente', 0),
(1, 'Rafael Voss', 'Aluno', 'NullByte', 'Principal suspeito de instalar o backdoor nos servidores da SPTech', 1),
(1, 'Ana Clara', 'Aluna', 'Pixel', 'Responsavel pelo laboratorio de hardware da turma', 0),
(1, 'Bruno Lima', 'Aluno', 'Crash', 'Costuma permanecer no laboratorio apos o horario', 0),
(1, 'Carlos Eduardo', 'Aluno', 'Kernel', 'Especialista em Linux e automacoes', 0),
(1, 'Daniel Martins', 'Aluno', 'Dante', 'Participava de competicoes de hacking etico', 0),
(1, 'Eduarda Souza', 'Aluna', 'Echo', 'Monitorava os grupos internos da faculdade', 0),
(1, 'Felipe Rocha', 'Aluno', 'Cipher', 'Interessado em criptografia e redes', 0),
(1, 'Gabriel Moraes', 'Aluno', 'Root', 'Ajudava colegas com problemas no banco de dados', 0),
(1, 'Helena Duarte', 'Aluna', 'Hexa', 'Desenvolvia scripts de automacao', 0),
(1, 'Igor Nunes', 'Aluno', 'Bitstorm', 'Fascinado por engenharia reversa', 0),
(1, 'Julia Sampaio', 'Aluna', 'Nova', 'Participava da equipe academica de seguranca', 0),
(1, 'Kaio Ribeiro', 'Aluno', 'Proxy', 'Frequentava cafeterias proximas para reunioes secretas', 0),
(1, 'Larissa Melo', 'Aluna', 'Mirage', 'Especialista em UI e coleta de dados', 0),
(1, 'Matheus Prado', 'Aluno', 'Spectre', 'Conhecido por desaparecer durante aulas importantes', 0),
(1, 'Nicole Araujo', 'Aluna', 'Nebula', 'Ajudava professores com sistemas internos', 0),
(1, 'Otavio Fernandes', 'Aluno', 'Zero', 'Conhecia vulnerabilidades antigas do sistema', 0),
(1, 'Patricia Gomes', 'Aluna', 'Viper', 'Monitorava logs dos computadores da sala', 0),
(1, 'Quintino Alves', 'Aluno', 'Quantum', 'Apaixonado por IA e automacao', 0),
(1, 'Renata Dias', 'Aluna', 'Shadow', 'Frequentemente conectada via VPN', 0),
(1, 'Samuel Costa', 'Aluno', 'Phantom', 'Realizava manutencoes em notebooks da turma', 0),
(1, 'Tais Moura', 'Aluna', 'Pulse', 'Tinha acesso aos laboratorios restritos', 0),
(1, 'Ueslei Batista', 'Aluno', 'Hunter', 'Colecionava dispositivos antigos', 0),
(1, 'Vanessa Lima', 'Aluna', 'Aurora', 'Participava das reunioes da atlética', 0),
(1, 'William Torres', 'Aluno', 'Crow', 'Desenvolvia APIs em projetos paralelos', 0),
(1, 'Xavier Mendes', 'Aluno', 'Switch', 'Manipulava equipamentos de rede', 0),
(1, 'Yasmin Freitas', 'Aluna', 'Venom', 'Interessada em ciberseguranca ofensiva', 0),
(1, 'Zeca Oliveira', 'Aluno', 'Matrix', 'Criava bots para tarefas automatizadas', 0),
(1, 'Amanda Freire', 'Aluna', 'Ruby', 'Auxiliava em testes de software', 0),
(1, 'Beatriz Lopes', 'Aluna', 'Skylab', 'Pesquisava ataques DDoS para trabalhos academicos', 0),
(1, 'Caio Vinicius', 'Aluno', 'Firewall', 'Era responsavel pela rede do grupo de estudos', 0),
(1, 'Diego Ramos', 'Aluno', 'Comet', 'Montava servidores caseiros', 0),
(1, 'Erica Farias', 'Aluna', 'Oracle', 'Criava dashboards para analise de logs', 0),
(1, 'Fernando Reis', 'Aluno', 'Pulsefire', 'Especialista em banco de dados', 0),
(1, 'Giovana Campos', 'Aluna', 'Moon', 'Participava de campeonatos de programação', 0),
(1, 'Henrique Barros', 'Aluno', 'Titan', 'Conhecido pelo alto desempenho em redes', 0),
(1, 'Isabela Teixeira', 'Aluna', 'Crystal', 'Analisava trafego suspeito nos laboratorios', 0),
(1, 'Joao Pedro', 'Aluno', 'Vector', 'Gostava de automatizar scripts SQL', 0),
(1, 'Karen Silva', 'Aluna', 'Frost', 'Monitorava acessos do servidor academico', 0),
(1, 'Leonardo Pires', 'Aluno', 'Night', 'Trabalhava em freelas de TI', 0),
(1, 'Mariana Castro', 'Aluna', 'Light', 'Especialista em suporte técnico', 0),
(1, 'Nathan Oliveira', 'Aluno', 'Nexus', 'Possuia acesso remoto aos computadores da sala', 0),
(1, 'Olivia Ramos', 'Aluna', 'Zenith', 'Auxiliava professores com backups', 0),
(1, 'Paulo Henrique', 'Aluno', 'Rogue', 'Era visto frequentemente no servidor principal', 0),
(1, 'Quezia Martins', 'Aluna', 'Delta', 'Trabalhava com análise de malware', 0),
(1, 'Ricardo Alves', 'Aluno', 'Storm', 'Participava de fóruns underground', 0),
(1, 'Sabrina Dias', 'Aluna', 'Blink', 'Tinha conhecimento de autenticação JWT', 0),
(1, 'Thiago Mendes', 'Aluno', 'Crawler', 'Construia scrapers para testes', 0),
(1, 'Uriel Santana', 'Aluno', 'Lock', 'Colecionava exploits antigos', 0),
(1, 'Valeria Costa', 'Aluna', 'Pearl', 'Analisava bancos relacionais', 0),
(1, 'Wellington Souza', 'Aluno', 'Omega', 'Investigava vulnerabilidades web', 0),
(1, 'Ximena Rocha', 'Aluna', 'Iris', 'Responsavel por relatorios internos', 0),
(1, 'Yuri Fernandes', 'Aluno', 'Ghost', 'Frequentava laboratorios vazios durante a madrugada', 0),
(1, 'Zilda Moura', 'Aluna', 'NovaByte', 'Auxiliava na documentação técnica', 0),
(1, 'Arthur Gomes', 'Aluno', 'Signal', 'Configurava roteadores da faculdade', 0),
(1, 'Bianca Moraes', 'Aluna', 'Spark', 'Criava testes automatizados', 0),
(1, 'Cecilia Prado', 'Aluna', 'Luna', 'Monitorava atividades suspeitas online', 0),
(1, 'Douglas Vieira', 'Aluno', 'Atlas', 'Possuia acesso físico ao laboratório', 0),
(1, 'Elaine Porto', 'Aluna', 'PixelDust', 'Administrava grupos de estudos', 0),
(1, 'Fabio Teles', 'Aluno', 'Static', 'Gostava de explorar APIs abertas', 0),
(1, 'Geovana Luz', 'Aluna', 'NovaLink', 'Auxiliava em auditorias internas', 0),
(1, 'Hugo Sales', 'Aluno', 'NightFox', 'Especialista em redes wireless', 0),
(1, 'Ivan Rezende', 'Aluno', 'Bugster', 'Encontrava falhas em sistemas legados', 0),
(1, 'Jaqueline Neri', 'Aluna', 'Glitch', 'Analisava logs de segurança', 0),
(1, 'Kevin Duarte', 'Aluno', 'Circuit', 'Fazia manutenção dos computadores da sala', 0),
(1, 'Livia Barros', 'Aluna', 'Sky', 'Participava da equipe de inovação', 0),
(1, 'Murilo Antunes', 'Aluno', 'Titanium', 'Criava ambientes virtualizados', 0),
(1, 'Nicolas Faria', 'Aluno', 'DarkPulse', 'Conhecia rotinas internas do servidor', 0);

INSERT INTO envolvidos (missao_id, nome, cargo, aka, descricao, alvo) VALUES
(2, 'Rafael Voss', 'Frequentador', 'NullByte', 'Foi visto em uma cafeteria utilizando um notebook criptografado e uma camera escondida', 1),
(2, 'Jefferson Almeida', 'Analista', 'CoffeeMan', 'Estava pedindo um café quando foi gravado discretamente', 0),
(2, 'Camila Torres', 'Atendente', 'Latte', 'Percebeu movimentacoes suspeitas na cafeteria', 0),
(2, 'Sam Fisher', 'Agente', 'Splinter', 'Responsavel pela vigilancia do local', 0),

(3, 'Ricardo Alves', 'Programador', 'Storm', 'Encontrado em fóruns ligados ao Projeto Hydra', 1),
(3, 'Natasha Romanoff', 'Agente', 'Black Widow', 'Investigava a rede internacional de invasores', 0),
(3, 'Nathan Oliveira', 'Estudante', 'Nexus', 'Teve contato indireto com os suspeitos da SPTech', 0),

(4, 'Fernando Reis', 'Especialista BD', 'Pulsefire', 'Ajudou na recuperação de arquivos criptografados', 0),
(4, 'Neo Anderson', 'Consultor', 'The One', 'Auxiliou Ethan na engenharia reversa dos arquivos', 0),
(4, 'Rafael Voss', 'Suspeito', 'NullByte', 'Seu nome apareceu em backups apagados do sistema', 1);