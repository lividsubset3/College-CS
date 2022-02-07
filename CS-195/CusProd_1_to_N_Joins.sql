use customersAndProducts;

#1
select customerName, orderDate 
from customers 
join orders
where customers.customerId = orders.customerId;

#2
select customers.customerId, orderDate 
from customers 
join orders
where customers.customerId = orders.customerId 
and customers.customerId = "MXLDR";

#3
select distinct email 
from customerContacts 
join orders
where customerContacts.customerId = orders.customerId 
and orderDate > '2006-02-02';

#4
select productId
where