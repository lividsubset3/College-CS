/* 
   CS 195
   Patrick Rakowicz | Caleb Domenico
   Basic Queries
*/
use customersAndProducts; 

#1 
show columns from customerContacts;

#2
select 
customerContactId as 'Customer Contact ID',
customerID as 'Customer ID',
fname as 'First Name', 
lname as 'Last Name',
email as 'Email'
from customerContacts;

#3
select fname, lname from customerContacts order by customerContactId;

#4
show tables;

#5
drop table if exists secretInfo;

#6
select * from customerContacts where customerId = 'SCI2000';

#7
select * from orders order by customerId, orderDate;

#8
select * from orders order by customerId asc, orderDate desc; 

#9
select * from orders where orderDate > 1/23/2006;

#10
select * from orderLines where quantity >= 10; 

#11
select * from orderLines where productID = 'MINI' and quantity >= 10;

#12
select orderId from orders where customerID = 'MSCRUS' order by orderID desc;

#13
select count(*) from products where weight > 4; 

#14
select count(*) as 'Not 5.99' from products where weight != 5.99; 

#15
select count(*) as 'MXLDR Order Count' from orders where customerId = 'MXLDR';

#16
select count(orderId) as 'Total Orders' from orders;

#17
select customerId, orderDate from orders order by orderDate desc; 

#18
select distinct customerId from orders;
