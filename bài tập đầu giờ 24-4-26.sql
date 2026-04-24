create database shopManager;
use shopManager;
drop table if exists products;
drop table if exists categories;

create table categories (
	categori_id int primary key auto_increment,
    categori_name varchar(100) not null
);

create table products (
	product_id int primary key auto_increment,
    product_name varchar(100) not null,
    price decimal(18,2) not null check (price > 0),
    stock int not null check (stock >= 0),
    categori_id int,
    foreign key (categori_id) references categories(categori_id)
);

insert into categories(categori_name)
values ('Điện tử'), ('Thời trang');

insert into products(product_name, price, stock, categori_id)
values ('Iphone 15', '25000000', '10', 1),
	('Sam Sung S23', '20000000', '5', 1),
	('Áo sơ mi nam', '500000', '50', 2),
    ('Giày thể thao', '1200000', '20', 2);
    
update products
set price = 26000000 where product_name = 'Iphone 15';

update products
set stock = stock + 10 where categori_id = 1; 

delete from products where product_id = 4;
delete from products where price < 1000000;

select * from products;
select * from products where stock > 15;
    

