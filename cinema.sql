create table filme(
    id_filme  bigserial NOT NULL PRIMARY KEY,
    titulo_original VARCHAR(60) not null,
    titulo_portugues VARCHAR(60) not null,
    ano NUMERIC(4,0) not null,
    genero CHAR(20) not null,
    pais CHAR(20) not null,
    diretor CHAR(40) not null 
)

insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('Dances with Wolves', 'Dança com lobos', 1990, 'drama/faroeste', 'EUA', 'Kevin Costner' );
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('The Green Mile', 'À Espera de um Milagre', 1999, 'drama', 'EUA', 'Frank Darabont' );
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('Twelve Angry Men', '12 Homens e uma Sentença', 1957, 'drama', 'EUA', 'Sidney Lumet' ); 
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('The Fight Club', 'o Clube da Luta', 2001, 'ação/drama', 'EUA', 'David Fincher' );
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('Forrest Gump', 'Forrest Gump', 1994, 'drama', 'EUA', 'Robert Zemeckis' ); 
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('Mandela: The Long Walk to Freedom', 'Mandela: Longo Caminho para a Liberdade', 2013, 'drama', 'EUA', 'Justin Chadwick' );    
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('Batman The Dark Knight', 'Batman o Cavaleiro das Trevas', 2008, 'ação', 'EUA', 'Christopher Nolan' ); 
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('The Book of Eli', 'O Livro de Eli', 2010, 'ação', 'EUA', 'Albert Hughes, Allen Hughes' );
insert into filme(titulo_original, titulo_portugues, ano, genero, pais, diretor)
    values('The Shack', 'A Cabana', 2017, 'drama', 'EUA', 'Stuart Hazeldine' );      

select * from filme;	   

/*-------------------------------------------------------------------------------------------------------------------------------------*/

create table cinema(
    id_cine Bigserial NOT NULL PRIMARY KEY,
    nome_fantasia VARCHAR(60) not null,
    endereco VARCHAR(70) not null,
    municipio VARCHAR(30) not null,
    estado CHAR(2) not null,
    faturamento NUMERIC(12,2)
)

insert into cinema(nome_fantasia, endereco, municipio, estado, faturamento)
    values('Multiplex', 'R. Henrique Savi, 15-55', 'Bauru', 'SP', 956000.00 ); 
insert into cinema(nome_fantasia, endereco, municipio, estado, faturamento)
    values('Cine n Fun', 'Av. 13 de Maio, 334', 'Ribeirão Preto', 'SP', 984000.00 );
insert into cinema(nome_fantasia, endereco, municipio, estado, faturamento)
    values('Cine Star', 'Av. Beira Mar, s/n', 'Florianópolis', 'SC', 2653022.00 );     
insert into cinema(nome_fantasia, endereco, municipio, estado, faturamento)
    values('Rede Cine', 'R. Frei Carlos, 934', 'Belo Horizonte', 'MG', 2653022.00 ); 
insert into cinema(nome_fantasia, endereco, municipio, estado, faturamento)
    values('Martins Ltda', 'R. Amazonas, 9000', 'Blumenau', 'SC', 876235.00 ); 

/*-------------------------------------------------------------------------------------------------------------------------------------*/

create table ator(
    id_ator bigserial not null PRIMARY KEY,
    nome VARCHAR(60),
    nome_artistico VARCHAR(40),
    naturalidade VARCHAR(30),
    estado VARCHAR(20),
    pais VARCHAR(20),
    dt_nascimento DATE,
)

insert into ator(nome, nome_artistico, naturalidade, estado, pais, dt_nascimento)
    values('Thomas Jeffrey Hanks', 'Tom Hanks', 'Concord', 'California', 'EUA', '1956-07-09');
insert into ator(nome, nome_artistico, naturalidade, estado, pais, dt_nascimento)
    values('Morgan Porterfield Freeman Jr', 'Morgan Freeman', 'Washington', 'New York', 'EUA', '1937-06-01');


/*-------------------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE atuacao (
    id_filme INTEGER NOT NULL,
    id_ator INTEGER NOT NULL,
    cache NUMERIC (12,2),
    FOREIGN KEY (id_filme) REFERENCES filme,
    FOREIGN KEY (id_ator) REFERENCES ator
);

insert into atuacao(id_filme, id_ator, cache)
    values(8, 2, 20000);

/*-------------------------------------------------------------------------------------------------------------------------------------*/

select * from filme;
