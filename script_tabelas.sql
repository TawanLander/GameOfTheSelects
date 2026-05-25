/*
Missão impossível:

O Agente X foi indicado para uma nova missão, seu alvo fica no XXX, localizado na XXX




*/
create database selects;
use selects;

create table link_especialidades_agentes (
id_agentes int,
id_especialides int,
primary key (id_agentes, id_especialides),
constraint id_agentes_link_especialidades_agentes foreign key (id_agentes) references agentes(id),
constraint id_especialidades_link_especialidades_agentes foreign key (id_especialides) references especialidades(id)
);

create table link_equipamentos_agentes (
id_agentes int,
id_equipamentos int,
primary key (id_agentes, id_equipamentos),
constraint id_agentes_link_equipamentos_agentes foreign key (id_agentes) references agentes(id),
constraint id_especialidades_link_equipamentos_agentes foreign key (id_especialides) references especialidades(id)
);

create table link_recursos_agentes (
id_agentes int,
id_recursos int,
primary key (id_agentes, id_recursos),
constraint id_agentes_link_recursos_agentes foreign key (id_agentes) references agentes(id),
constraint id_recursos_link_recursos_agentes foreign key (id_recursos) references recursos(id)
);

create table link_missao_agentes (
id_agentes int,
id_missao int,
estadoMissao tinyint,
primary key (id_agentes, id_missao),
constraint id_agentes_link_missao_agentes foreign key (id_agentes) references agentes(id),
constraint id_missao_link_missao_agentes foreign key (id_missao) references missao(id)
);

create table link_missao_localizacao (
id_missao int,
id_localizacao int,
primary key (id_missao, id_localizacao),
constraint id_missao_link_missao_localizacao foreign key (id_missao) references missao(id),
constraint id_localizacao_link_missao_localizacao foreign key (id_localizacao) references localizacao(id)
);

create table especialidades(
id int primary key auto_increment,
especialidade varchar(50),
grau int,
constraint chkGrau check (grau in(1, 10))
);

create table agentes(
id int primary key auto_increment,
nome varchar(100),
serie varchar(20)
);

create table equipamentos(
id int primary key auto_increment,
nome varchar(100),
tipo varchar(25),
funcionalidade varchar(100),
quantidade int
);

create table alvos(
id int primary key auto_increment,
nome varchar(50),
cargo varchar(50),
aka varchar(50)
);

create table missao(
id int primary key auto_increment,
nome varchar(50),
objetivo varchar(100),
dtIncio datetime,
dtFim datetime
);

create table localizacao(
id int primary key auto_increment,
pais varchar(50),
provincia varchar(50),
cidade varchar(50),
bairro varchar(50),
logradouro varchar(80),
nome varchar(50)
);

create table recurso(
id int primary key auto_increment,
nome varchar(50),
utilidade varchar(50),
qtd decimal(10, 2)
);