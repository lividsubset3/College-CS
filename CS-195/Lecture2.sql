#filter subqueries
use customersAndProducts;


#what is the customerId for Music R Us?
select customerId from customers
where customerName = 'Music R Us';

#what emails are there for Music r Us?
select email from customerContacts
where customerId in
(
    select customerId from customers
    where customerName = 'Music R Us'
);
#but of course we don't need that for this problem
select email
from customerContacts join customers
on customerContacts.customerId = customers.customerId
where customerName = 'Music R Us';

#we can push this farther
#show the emails for everyone that bought a mini
select distinct email from customerContacts where customerId in
(
    select distinct customerId from orders where orderId in
    (
        select orderId from orderLines where productId = 'MINI'
    )
);

#but we don't need a subquery
select distinct email
from customerContacts join orders join orderLines
on customerContacts.customerId = orders.customerId
    and orders.orderId = orderLines.orderId
where productId = 'MINI';

use studentsTeachersAndClasses;
#show all the students that are in class with Roxanne
#step 1 - what classes is Roxanne in?
select className
from students join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId
    and studentsXclasses.classId = classes.classId
where stuName = 'Roxanne';

#step 2 - what students are in those classes?
select stuName
from students join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId
    and studentsXclasses.classId = classes.classId
where className in
(
    select className
    from students join studentsXclasses join classes
    on students.studentId = studentsXclasses.studentId
        and studentsXclasses.classId = classes.classId
    where stuName = 'Roxanne'
);

#what students are NOT in those classes?
#BUT THIS GIVES ME STUDENTS THAT ARE ALSO IN THE CLASS
select distinct stuName
from students join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId
    and studentsXclasses.classId = classes.classId
where className not in
(
    select className
    from students join studentsXclasses join classes
    on students.studentId = studentsXclasses.studentId
        and studentsXclasses.classId = classes.classId
    where stuName = 'Roxanne'
);

#Here is the correct answer
select stuName #show all the students
from students
where stuName not  in ( #if the student isn't in the list of students
    select stuName        #that are in the class that Roxanne is in
    from students join studentsXclasses join classes
    on students.studentId = studentsXclasses.studentId
        and studentsXclasses.classId = classes.classId
    where className in  
    (
        select className
        from students join studentsXclasses join classes
        on students.studentId = studentsXclasses.studentId
            and studentsXclasses.classId = classes.classId
        where stuName = 'Roxanne'
    )
);

#correlated subqueries
#show information from orderLines where the quantity was greater than
#the average of the quantities for that item.
select orderId, productId, quantity from orderLines as ol1
where quantity >
(
    select avg(quantity)
    from orderLines as ol2
    where ol1.productId = ol2.productId
);


#subquerying the same table
#show everyone that works at the same place Ben Franklin
select fname, lname
from customerContacts
where customerId =
(
    select customerId
    from customerContacts
    where fname = 'Benjamin'
    and lname = 'Franklin'
);

#having DEMO
select orderId, sum(quantity) from orderLines
group by orderId
having sum(quantity) > 10;

#8 Show the orderId for any larger than average  size order, measured as # of items ordered.
select orderId, sum(quantity) from orderLines
group by orderId
having sum(quantity) >
(
    select avg(q) from
    (
        select sum(quantity) as q from orderLines
        group by orderId
    ) as T        #error without T - every derived table must have its own alias
);