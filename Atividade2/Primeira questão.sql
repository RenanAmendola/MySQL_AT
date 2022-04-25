
#Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
#Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
#Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
#Insira 5 registros na tabela tb_categorias.
#Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.










create database db_pizzaria_legal;

create table tb_categorias(

id bigint auto_increment primary key,
Tipo_pizza varchar(155),
Borda_recheada varchar (155)



);


create table tb_pizzas(
id bigint auto_increment primary key,
tamanho varchar(155),
Sabor varchar(155),
Valor bigint,
delivery varchar(155),
adicional bigint,
foreign key (adicional) references tb_categorias(id)
);

drop table tb_pizzas;


insert into tb_categorias(Tipo_pizza,Borda_recheada) values("Fina","Não");
insert into tb_categorias(Tipo_pizza,Borda_recheada) values("Fina","sim");
insert into tb_categorias(Tipo_pizza,Borda_recheada) values("Pam","Não");
insert into tb_categorias(Tipo_pizza,Borda_recheada) values("Pan","Sim");
insert into tb_categorias(Tipo_pizza,Borda_recheada) values("Artesanal","Sim");
insert into tb_categorias(Tipo_pizza,Borda_recheada) values("Artesanal","Não");

select *from tb_categorias;




insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("pequena","mussarela",18,"Não",2);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Grande","mussarela",47,"Sim",4);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Media","Calabresa",32,"Sim",6);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("pequena","Peperoni",25,"Sim",1);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Grande","Marguerita",42,"Sim",5);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Broto","Napolitana",14,"Não",3);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Grande","Frango Catupiri",30,"Não",5);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Media","mussarela",27,"Sim",4);
insert into tb_pizzas(tamanho,Sabor,Valor,delivery,adicional) values("Grnade","Frango Catupiri",55,"Sim",5);

select *from tb_pizzas;



# Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.


select * from tb_pizzas where valor > 45;

#Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
 

select * from tb_pizzas where valor > 50 and valor < 100;


#Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

select * from tb_pizzas where Sabor like "%m%" ;

#Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

select *from tb_pizzas 
left join tb_categorias on tb_categorias.id = tb_pizzas.adicional;

#Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).

select *from tb_pizzas
left join tb_categorias on tb_categorias.id = tb_pizzas.adicional  where delivery = "sim";


