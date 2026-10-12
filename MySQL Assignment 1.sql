Create database employee;
use employee;

Create table Departments (
  department_id int primary key,
  department_name varchar(100));

Create table Location (
  location_id int primary key,
  location varchar(30));
  
Create table Employees (
  employee_id int primary key,
  employee_name varchar(50),
  gender enum('M','F'),
  age int,
  hire_date date,
  designation varchar(100),
  department_id int,
  location_id int,
  salary decimal(10,2),
  foreign key (department_id) references Departments(department_id),
  foreign key (location_id) references Location(location_id));
  
Alter table Employees add email varchar(255);

Alter table Employees modify column designation varchar(255);

Alter table Employees drop column age;

Alter table Employees rename column hire_date to date_of_joining;

Rename table Departments to Departments_Info;

Rename table Location to Locations;

Truncate table Employees;

Drop table Employees;

Drop database employee;

-- Database Recreation

Create database employee;
use employee;

Create table Departments (
  department_id int primary key,
  department_name varchar(100)not null unique);
  
Create table Location (
  location_id int auto_increment primary key,
  location varchar(30)not null unique);
  
Create table Employees (
  employee_id int primary key,
  employee_name varchar(50)not null,
  gender enum('M','F'),
  age int,
  hire_date date default(current_date),
  designation varchar(100),
  department_id int,
  location_id int,
  salary decimal(10,2),
  constraint check_employee_age 
    check(age>=18),
  constraint fk_employee_department 
    foreign key (department_id) 
    references Departments(department_id),
  constraint fk_employee_location 
    foreign key (location_id) 
    references Location(location_id));

select * from Departments;

select * from Location;

select * from Employees;