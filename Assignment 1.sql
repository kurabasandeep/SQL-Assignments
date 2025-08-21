
	-- question 1 

	--- tables creation 

	create table departments(
	departmentid int primary key,
	departmentname varchar(50) not null unique)
  

	create table students( 
	studentid int primary key,
	name varchar(50) not null ,
	age int check (age >=17),
	departmentid int foreign key  references departments(departmentid))

	create table courses(
	courseid int primary key,
	coursename varchar(60) not null,
	departmentid int foreign key references departments(departmentid))


	--  question 2
 
	----   inserting
	select * from departments

	insert into departments 
	values
	(1, 'Computer Science'),
	(2, 'mechanical'),
	(3, 'electrical'),
	(4, 'civil'),
	(5, 'electronics')


	select * from students

	insert into students
	values
	(1,'sandeep',26,1),
	(2,'bhannu',18,1),
	(3,'yuva',28,2),
	(4,'kumar',33,5),
	(5,'aswini',30,1),
	(6,'sigarappa',68,2),
	(7,'manjula',59,3),
	(8,'abhi',26,4),
	(9,'pooji',26,3),
	(10,'sriram',26,2)



	select * from courses


	insert into courses 
	values 
	(1,'SQL',1),
	(2,'fullstock',5),
	(3,'fullstock',2),
	(4,'FRONTEND',3),
	(5,'BACKEND',4),
	(6,'fullstock',1),
	(7,'PYTHON',1),
	(8,'data_analyst',2),
	(9,'ai',3),
	(10,'ml',4),
	(11,'powerbi',5),
	(12,'games',1),
	(13,'songs',2),
	(14,'frustration',3),
	(15,'boring',4)


	-- question 3

	-- where and operators

	-- display all students whose age is greater than 20


	select age from students where age>20

	--  or  --
	select * from students where age>20


	--display all courses of the "computer science' department.


	SELECT * 
	FROM Courses, Departments
	WHERE Courses.DepartmentID = Departments.DepartmentID
	AND Departments.DepartmentName = 'Computer Science'

	-- display students whose age is between 18 and 22

	select * from students where age between 18 and 22

 

	-- question 4

	-- joins (left ,inner ,right)

	--inner join 
	-- students with departments to show students names with their department names.


	select s.studentid, s.name, d.departmentname
	from students s
	inner join departments d
	on s.departmentid = d.departmentid;


	-- left join
	--courses eith departments to show all courses, even if some departments does not exist.

	select c.*, c.coursename, d.departmentname from courses c
	left join departments d
	on c.courseid= d.departmentid
	/*
	select c.coursename, d.departmentname
	from courses c
	left join departments d
	on c.departmentid = d.departmentid;
	*/

	-- right join 
	-- students with courses to show all courses ,even if no students has enrolled in them.

	select s.studentid, s.name, c.coursename from students s
	right join courses c
	on c.courseid=s.studentid




