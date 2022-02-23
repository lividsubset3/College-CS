use customersAndProducts;

select customerId, fname, lname
from customerContacts
where customerId = "MXLDR"
order by fname DESC, lname DESC;

select productId, count(productId) 
from orderLines 
where 4 < quantity and 12 > quantity 
group by productId;

select DISTINCT orderDate
from orders
order by date(orderDate);

select productId, sum(quantity) 
from orderLines 
group by productId;

select max(orderDate)
from orders
limit 2;

select lineId, quantity
from orderLines
where quantity between 10 and 20;

select customerName, email 
from customers 
join customerContacts
where customers.customerId = customerContacts.customerId;

select productId, round(price * sum(quantity), 2)
from orderLines 
join products
where productId = "MINI" and orderLines.productId = products.productId;

select productId, round(price*1.07, 2)
from products
where productId = "MINI"