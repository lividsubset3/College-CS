use studentsTeachersAndClasses;

# who's teaching CS1
select teachName as 'CS I teachers'
from teachers join teachersXclasses join classes
on teachers.teacherId = teachersXclasses.teacherId
	and teachersXclasses.classId = classes.classId
where className = 'CS I';

# how many credits is miller taking broke
select sum(credits)
from stidents join studentsXclasses join classes
on students.studentId = studentsXclasses.studentId
	and studentsXclasses.classId = classes.classId
where stuName = 'miller';

# how many emails does stephen have
select count(email)
from students join emails
on students.studentId = emails.studentId 
where stuName = 'stephen';

