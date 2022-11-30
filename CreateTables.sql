create table Categories
(
	category_id int not null primary key identity(1,1),
	name varchar(30) not null
)

create table Products 
(
	product_id int not null primary key identity(100,1),
	name varchar(70) not null,
	category_id int not null,
	price numeric(8,2) not null,
	quantity int not null,

	constraint fk_products_categories foreign key (category_id)
		references Categories(category_id)
			on update cascade on delete cascade
)

create table Customers
(
	customer_id int not null primary key,
	fname varchar(20) not null,
	lname varchar(20) not null,
	email varchar(50) not null,
	gender varchar(10),
	country varchar(40),
	city varchar(40),
	phone char(12),
	birthdate date
)

create table Orders
(
	order_id int not null primary key,
	customer_id int not null foreign key references Customers,
	order_date datetime not null,
	ship_address varchar(150) not null
)

create table Order_Items
(
	order_id int not null,
	product_id int not null,
	unit_price numeric(8,2) not null,
	quantity int not null,

	constraint pk_order_items primary key (order_id, product_id),
	constraint fk_order_items_orders foreign key (order_id)
		references Orders(order_id)
			on update cascade on delete cascade,
	constraint fk_order_items_products foreign key (product_id)
		references Products(product_id)
			on update cascade on delete cascade
)