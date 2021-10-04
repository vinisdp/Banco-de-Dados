CREATE SCHEMA cursos_ead;
SET SCHEMA 'cursos_ead';

CREATE TABLE usuario(
	username VARCHAR(25) PRIMARY KEY,
	senha VARCHAR(25) NOT NULL,
	cpf VARCHAR(14),
	nome VARCHAR(100) NOT NULL,
	data_nasc DATE NOT NULL,
	tipo_usuario VARCHAR NOT NULL
);

CREATE TABLE telefone(
	username VARCHAR(25) NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	PRIMARY KEY(username,telefone) ,
	CONSTRAINT PK_FK_username FOREIGN KEY (username) REFERENCES usuario(username)	
);

CREATE TABLE certificado(
	username_criador VARCHAR(25),
	codigo INTEGER,
	link_arquivo VARCHAR(100),
	area_cetificado VARCHAR(100) NOT NULL,
	PRIMARY KEY(username_criador, codigo),
	CONSTRAINT PK_FK_username FOREIGN KEY (username_criador) REFERENCES usuario(username)
);

CREATE TABLE curso(
	codigo INTEGER PRIMARY KEY,
	descricao VARCHAR(100) NOT NULL,
	valor DECIMAL NOT NULL,
	modalidade VARCHAR(10) NOT NULL,
	username_criador VARCHAR(25) NOT NULL,
	situacao VARCHAR(15) NOT NULL,
	CONSTRAINT PK_FK_username FOREIGN KEY (username_criador) REFERENCES usuario(username)
);

CREATE TABLE area_atuante(
	cod_curso INTEGER NOT NULL,
	codigo INTEGER NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	PRIMARY KEY(cod_curso, codigo),
	CONSTRAINT PK_FK_cod_curso FOREIGN KEY (cod_curso) REFERENCES curso(codigo)
);

CREATE TABLE modulo(
	codigo INTEGER PRIMARY KEY,
	nivel VARCHAR(10) NOT NULL,
	descricao VARCHAR(100),
	nota_minima DECIMAL NOT NULL,
	cod_curso INTEGER NOT NULL,
	cod_pre_requisito INTEGER,
	CONSTRAINT PK_FK_cod_curso FOREIGN KEY (cod_curso) REFERENCES curso(codigo),
	CONSTRAINT PK_FK_cod_pre_requisito FOREIGN KEY (cod_pre_requisito) REFERENCES modulo(codigo)
);

CREATE TABLE aula(
	codigo INTEGER PRIMARY KEY,
	descricao VARCHAR(100) NOT NULL,
	cod_modulo INTEGER,
	CONSTRAINT PK_FK_cod_modulo FOREIGN KEY (cod_modulo) REFERENCES modulo(codigo)
);

CREATE TABLE avaliacao(
	codigo INTEGER PRIMARY KEY,
	descricao VARCHAR(100) NOT NULL,
	cod_modulo INTEGER NOT NULL,
	CONSTRAINT PK_FK_cod_modulo FOREIGN KEY (cod_modulo) REFERENCES modulo(codigo)
);
CREATE TABLE questao_avaliacao(
	codigo INTEGER NOT NULL,
	cod_avaliacao INTEGER NOT NULL,
	descricao VARCHAR(300) NOT NULL,
	PRIMARY KEY (codigo, cod_avaliacao),
	CONSTRAINT PK_FK_cod_avaliacao FOREIGN KEY (cod_avaliacao) REFERENCES avaliacao(codigo)
);
CREATE TABLE executa_avaliacao(
	username_aluno VARCHAR(25),
	cod_avaliacao INTEGER,
	data_avaliacao DATE,
	nota DECIMAL NOT NULL,
	horario TIME NOT NULL,
	situacao VARCHAR(10), 
	PRIMARY KEY(username_aluno,data_avaliacao,cod_avaliacao),
	CONSTRAINT PK_FK_username_aluno FOREIGN KEY (username_aluno) REFERENCES usuario(username),
	CONSTRAINT PK_FK_cod_avaliacao FOREIGN KEY (cod_avaliacao) REFERENCES avaliacao(codigo)
);

CREATE TABLE arquivo(
	codigo INTEGER PRIMARY KEY,
	descricao VARCHAR(100) NOT NULL,
	link_acesso VARCHAR(100) NOT NULL,
	cod_aula INTEGER NOT NULL,
	CONSTRAINT PK_FK_cod_aula FOREIGN KEY (cod_aula) REFERENCES aula(codigo)
);

CREATE TABLE curso_adquirido(
	username_aluno VARCHAR(25) NOT NULL,
	cod_curso INTEGER NOT NULL,
	forma_pagamento VARCHAR(10) NOT NULL,
	data_compra DATE NOT NULL,
	valor_compra DECIMAL NOT NULL,
	PRIMARY KEY(username_aluno,cod_curso),
	CONSTRAINT PK_FK_username_aluno  FOREIGN KEY (username_aluno) REFERENCES usuario(username),
	CONSTRAINT PK_FK_cod_curso  FOREIGN KEY (cod_curso) REFERENCES curso(codigo)
);
CREATE TABLE aula_assistida(
	username_aluno VARCHAR(25) NOT NULL,
	cod_aula INTEGER NOT NULL,
	data_primeiro_acesso DATE NOT NULL,
	PRIMARY KEY(username_aluno, cod_aula),
	CONSTRAINT PK_FK_username_aluno  FOREIGN KEY (username_aluno) REFERENCES usuario(username),
	CONSTRAINT PK_FK_cod_aula  FOREIGN KEY (cod_aula) REFERENCES aula(codigo)
);
SET SCHEMA 'cursos_ead';
CREATE OR REPLACE FUNCTION calcula_media() RETURNS SETOF record AS $$
DECLARE
linha RECORD;
BEGIN
for linha in SELECT usr.nome, (sum(ev.nota)/count(*)) as media from executa_avaliacao ev
inner join usuario usr on ev.username_aluno = usr.username
group by usr.nome
loop
return NEXT linha;
end loop;
return;
end;
$$ language'plpgsql';

CREATE OR REPLACE FUNCTION total_gasto() RETURNS SETOF record AS $$
DECLARE
linha RECORD;
BEGIN
for linha in select us.nome, sum(c_a.valor_compra) as valor_total from curso_adquirido c_a
inner join usuario us on c_a.username_aluno = us.username
inner join curso crs on c_a.cod_curso = crs.codigo
group by us.nome
loop
return NEXT linha;
end loop;
return;
end;
$$ language'plpgsql';

CREATE FUNCTION fn_isertupdate_curso() RETURNS TRIGGER AS $$
DECLARE
tipo varchar;
certificado integer;
area varchar;
begin
select into tipo usr.tipo_usuario from usuario usr where usr.username = new.username_criador;
select into certificado count(*) from certificado crt where crt.username_criador = new.username_criador;
if tipo = 'Criador' then
if certificado > 0 then
if new.modalidade = 'Pago' or new.modalidade = 'Gratuito' then
if (new.valor = 0 and new.modalidade = 'Gratuito')or(new.valor > 0 and new.modalidade = 'Pago') then
if new.situacao = 'Ativo' or new.situacao = 'Inativo' then
return new;
else
raise exception 'Situação invalida!';
end if;
else
raise exception 'Modalidade e valor incompativel!';
end if;
else
raise exception 'Modalidade não existente!';
end if;
else
raise exception 'O criador não possui certificado';
end if;
else
raise exception 'O usuario não é criador';
end if;

end;
$$ language'plpgsql';

create trigger tr_insertupdate_curso
before insert or update on curso
for each row
execute procedure fn_isertupdate_curso();

CREATE FUNCTION fn_isertupdate_usuario() RETURNS TRIGGER AS $$
DECLARE
begin
if new.tipo_usuario ='Criador' or new.tipo_usuario ='Aluno' then
return new;
else
raise exception 'Tipo de usuario invalido!';
end if;
end;
$$ language'plpgsql';

create trigger tr_insertupdate_usuario
before insert or update on usuario
for each row
execute procedure fn_isertupdate_usuario();

CREATE FUNCTION fn_isertupdate_certificado() RETURNS TRIGGER AS $$
DECLARE
tipo varchar;
begin
select into tipo usr.tipo_usuario from usuario usr where usr.username = new.username_criador;
if tipo = 'Criador' then
return new;
else
raise exception 'Um aluno não pode cadastrar certificado';
end if;
end;
$$ language'plpgsql';

create trigger tr_insertupdate_certificado
before insert or update on certificado
for each row
execute procedure fn_isertupdate_certificado();

CREATE FUNCTION fn_isertupdate_ev() RETURNS TRIGGER AS $$
DECLARE
nota decimal;
begin
select into nota md.nota_minima from avaliacao av 
inner join modulo md on md.codigo = av.cod_modulo
where av.codigo = new.cod_avaliacao; 
if new.nota >= nota  then
new.situacao = 'Aprovado'; 
else
new.situacao = 'Reprovado'; 
end if;
return new;
end;
$$ language'plpgsql';

create trigger tr_insertupdate_ev
before insert or update on executa_avaliacao
for each row
execute procedure fn_isertupdate_ev();

CREATE FUNCTION fn_isertupdate_verifica_pre_requisito() RETURNS TRIGGER AS $$
DECLARE
cont integer;
cod_requisito integer;
cont_provas integer;
tipo varchar;
begin
select into tipo urs.tipo_usuario from usuario urs 
where urs.username = new.username_aluno; 
select into cod_requisito md.cod_pre_requisito from avaliacao av  
inner join modulo md on md.codigo = av.cod_modulo
where new.cod_avaliacao = av.codigo;
select into cont count(*) from modulo md
inner join avaliacao av on av.cod_modulo = md.codigo
where md.codigo=cod_requisito;
select into cont_provas count(*) from modulo md 
inner join avaliacao av on av.cod_modulo = md.codigo
inner join executa_avaliacao ev on ev.cod_avaliacao = av.codigo
where ev.username_aluno = new.username_aluno and md.codigo = cod_requisito and ev.situacao = 'Aprovado';
if tipo = 'Aluno'then
if cont = cont_prova then
return new;
else
raise exception 'O aluno não cursou o pre requisito';
end if;
else
raise exception 'Usuario não é aluno';
end if;
end;
$$ language'plpgsql';

create trigger tr_insertupdate_ev_pre
before insert or update on executa_avaliacao
for each row
execute procedure fn_isertupdate_verifica_pre_requisito();


