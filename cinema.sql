create table filme(
    id_filme  serial INTEGER NOT NULL PRIMARY KEY,
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




create table cinema(
    id_cine INTEGER NOT NULL PRIMARY KEY,
    nome_fantasia VARCHAR(60) not null,
    endereco VARCHAR(70) not null,
    municipio VARCHAR(30) not null,
    estado CHAR(2) not null,
    faturamento NUMERIC(12,2)
)






