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

-- Insert into Orders
insert into Orders(order_id, customer_id, order_date, ship_address)
values(2000, 101, CONVERT(date,'26-11-2022',105), 'Sofia'),
	  (2001, 58, CONVERT(date,'26-11-2022',105), 'Plovdiv'),
	  (2002, 3, CONVERT(date,'27-11-2022',105), 'Burgas'),
	  (2003, 58, CONVERT(date,'27-11-2022',105), 'Ruse'),
	  (2004, 3, CONVERT(date,'27-11-2022',105), 'Vidin'),
	  (2005, 100, CONVERT(date,'28-11-2022',105), 'Varna'),
	  (2006, 43, CONVERT(date,'28-11-2022',105), 'Plovdiv'),
	  (2007, 2, CONVERT(date,'28-11-2022',105), 'Haskovo'),
	  (2008, 58, CONVERT(date,'28-11-2022',105), 'Montana'),
	  (2009, 200, CONVERT(date,'28-11-2022',105), 'Bansko'),
	  (2010, 113, CONVERT(date,'29-11-2022',105), 'Shumen')

-- Insert into Order_Items
 insert into Order_Items(order_id, product_id, unit_price, quantity)
 values (2000, 107, 69, 2),
		(2000, 104, 699, 1),
		(2003, 101, 459, 2),
		(2003, 102, 609, 1),
		(2001, 107, 69, 1),
		(2001, 103, 579, 1),
		(2001, 108, 119, 1),
		(2008, 106, 2599, 1),
		(2008, 104, 699, 1),
		(2002, 102, 609, 1),
		(2004, 105, 1399, 1),
		(2004, 107, 69, 2),
		(2005, 100, 329, 2),
		(2006, 108, 119, 2),
		(2007, 103, 579, 1),
		(2007, 107, 69, 1),
		(2008, 102, 609, 1),
		(2009, 105, 699, 1),
		(2010, 106, 2599, 1)
