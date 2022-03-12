/*
Caleb Domenico, Patrick Raskowitz
CS195
students, classes and teachers - N to M relationships
*/ 

use studentsTeachersAndClasses; 

#1
select teachName
from teachers join teachersXclasses
where teachers.teacherId = teachersXclasses.teacherId
and classId = 3;

#2
select className 
from students join classes join studentsXclasses
where students.studentId = studentsXclasses.studentId
and classes.classId = studentsXclasses.classId
and studentsXclasses.studentId = 8
order by className; 

#3
select sum(credits) 
from teachers join classes join teachersXclasses
where teachers.teacherId = teachersXclasses.teacherId
and classes.classId = teachersXclasses.classId
and teachers.teacherId = 3; 

#4
select sum(credits)
from students join classes join studentsXclasses
where students.studentId = studentsXclasses.studentId
and classes.classId = studentsXclasses.classId
and studentsXclasses.studentId = 4;

#5
select count(email)
from students join emails
where students.studentId = emails.studentId
and students.studentId = 9;

#6
select email
from students join emails
where students.studentId = emails.studentId
and students.studentId = 1;

#7
select count(credits) as '# of Classes' 
from students join classes join studentsXclasses
where students.studentId = studentsXclasses.studentId
and classes.classId = studentsXclasses.classId
and studentsXclasses.studentId = 4;

#8
select count(credits) as '# of Classes'
from teachers join classes join teachersXclasses
where teachers.teacherId = teachersXclasses.teacherId
and classes.classId = teachersXclasses.classId
and teachers.teacherId = 3; 

#9
select email
from students join emails
where students.studentId = emails.studentId
and students.studentId = 6;

#10
select stuName, email 
from students join emails join studentsXclasses
where students.studentId = emails.studentId
and students.studentId = studentsXclasses.studentId
and classId = 3; 

#11
select stuName, email
from students join emails join studentsXclasses
on students.studentId = emails.studentId and students.studentId = studentsXclasses.studentId
where classId = 3; 


#12
select stuName
from students join studentsXclasses 
on students.studentId = studentsXclasses.studentId
where classId = 2; 

#13
select distinct stuName
from students join studentsXclasses 
on students.studentId = studentsXclasses.studentId
where classId = 1 or classId = 2; 

#14
select distinct count(stuName)
from students join studentsXclasses 
on students.studentId = studentsXclasses.studentId
where classId = 3;

#15
select distinct stuName
from students join studentsXclasses 
on students.studentId = studentsXclasses.studentId
where classId = 1 or classId = 2 or classId = 3; 

#16
select stuName, email 
from students join emails
on students.studentId = emails.studentId
where stuName in (
	select stuName
	from students join studentsXclasses join classes
	on students.studentId = studentsXclasses.studentId and studentsXclasses.classId = classes.classId
	where className = 'CS I'
);

#17
select stuName, email 
from students join emails
on students.studentId = emails.studentId
where stuName not in (
select stuName
from students join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId and studentsXclasses.classId = classes.classId
where className = 'CS I'
);