--1
-- Find the names of all the products from a certain category;
-- find by category name
select P.name, C.name as 'Category'
from Products P join Categories C 
on P.category_id = C.category_id
where C.name = 'Phones and Tablets'

-- find by category id
select P.name, C.name as 'Category'
from Products P join Categories C 
on P.category_id = C.category_id
where C.category_id = 3

--show all the products and the categories they belong to
select P.name as 'Product', C.name as 'Category' 
from Products P join Categories C
on P.category_id = C.category_id
group by P.name, C.name
order by C.name desc

--2
-- List names of customers and products they have bought, 
-- along with the title of the product’s category. 
-- If customers have not bought any products, show the title as null;

--select * from Customers 
--select * from Orders
--select * from Products
--select * from Categories
--select * from Order_Items

select Cu.fname + ' ' + Cu.lname as 'Customer', P.name as 'Product', Ca.name as 'Category'
from Customers Cu left join Orders O 
on Cu.customer_id = O.customer_id left join Order_Items OI
on O.order_id = OI.order_id left join Products P
on OI.product_id = P.product_id left join Categories Ca
on P.category_id = Ca.category_id

-- Make a query that returns the most wanted product;

--select * from Products
--select * from Orders
--select * from Order_Items

--select *
--from Order_Items OI join Products P 
--on OI.product_id = P.product_id

select top 1
P.name as 'Most wanted product', sum(OI.quantity) as 'Number of ordered products'
from Order_Items OI join Products P 
on OI.product_id = P.product_id
group by P.product_id, P.name
order by 2 desc