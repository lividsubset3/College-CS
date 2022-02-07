# Lecture examples

use customersAndProducts;

select customerName, fname, lname
from customers join customerContacts
on customers.customerId = customerContacts.customerId
where customerName = 'Maximum Leadership';