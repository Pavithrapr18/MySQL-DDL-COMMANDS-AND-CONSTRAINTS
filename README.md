MySQL Assignment 1 – DDL Commands & Constraints

📌 Project Overview

This project demonstrates the use of Data Definition Language (DDL) commands and constraints in MySQL by creating and managing an Employee Database. It covers database creation, table creation, table alteration, renaming, truncation, and deletion, along with the implementation of database constraints.

🎯 Objectives

- Understand and implement MySQL DDL commands.
- Create and manage relational database tables.
- Apply primary key and foreign key constraints.
- Implement "NOT NULL", "UNIQUE", "CHECK", "DEFAULT", and "AUTO_INCREMENT" constraints.
- Maintain data integrity and relationships between tables.

🛠️ Technologies Used

- Database: MySQL
- Language: SQL
- Tool: MySQL Workbench / MySQL Command Line Client

🗄️ Database Schema

The project consists of three tables:

1. Departments

Stores department information.

Column| Data Type| Constraint
department_id| INT| PRIMARY KEY
department_name| VARCHAR(100)| NOT NULL, UNIQUE

2. Location

Stores location information.

Column| Data Type| Constraint
location_id| INT| PRIMARY KEY, AUTO_INCREMENT
location| VARCHAR(30)| NOT NULL, UNIQUE

3. Employees

Stores employee details and connects employees to departments and locations.

Column| Data Type| Constraint
employee_id| INT| PRIMARY KEY
employee_name| VARCHAR(50)| NOT NULL
gender| ENUM('M', 'F')| Allowed values: M or F
age| INT| CHECK (age >= 18)
hire_date| DATE| DEFAULT CURRENT_DATE
designation| VARCHAR(100)| —
department_id| INT| FOREIGN KEY
location_id| INT| FOREIGN KEY
salary| DECIMAL(10,2)| —

📚 Topics Covered

DDL Commands

- "CREATE DATABASE" – Creates the employee database.
- "CREATE TABLE" – Creates the Departments, Location, and Employees tables.
- "ALTER TABLE" – Adds, modifies, drops, and renames columns.
- "RENAME TABLE" – Renames existing tables.
- "TRUNCATE TABLE" – Removes all records from a table.
- "DROP TABLE" – Deletes a table.
- "DROP DATABASE" – Deletes the database.

Constraints

- PRIMARY KEY: Uniquely identifies each record.
- FOREIGN KEY: Establishes relationships between tables.
- NOT NULL: Prevents missing required values.
- UNIQUE: Prevents duplicate values.
- CHECK: Enforces conditions such as minimum employee age.
- DEFAULT: Assigns a default hire date.
- AUTO_INCREMENT: Automatically generates location IDs.
- ENUM: Restricts gender values to M or F.

▶️ How to Run

1. Install MySQL Server and MySQL Workbench, if needed.
2. Open MySQL Workbench or your preferred SQL client.
3. Connect to your MySQL server.
4. Execute the database and table creation statements.
5. Run the constraint definitions and sample INSERT statements.
6. Execute the SELECT queries to verify the results.
7. Test the constraints using invalid INSERT statements.

Note: Run the table alteration commands and the database recreation script as separate exercises. The recreation script resets the database, so existing data will be deleted.

💡 Learning Outcomes

By completing this assignment, I gained practical knowledge of:

- Creating and modifying relational database structures.
- Applying integrity constraints in MySQL.
- Establishing relationships using foreign keys.
- Managing tables and databases using DDL commands.
- Validating data through SQL constraints.

👩‍💻 Author

Pavithra P R

📄 License

This project was created for educational and academic purposes.
