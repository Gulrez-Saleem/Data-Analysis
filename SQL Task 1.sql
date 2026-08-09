Create table products (
    product_id serial primary key,
    product_name varchar(100) not null,
    sku_code varchar(20) unique not null,
    price numeric(10,2),
    stock_quantity int
);

insert into products (product_name, sku_code, price, stock_quantity)
values
('Wireless Mouse', 'SKU-101', 25.50, 120),
('Gaming Keyboard', 'SKU-102', 85.00, 45),
('Usb-C Cable', 'SKU-103', 12.00, 250),
('Hd Monitor', 'SKU-104', 199.99, 15),
('Mechanical Pencil', 'SKU-105', 3.50, 0);

select * from products;

select * from products
where price > 50.00 and stock_quantity < 100;

select * from products where price < 20.00 or stock_quantity > 200;


alter table products add column category varchar(50) not null default 'general';

alter table products drop column sku_code;

create table suppliers ( supplier_id serial primary key, supplier_name varchar(100) not null );

insert into suppliers (supplier_name)
values ('Gulrez'), ('Saleem'), ('Baqir');

alter table products
add column supplier_id int;

alter table products
add constraint fk_supplier
foreign key (supplier_id) references suppliers(supplier_id);

update products
set price = price * 1.10 where stock_quantity > 100;

select * from products;

delete from products
where stock_quantity = 0 and price < 10.00;

select * from products;