USE Create_Tables;

#1 
select fname from customerContacts;

#2
select 
customerContactId as 'Customer Contact ID',
customerID as 'Customer ID',
fname as 'First Name', 
lname as 'Last Name',
email as 'Email'
from customerContacts;

#3
select * from customerContacts
order by customerContactId;

#4
show tables;

#5

