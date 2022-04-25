#Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
#Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
#Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.


create database db_farmacia_bem_estar;


 create table tb_categorias(
 id bigint auto_increment primary key,
 Tipo varchar(155),
 Descricao varchar(155)
 ); 

select * from tb_categorias;

create table tb_produtos(
 id bigint auto_increment primary key,
 Nome varchar(155),
preco bigint,
tipo bigint,
prescricao varchar(155),

foreign key(tipo) references tb_categorias(id)
); 

select * from tb_produtos;


#Insira 5 registros na tabela tb_categorias.

insert into tb_categorias(Tipo,Descricao) values("Cabeça","Remedio para dor de cabeça");	
insert into tb_categorias(Tipo,Descricao) values("Corpo","Remedio para dores musculares");	
insert into tb_categorias(Tipo,Descricao) values("Dente","Escova de dente");	
insert into tb_categorias(Tipo,Descricao) values("Desodorante","Utilizado no suvaco");	
insert into tb_categorias(Tipo,Descricao) values("tarja preta","Remedio controlado");	


#Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_produtos(Nome,preco, tipo, prescricao) values("Advil",35,1,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Dorflex",25,1,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Gelol",60,2,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Tizanidina",50,2,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Colgate",15,3,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Rexona",9,4,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Axe",8,4,"Não");
insert into tb_produtos(Nome,preco, tipo, prescricao) values("Morfina",80,5,"Sim");



#Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

select * from tb_produtos where preco >= 50;

#Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.

select * from tb_produtos where preco > 5 and preco < 60;


#Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

select * from tb_produtos where nome like "%c%";


#Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.

select * from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.tipo;




