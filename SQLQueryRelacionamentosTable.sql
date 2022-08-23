CREATE TABLE ALUNOS
( id_aluno INT PRIMARY KEY NOT NULL,
	nome VARCHAR(200),
	data_nascimento DATE,
	sexo VARCHAR(1), --M para Masculino e F para Feminino
	data_cadastro DATETIME not null,
	login_cadastro VARCHAR (15)not null,
	CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno),
	CONSTRAINT fk_Turmas FOREIGN KEY (id_aluno) REFERENCES Turmas (id_turma)
	);


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

ALTER TABLE Turmas
	ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Turmas
	ADD CONSTRAINT fk_Curso FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);

	create table Registro_Presenca
	(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date  not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
	);

ALTER TABLE Registro_Presenca
	ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);	

ALTER TABLE Registro_Presenca
	ADD CONSTRAINT fk_AlunoRP FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Registro_Presenca
	ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);

	