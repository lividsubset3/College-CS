#Exam 2
use studentsTeachersAndClasses;  

 #1
select className
from students join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId
	and studentsXclasses.classId = classes.classId
where stuName = 'Miller';

#2
select teachName
from teachers join teachersXclasses join classes join studentsXclasses join students
on teachers.teacherId = teachersXclasses.teacherId
	and teachersXclasses.classId = classes.classId
    and studentsXclasses.classId = classes.classId
    and studentsXclasses.studentsId = students.studentId
where stuName = 'Miller';

#3
select count(*)
from teachers join teachersXclasses join classes
on teachers.teacherId = teachersXclasses.teacherId
	and teachersXclasses.classId = classes.classId
where teachName = 'K Fix';

#4
select distinct stuName
from students join studentsXclasses join teachersXclasses join teachers
on students.studentId = studentsXclasses.studentId
	and studentsXclasses.classId = teachersXclasses.classId
	and teachersXclasses.teacherId = teachers.teacherId
where teachName = 'H Keck';

#5
select stuName, count(credits)
from students join studentsXclasses join teachersXclasses join teachers
on students.studentId = studentsXclasses.studentId
	and studentsXclasses.classId = teachersXclasses.classId
	and teachersXclasses.teacherId = teachers.teacherId;
    
#6
select distinct className
from students join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId
	and studentsXclasses.classId = classes.classId
where not stuName = 'Roxanne';
