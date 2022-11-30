--Used the CustomerData.xlsx I created in Lab1 to fill in the Customers table

-- Insert into Categories
insert into Categories (name)
values ('Phones and Tablets'), 
	   ('Laptops and Computers'), 
	   ('Home Appliances'), 
	   ('Health and Beauty')

-- Insert into Products
insert into Products(name, category_id, price, quantity)
values ('SAMSUNG GALAXY A13', 1, 329, 15),
	   ('MOTOROLA MOTO G60', 1, 459, 10),
	   ('FRIDGE INDESIT NCAA', 3, 609, 5),
	   ('BUILT IN OVEN SAMSUNG', 3, 579, 10),
	   ('WASHING MACHINE WHIRLPOOL', 3, 699, 15),
	   ('LAPTOP ASUS X515EA-BQ511', 2, 1399, 5),
	   ('COMPUTER LENOVO LEGION T5', 2, 2599, 3),
	   ('HAIRDRYER REMINGTON AC9096', 4, 69, 20),
	   ('FACIAL CLEANSING BRUSH PHILIPS', 4, 119, 10)

-- Insert into CustomerProduct
insert into CustomerProduct(customer_id,product_id)
values (23, 107),
	   (105, 100),
	   (1, 104),
	   (23, 104),
	   (54, 103),
	   (54, 103),
	   (67, 108),
	   (34, 102),
	   (11, 105),
	   (105, 100),
	   (12, 107),
	   (34, 107)
