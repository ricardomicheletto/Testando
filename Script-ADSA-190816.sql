create database atividade;
use atividade;
create table Aluno(
ra int primary key,
nome varchar (40),
bairro varchar(40)
);
select * from Aluno;
insert into Aluno values
(01192058, 'Ricardo Celso Micheletto Junior', 'Vila Prudente'),
(01192027, 'Wellington', 'Vila Brasilandia'),
(01192124, 'Roberto', 'Jardim Primavera'),
(01192123, 'Ranyery', 'Jardim Audir')
(01192053, 'Naomi', 'Vila Leopoldina'),
(01192089, 'Ricardo Garcia', 'Jardim Alzira');
select nome from Aluno;
select nome,bairro from Aluno;
select bairro, ra from Aluno;
select * from Aluno; -- o símbolo * significa todas as colunas
select * from Aluno where ra = 01192089;
select * from Aluno where ra >= 01192089; -- significa comentário no SQL
select * from Aluno where ra <> 01192089; -- o símbolo <> significa diferente no padrão SQL
select * from Aluno where ra != 01192089;
select * from Aluno where nome like 'R%'; --o símbolo % significa qualquer coisa
select * from Aluno where bairro like 'Vila%'; -- exibe os alunos que moram no bairro que começa com Vila
select * from Aluno where nome like '%o'; -- exibe os alunos cujo nome termina com o
select * from Aluno where nome like '_i%'; -- exibe os alunos cujo a legunda letra seja i e o caractere _ significa o primeiro caractere na posição em que está
select * from Aluno where bairro like '%m %'; -- exibe os alunos cujo bairro tenha a primeira palavra terminada em m, na busca é necessário colocar assim '%m m', de modo que o foco da busca esteja no primeiro nome
select * from Aluno where bairro like '%e___'; -- exibe os alunos cujo o bairro tenha e na penúltima letra e
select * from Aluno order by nome asc; -- exibe a lista ordenada pelo nome, asc = crescente, desc = decrescente
select * from Aluno order by nome desc; -- exibe a lista ordenada pelo nome, asc = crescente, desc = decrescente
select * from Aluno order by bairro; -- exibe os alunos por ordem do bairro
select * from Aluno order by bairro, nome desc;
select * from Aluno order by bairro desc, nome desc;
select * from Aluno where bairro = 'Vila Leopoldina';
select * from Aluno where nome not like 'R%'; -- exibe os alunos cujo nomes não começam com R
update Aluno set nome = 'Roberto Volpe' where ra = 1192124; -- update atualiza um dado na tabela, set determina o que será alterado, a chave primária é o parâmetro de localização
update Aluno set ra = 1192999, bairro = 'Marechal Deodoro' where ra = 1192109; -- atualiza o ra e o bairro de uma única vez
delete from Aluno where ra = 1192999; -- exclui o aluno
select * from Aluno where ra between 1192060 and 1192120; -- exibe os alunos com o ra entre os limites determinados
select * from Aluno where ra >= 1192060 and ra <= 1192120; -- faz o mesmo comando de forma mais trabalhosa
drop table Aluno; -- exxclui a tabela por completo
drop database  atividade; -- dropa o banco de dados
