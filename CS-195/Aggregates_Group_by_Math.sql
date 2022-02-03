/* 
   CS 195
   Patrick Rakowicz
   Aggregates, Group By and Math
*/
use customersAndProducts; 

#1
select avg(quantity) from orderLines;

#2
select productId, sum(quantity) from orderLines group by productId; 

#3
select productId, avg(quantity) from orderLines group by productId;

#4
select productId, price*1.07 as 'True Cost' from products;

#5
select productId, count(productId) from orderLines where quantity > 2 group by productId; 

#6
select productId, round(price*0.43) from products; 

#7
select productId, round(price*0.43, 2) from products; 

#8 
select sum(quantity) from orderLines; 

#9
select orderId, sum(quantity) from orderLines group by orderId; 

#10
select customerId, count(customerId) from orders group by customerId; 

#11 
select customerId, max(orderDate) from orders group by customerID;