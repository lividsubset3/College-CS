/*
	Patrick Rakowicz
    CS 195
    Modifications Filters Functions
*/
use customersAndProducts;

#1.a
select fname, lname
from customerContacts;
#1.b
select fname, lname
from customerContacts
where fname like 'A%';
#1.c
select fname, lname
from customerContacts
where fname like 'A%' and lname like 'L%';
#1.d
select fname, lname
from customerContacts
where fname between 'D%' and 'M%';
#1.e
select fname, lname
from customerContacts
where fname like binary 'A%' and fname like binary '%a%';

#2
select distinct email
from customerContacts
where email not like '%.com%';

#3 Not Finished
select quantity, cost
from orderLines join products
on orderLines.productId = products.productId;

#4
select email
from customerContacts
where email regexp 'hawk|hawkins|hawking';

#5
select lname
from customerContacts
where lname like 'T%' and char_length(lname) <= 8;

#6 Not Finished
select lname
from customerContacts
order by customerContactId desc limit 1;

#7
SELECT date_format('2011-3-7', '%W, %M %e, %Y') AS result;
select date_format('2011-3-7', '%M %D, %Y') as result;
select date_format('2011-3-7 16:05:00', '%W %l:%i %p') as result;

#8
select date_format(date_add(curdate(), interval 1 month), '%m/%d/%y') as result;
select date_format(date_add(curdate(), interval 1 week), '%m/%d/%y') as result;
select date_format(date_add(curdate(), interval 40 day), '%m/%d/%y') as result;
select date_format(date_sub(curdate(), interval 40 day), '%m/%d/%y') as result;

#9
select date_format(addtime(curdate(), '100:00:00'), '%I:%i %p') as result;
select date_format(subtime(curdate(), '100:00:00'), '%I:%i %p') as result;