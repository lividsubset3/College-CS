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
	select customerId from orders where orderDate < '2006-02-05'
);

#2
select email
from customerContacts
where customerId in (
	select customerId from orders where orderDate < '2006-02-05'
);

#3
select productId from products 
where productId in (
	select productId from orderLines 
	where orderId in (
		select orderId from orders 
        where customerId = 'MXLDR'
	)
);

#4
select * from products as p1
where price > (
select avg(price)
from products as p2
);

#5
select customerName from customers
where customerId not in (
    select customerId
    from customerContacts
);
    
#6
select customerName from customers
where customerId not in (
	select customerId
    from orders
);

#7
select productName from products
where productId not in (
	select productId
    from orderLines
);

#8
select orderId, quantity from orderLines as ol1
where quantity > (
	select avg(quantity)
	from orderLines as ol2
);

#9
select customerId, email from customerContacts
where customerId in (
	select distinct customerId from orders 
	where orderId in (
		select orderId from orderLines 
        where productId = 'MINI'
	)
);

#10)
select email
from customerContacts
where customerId = (
	select customerId
	from customerContacts
	where fname = 'Marie' 
	and lname = 'Curie'
);

#11
select fname, lname, email
from customerContacts
where customerId = (
	select customerId
	from customerContacts
	where email like 'gershwin@MSCRUS.com'
);

#12)	Create another table called duplicateOrders. Populate it with some of the same information from the  original orders table, and add some other different info of your own creation.
	#a)	Write a query that shows what information is duplicated between the two tables. You'll have to use a subquery with something like: 
		#select … where (orderId, customerId, orderDate) in (subquery here)
select distinct *
from orders
where (orderId, customerId, orderDate) in (
	select distinct *
    from duplicateOrders
);

	#b)	Now write a version of the query that tells you how many duplicate orders you have.
select *, count(*)
from orders
where (orderId, customerId, orderDate) in (
	select *
    from duplicateOrders
    group by orderId, customerId, orderDate
    having count(orderId)
    and count(customerId)
    and count(orderDate)
);

use studentsteachersandclasses;

#13
select studentId, stuName from students
where studentId in (
	select studentId from studentsXclasses 
	where classId in (
		select classId from classes 
        where className = 'CS I' 
        and className = 'Calc III'
	)
);

#14
select studentId, stuName from students
where studentId in (
	select studentId from studentsXclasses 
	where classId in (
		select classId from classes 
			where not className = 'CS I'
			and className = 'Calc III'
		)
);

#15
select className from classes
where classId in (
	select classId from teachersXclasses 
	where teacherId in (
		select teacherId from teachers 
        where not teachName = 'K Fix'
	)
);

#16
select stuName from students
where studentId in (
	select studentId from studentsXclasses 
	where classId in (
		select classId from teachersXclasses 
        where teacherId in (
			select teacherId from teachers 
			where not teachName = 'K Fix'
		)
	)
);

#17
select className from classes
where classId in (
	select avg(classID)
    from studentsXclasses
);

#19
select stuName from students
where studentId in (
	select studentId from teachersXclasses 
	where teacherId in (
		select teacherId from teachers 
        where teachName = 'K Fix'
		and teachName = 'H Keck'
	)
);

#20
select stuName from students
where studentId in (
	select studentId from studentsXclasses
	where classId in (
		select classId from classes
		where classId in (
			select classId from studentsXclasses
			where studentId in	(
				select studentId from students
				where stuName = 'Dan'
				or stuName = 'Meghan'
			)
		)
	)
);

#21
select stuName
from students
where stuName not  in ( 
    select stuName
    from students join studentsXclasses join classes
    on students.studentId = studentsXclasses.studentId
        and studentsXclasses.classId = classes.classId
    where className in (
        select className
        from students join studentsXclasses join classes
        on students.studentId = studentsXclasses.studentId
            and studentsXclasses.classId = classes.classId
        where stuName = 'Meghan' or stuName = 'Dan'
    )
);

#22
select stuName from students
where studentId in (
	select studentId from studentsXclasses
	where classId in (
		select classId from classes
		where classId in (
			select classId from studentsXclasses
			where studentId in (
				select studentId from students
				where stuName = 'Dan'
				and stuName = 'Meghan'
			)
		)
	)
);
