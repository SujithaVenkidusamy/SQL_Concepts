  -- Create database
create database Job;

 -- Use the database
use Job;

-- Create a Table
create table Employee(
S_no int,
Employee_id varchar(100),
Employee_name varchar(100),
Date_of_birth date,
Date_of_joining date,
Salary int,
Bonus int,
City varchar(100),
Address varchar(100),
Department varchar(100),
Email_id varchar(100),
Employee_status varchar(100),
Createdat Timestamp default current_timestamp);

select*from Employee;

 -- Insert 10 fields
INSERT INTO Employee (S_no, Employee_id, Employee_name, Date_of_birth, Date_of_joining, Salary, Bonus, City, Address, Department, Email_id, Employee_status)
VALUES 
(1, 'E001', 'Sujitha ', '1985-05-15', '2010-03-01', 50000, 2000, 'New York', '123 Main St', 'IT', 'sujitha@gmail.com', 'Active'),
(2, 'E002', 'Sharanya', '1990-07-20', '2012-06-15', 55000, 2500, 'Los Angeles', '456 Oak Ave', 'HR', 'sharanya@gmail.com', 'Active'),
(3, 'E003', 'Parkavi', '1982-11-30', '2008-01-10', 60000, 3000, 'Chicago', '789 Pine Rd', 'Finance', 'paruu@gmail.com', 'Active'),
(4, 'E004', 'Janani', '1995-02-10', '2015-09-05', 48000, 2200, 'San Francisco', '321 Birch Blvd', 'Marketing', 'januu@gmail.com', 'Active'),
(5, 'E005', 'Ranjith', '1988-09-25', '2011-11-20', 70000, 3500, 'Boston', '654 Maple Ln', 'IT', 'ranjith@gmail.com', 'Active'),
(6, 'E006', 'Karthick', '1992-03-14', '2014-05-17', 46000, 1800, 'Dallas', '987 Cedar Dr', 'HR', 'karthickgsd@gmail.com', 'Active'),
(7, 'E007', 'Vinoth', '1987-06-22', '2009-04-12', 65000, 2800, 'Houston', '123 Elm St', 'Finance', 'vinoth@gmail.com', 'Inactive'),
(8, 'E008', 'Hari', '1994-12-05', '2016-07-01', 54000, 2000, 'Miami', '456 Pine St', 'Marketing', 'harianna@gmail.com', 'Active'),
(9, 'E009', 'Vickram', '1984-08-18', '2007-02-03', 75000, 4000, 'Seattle', '789 Oak St', 'Sales', 'vicky@gmail.com', 'Active'),
(10, 'E010', 'Navanithi', '1991-01-11', '2013-08-09', 52000, 2100, 'Atlanta', '321 Willow Rd', 'Sales', 'navanithi@gmail.com', 'Active');

 -- Change the particular column name
 alter table Employee
change column Createdat Date_Time varchar (20);

 -- Add new colunm and view
alter table Employee
add column Phone_num int;

 -- Alter the table with some records
update Employee
SET Phone_num=2345
where Employee_id='E001';

set sql_safe_updates=0;

update Employee
SET Phone_num=6655
where Employee_id='E006';

 -- Drop the column
alter table Employee
drop column Phone_num;

 -- Delete some datas
delete from Employee
where Employee_id='E010';

 -- View all the starting letter with "S"
select*from Employee
where Employee_name LIKE 'S%';

 -- View more than 70000 salary
select*from Employee
where Salary>70000; 

 -- View city called "New York"
select*from Employee
where City='New York'; 

 -- Use logical operators
select*from Employee
where Salary>40000 && Bonus>3000;

select*from Employee
where Department='IT' || Department='HR';

 -- Aggregate Functions
select max(Salary) from Employee; 

select min(Bonus) from Employee; 

select sum(Bonus) from Employee;

Select avg(Salary) from Employee;

select count(*)
from Employee where Salary>50000;

 -- Where,like,between
select*from Employee
WHERE Employee_name LIKE '%t%' 
AND Salary BETWEEN 45000 AND 55000;
 
 -- Truncate between the tables
truncate table Employee; 
