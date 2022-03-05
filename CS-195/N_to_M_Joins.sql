/*
	Patrick Rakowicz
	CS195
	N to M joins
*/

use customersAndProducts;

#1
select customerContacts.customerId, orderDate, productName, quantity, price
from customerContacts join orders join products join orderLines
where customerContacts.customerId = orders.customerId and orders.orderId = orderLines.orderId
and orders.orderId = 3;

#2
select sum(quantity) as 'Sales', orders.orderId 
from orders join orderLines
where orders.orderId = orderLines.orderId and orders.orderId = 3; 

#3
select customerContacts.customerId, orders.orderId, quantity
from customerContacts join orders join orderLines
where customerContacts.customerId = orders.customerId
order by orderDate; 

#4 Broke
select orders.orderId, quantity
from orders join orderLines
where orders.orderId = orderLines.orderId;

#5
select distinct productId, customerId
from orders join orderLines
where orders.orderId = orderLines.orderId 
and customerId = 'MXLDR'; 

#6
select *
from orders join orderLines
where orders.orderId = orderLines.orderId 
and customerId = 'MSCRUS'; 

#7
select *
from orders join orderLines join customers
where orders.orderId = orderLines.orderId and orders.customerId = customers.customerId
and customerName = 'Music R Us';

#8 
select distinct email
from customerContacts join orderLines join orders
where orders.orderId = orderLines.orderId and customerContacts.customerId = orders.customerId
and productId = 'MINI'; 

#9
select distinct customerName
from customers join orders join orderLines
where orders.orderId = orderLines.orderId and customers.customerId = orders.customerId
and productId = 'MINI';

#10
select productId, customers.customerId
from customers join orders join orderLines
where customers.customerId = orders.customerId and orders.orderId = orderLines.orderId
and orderDate = '2006-01-23';

#11
select products.productId, round(sum(quantity*price), 2) as "Total"
from orders join orderLines join products
where orders.orderId = orderLines.orderId and orderLines.productId = products.productId
group by products.productId; 

#12
select distinct customerContacts.customerId, email
from customerContacts join orders join orderLines
where customerContacts.customerId = orders.customerId and orders.orderId = orderLines.orderId
and orderDate >= '2006-02-02';

#13 List the names of each person as well as total spent by that person. As well as product ID.
select fname as "Frist Name", lname as "Last Name", round(sum(quantity*price), 2) as "Total Spent"
from customerContacts join orders join orderLines join products
where customerContacts.customerId = orders.customerId and orders.orderId = orderLines.orderId 
group by fname, lname
order by sum(quantity*price) desc; 
