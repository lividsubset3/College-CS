/* 
   CS 195
   Patrick Rakowicz
   Subqueries
*/

use customersAndProducts;

#1
select customerName
from customers
where customerId in (
	select customerId from orders where orderDate >= '2006-02-05'
);

#2
select email
from customerContacts
where customerId in (
	select customerId from orders where orderDate >= '2006-02-05'
);

#3
select productId
from 