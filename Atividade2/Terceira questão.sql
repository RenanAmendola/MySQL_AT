
#Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
#Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos Cursos.
#Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.

create database db_curso_da_minha_vida;


create table tb_categorias(
id bigint auto_increment primary key,
Tipo varchar(155),
descricao varchar(155)
);



create table  tb_cursos(
id bigint auto_increment primary key,
Nome varchar(155),
Custo bigint,
Duracao varchar(155),
tipo bigint,
foreign key(tipo) references tb_categorias(id)
);



#Insira 5 registros na tabela tb_categorias.

insert into tb_categorias (Tipo,descricao) values("Tec","Curso voltado para a area de tecnologia");
insert into tb_categorias (Tipo,descricao) values("Saude","Curso voltado para a area de Saude");
insert into tb_categorias (Tipo,descricao) values("Exatas","Curso voltado para a area de Exatas");
insert into tb_categorias (Tipo,descricao) values("Humanas","Curso voltado para a area de Humanas");
insert into tb_categorias (Tipo,descricao) values("ADM","Curso voltado para a area de administração");

select * from tb_categorias;

#Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Sistema da informação",150,"2 anos",1);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Biologia",250,"1 anos",2);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Contabilidade",400,"2 anos",3);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Psicologia",600,"4 anos",4);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Startup",450,"2 anos",5);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Big Data",260,"2 anos",1);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Anatomia",390,"1 anos",2);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Ciencia da computação",650,"4 anos",3);
insert into tb_cursos (Nome,Custo,Duracao,tipo) values("Jogos digitais",550,"2 anos",1);

select * from tb_cursos;

#Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.

select * from tb_cursos where Custo > 500;

#Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.

select * from tb_cursos where Custo >= 500 and Custo < 1000;

#Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.

select * from tb_cursos where Nome like "%j%";

#Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.

select * from tb_cursos
inner join tb_categorias on tb_categorias.id = tb_cursos.tipo;

#Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).

select * from tb_cursos
inner join tb_categorias on tb_categorias.id = tb_cursos.tipo where Duracao = 2;

#Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.