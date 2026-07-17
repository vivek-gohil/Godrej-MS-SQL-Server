-- CREATE DATABASE
CREATE DATABASE godrejdb;

USE godrejdb;

-- DDL - DATA DEFINATION LANGUAGE
-- CREATE - DONE
-- ALTER
-- DROP

-- CREATE TABLE 
-- WITHOUT ANY CONSTRAINTS - PRIMARY KEY , NOT NULL
CREATE TABLE employee(
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	salary FLOAT,
	gender VARCHAR(50)
);

SELECT * FROM employee;

-- INSERT 
INSERT INTO employee VALUES(1,'Vivek','Gohil',1000,'Male');
INSERT INTO employee VALUES(2,'Sagar','Thakur',2000,'Male');
INSERT INTO employee VALUES(3,'Seema','Patil',3000,'Female');

-- DROP TABLE 
DROP TABLE employee;

-- CREATE TABLE WITH CONSTRAINTS
	-- PRIMARY KEY
	-- NOT NULL
	-- UNIQUE
	-- CHECK
	-- FOREIGN KEY
	-- DEFAULT

CREATE TABLE employee(
	employee_id INT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	salary FLOAT NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	city VARCHAR(50) DEFAULT 'MUMBAI',
	CONSTRAINT PK_employee PRIMARY KEY(employee_id),
	CONSTRAINT UQ_employee_email UNIQUE(email),
	CONSTRAINT CK_employee_salary CHECK(salary > 0),
	CONSTRAINT CK_employee_gender CHECK(gender IN ('Male','Female'))
);

INSERT INTO employee 
VALUES(1,'Vivek','Gohil',5000,'Male','ghl_vivek@hotmail.com','Thane');

INSERT INTO employee(employee_id,first_name,last_name,salary,gender,email)
VALUES(2,'Seema','Patil',5000,'Female','seema@gmail.com');

INSERT INTO employee(employee_id,first_name,last_name,salary,gender,email)
VALUES(3,'Sagar','Thakur',5000,'male','sagar@gmail.com');

INSERT INTO employee(employee_id,first_name,last_name,salary,gender,email)
VALUES(4,'Bharat','Solanki',5000,'male','bharat@gmail.com');

SELECT * FROM employee;

-- ALTER TABLE

-- ADD COLUMN
ALTER TABLE employee
ADD age INT;

-- DROP COLUMN
ALTER TABLE employee
DROP COLUMN age;

ALTER TABLE employee
ALTER COLUMN first_name VARCHAR(100) NOT NULL;


-- DROP CONSTRAINT
ALTER TABLE employee
DROP CONSTRAINT CK_employee_salary;

INSERT INTO employee 
VALUES(5,'Test','Testi g',0,'Male','test@hotmail.com','Thane');

ALTER TABLE employee
ALTER COLUMN age INT NOT NULL;


SELECT * FROM employee;

-- ADD CONSTRAINT
UPDATE employee SET salary = 5000 WHERE employee_id=5;

ALTER TABLE employee
ADD CONSTRAINT CK_employee_salary CHECK(salary > 0); 


-- FOREIGN KEY
CREATE TABLE department(
	department_id INT,
	department_name VARCHAR(50) NOT NULL,
	CONSTRAINT PK_department PRIMARY KEY(department_id)
);

ALTER TABLE employee
ADD department_id INT;

ALTER TABLE employee
ADD CONSTRAINT FK_employee_department FOREIGN KEY(department_id) 
	REFERENCES department(department_id);

SELECT * FROM employee;




SELECT * FROM department;

INSERT INTO department VALUES
(101,'IT'),
(102,'HR');

SELECT * FROM employee;
UPDATE employee SET department_id=101 
WHERE employee_id IN (1,2,3);

UPDATE employee SET department_id=101 
WHERE employee_id=1 OR employee_id=2 OR employee_id=3;


SELECT * FROM employee;


-- COMPOSIT PRIMARY KEY
CREATE TABLE product(
	product_id INT,
	product_name VARCHAR(100),
	price FLOAT NOT NULL,
	description VARCHAR(100) NOT NULL,
	CONSTRAINT PK_product PRIMARY KEY(product_id,product_name)
);

INSERT INTO product VALUES
(101,'Monitor',20000,'Output Component'),
(101,'Keyboard',300,'Input Component');

INSERT INTO product VALUES
(102,'Microprocesor',50000,'Processing Component'),
(102,'RAM',7000,'Memory Component'),
(102,'Keyboard',300,'Input Component');


SELECT * FROM product;
SELECT * FROM employee;



ALTER TABLE employee
DROP CONSTRAINT PK_employee;

ALTER TABLE employee
ALTER COLUMN employee_id VARCHAR(10);

DROP TABLE employee;

CREATE TABLE employee(
	employee_id VARCHAR(10),
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	salary FLOAT NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	city VARCHAR(50) DEFAULT 'MUMBAI',
	CONSTRAINT PK_employee PRIMARY KEY(employee_id),
	CONSTRAINT CK_employee CHECK(employee_id LIKE 'GITL%'),
	CONSTRAINT UQ_employee_email UNIQUE(email),
	CONSTRAINT CK_employee_salary CHECK(salary > 0),
	CONSTRAINT CK_employee_gender CHECK(gender IN ('Male','Female'))
);

INSERT INTO employee 
VALUES('GITL1','Vivek','Gohil',5000,'Male','ghl_vivek@hotmail.com','Thane');

INSERT INTO employee(employee_id,first_name,last_name,salary,gender,email)
VALUES('GITL2','Seema','Patil',5000,'Female','seema@gmail.com');

INSERT INTO employee(employee_id,first_name,last_name,salary,gender,email)
VALUES('GITL3','Sagar','Thakur',5000,'male','sagar@gmail.com');

INSERT INTO employee(employee_id,first_name,last_name,salary,gender,email)
VALUES(4,'Bharat','Solanki',5000,'male','bharat@gmail.com');


DROP TABLE employee;

CREATE TABLE employee(
	employee_id INT IDENTITY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	salary FLOAT NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	city VARCHAR(50) DEFAULT 'MUMBAI',
	CONSTRAINT PK_employee PRIMARY KEY(employee_id),
	CONSTRAINT UQ_employee_email UNIQUE(email),
	CONSTRAINT CK_employee_salary CHECK(salary > 0),
	CONSTRAINT CK_employee_gender CHECK(gender IN ('Male','Female'))
);

INSERT INTO employee(first_name,last_name,salary,gender,email)
VALUES('Seema','Patil',5000,'Female','seema@gmail.com');

INSERT INTO employee(first_name,last_name,salary,gender,email)
VALUES('Sagar','Thakur',5000,'male','sagar@gmail.com');

INSERT INTO employee(first_name,last_name,salary,gender,email)
VALUES('Bharat','Solanki',5000,'male','bharat@gmail.com');

SELECT * FROM employee;