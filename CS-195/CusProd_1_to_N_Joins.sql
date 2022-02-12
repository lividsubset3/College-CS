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
from orders
join orderLines
where orders.orderId = orderLines.orderId
and customerId = "SCI2000";

#5
select distinct productId
from orders
join orderLines
where orders.orderId = orderLines.orderId
and customerId = "SCI2000";

#6
select productId, sum(quantity) as sum
from orderLines
group by productId
order by sum(quantity);

#7
select orderLines.productId, productName, sum(quantity) as sum
from orderLines
join products
where orderLines.productId = products.productId
group by productId
order by sum(quantity);

#8
select productId, quantity, orderDate
from orderLines
join orders
where orderLines.orderid = orders.orderId
and orderDate > "2006-02-05";

#9