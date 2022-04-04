/*
	Patrick Rakowicz
    CS 195
    Modifications Filters Functions
*/
use customersAndProducts;

#1
select fname, lname
from customerContacts;
#1.a
select fname, lname
from customerContacts
where fname like 'A%';
#1.b
select fname, lname
from customerContacts
where fname like 'A%' and lname like 'L%';
#1.c
select fname, lname
from customerContacts
where fname between 'D%' and 'M%';
#1.d
select fname, lname
from customerContacts
where fname like binary 'A%';

#2
select distinct email
from customerContacts
where email not like '%.com%';

#7
select curdate();
SELECT DATE_FORMAT('2011-3-7', '%a / %b') AS Result;

# char_length(lname) < 8
