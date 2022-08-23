CREATE TABLE ALUNOS
( ID_ALUNO INT PRIMARY KEY NOT NULL,
	NOME VARCHAR(200),
	DATA_NASCIMENTO DATE,
	SEXO VARCHAR(1), --M para Masculino e F para Feminino
	DATA_CADASTRO DATETIME,
	LOGIN_CADASTRO VARCHAR(15)
	);

	DROP TABLE ALUNOS;

	CREATE TABLE SITUACAO
	(
	id_situacao int PRIMARY KEY NOT NULL,
	situacao varchar(25) NOT NULL,
	data_cadastro DATETIME,
	login_cadastro varchar(15)
	);

	create table Cursos
	(
	id_curso int primary key not null,
	nome_curso varchar(200) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null

	);

	create table turmas
	(
	id_turma int primary key not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15),
	 
	);

	create table Registro_Presenca
	(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date  not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
	);

drop table Registro_Presenca;
drop table ALUNOS;
drop table SITUACAO;
drop table Cursos;
