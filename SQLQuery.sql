insert into dbo.ALUNOS
(ID_ALUNO,NOME,DATA_NASCIMENTO,SEXO,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES
--(2,'Caio2','01/02/2000','M', '22/08/2022 14:21','DellEvoluti');

(1,'Caio Santos','08/01/2000','M','23/08/2022 13:21','HpNot');

select * from dbo.ALUNOS

insert into dbo.Cursos
(id_curso,nome_curso,data_cadastro,login_cadastro)
values
--(1 ,'VBA I','28/07/2022 15:01','HpHost')
(2 ,'VBA II','22/06/2022 11:02','DellG')

select * from dbo.Cursos

insert into dbo.SITUACAO
(id_situacao,situacao,data_cadastro,login_cadastro)
values
--(1,'Presente','23/08/2000 15:01','DellG')
--(3,'Ausente sem justificativa','11/10/2010 15:01', 'HpHost')
--(2,'Ausente com justificativa','22/02/2000 20:44', 'admin')
--(10,'Presente', '09/09/2020 14:22','DellG')
(12,'Ausente com justificativa', '11/09/1999 12:59','admin')



select * from dbo.SITUACAO