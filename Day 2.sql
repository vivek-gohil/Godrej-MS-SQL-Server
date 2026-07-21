CREATE SCHEMA hr;
GO

CREATE TABLE hr.employee(
	employee_id INT IDENTITY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	salary FLOAT NOT NULL,
	gender VARCHAR(10) NOT NULL,
	date_of_birth DATE NOT NULL,
	email VARCHAR(50),
	city VARCHAR(50) DEFAULT 'MUMBAI',
	state VARCHAR(50) DEFAULT 'MAHARASHTRA',
	CONSTRAINT PK_employee PRIMARY KEY(employee_id)
);
SELECT * FROM hr.employee;
INSERT INTO hr.employee(first_name,last_name, salary, gender, date_of_birth, email, city, state) VALUES
('Bhuvhan','Jamwal',30000,'Male','23-Sep-2004','bjamwal@gmail.com','Jammu','Jammu and Kashmir'),
('Husain','Ratlamwala',20000,'Male','22-Oct-2004', 'husainr@godrej.com', default,default),
('Manas','Bhirud',20000,'Male','23-Jun-2004','mkbhirud@godrej.com','Jalgaon',Default),
('Sanskar','Varshney',40000,'Male','08-March-2004','sanskarv@godrej.com','Thane',DEFAULT),
('Harshit','Upadhyay',40000,'Male','01-January-2005','harshitu@godrej.com','Vikhroli','MAHARASHTRA'),
('Anurag','Tiwari',40000,'Male','24-December-2004','anuragtk@godrej.com','Badlapur','Maharashtra'),
('Prathmesh', 'Magar', 50000, 'Male', '01-Jan-2005', 'phmagar@godrej.com', DEFAULT, DEFAULT),
('Ninad', 'Sarpole', 50000, 'Male', '19-Aug-2004', 'nd@godrej.com', DEFAULT, DEFAULT),
('Arin','Chaudhary',400000,'Male','22-Oct-2004','arinc@godrej.com','Pune','Maharashtra'),
('Shravani', 'Khot', 400000, 'Female', '22-June-2004', 'sskhot@godrej.com', DEFAULT, DEFAULT),
('Prabhat','Rai','1','Male','24-Sep-2004','prabhatr@godrej.com','bengaluru','Karanataka'),
('Vedant','Jagdale',20000,'Male','29-Mar-2005','vjagdale@godrej.com',DEFAULT,DEFAULT),
('Aayushi','Sakpal', 20000, 'Female','30-Jul-2004', 'aayushis@godrej.com',DEFAULT,DEFAULT),
('Akshad','Jain',50,'Male','25-Aug-2004','arjain@godrej.com','Roha','Maharashtra'),
('Juili','Bhogale',15000,'Female','14-Jul-2005','juili34.bhogale10a@gmail.com','Thane','Maharashtra'),
('Shubham','Waralkar',10,'Male','15-Feb-2004','shubham@godrej.com','Mumbai','Maharshtra'),
('Vedika','Gawade',10000,'F','14-Jan-2006','vedikagawade2136@gmail.com','DEFAULT','DEFAULT'),
('Deepesh','Mehra', 50000, 'Male','04-May-2006', 'deepesh@godrej.com',DEFAULT,DEFAULT),
('Hema','Chavan',2000000,'Female','06-Nov-2004','hema06@godrej.com',default,default),
('Shruti','Singh',200000,'Female','05-Aug-2006','shruti05@godrej.com',default,default),
('Shravani','Nanche',2000000,'Female','21-Jul-2005','shravani@godrej.com',default,default),
('BISWAMBHAR','SAHA',1500,'Male','13-Oct-2004','BSAHA@GODREJ.COM','KOLKATA','WEST_BENGAL'),
('SHREYASH','GUPTA',400000,'Male','10-SEP-2004','shreyashsg2004@gmail.com',DEFAULT,DEFAULT),
('Pankaj', 'Singh', 400000, 'Male', '26-Oct-2004', 'singhpd@godrej.com', DEFAULT, DEFAULT),
('Roshan', 'M S', 50000, 'Male', '04-May-2004', 'roshanms@gmail.com','Bangalore', 'Karnataka'),
('Karan','Jangam',300000,'Male','22-Oct-2005','jangamkaran82@godrej.com',DEFAULT,DEFAULT),
('Monika','Pandey',300000,'Female','26-Feb-2004','monikarp@godrej.com',DEFAULT,DEFAULT),
('Divya','Dembla',300000,'Female','04-May-2005','divyad@godrej.com',DEFAULT,DEFAULT),
('Yashwant','Gowda',300000,'Male','21-Jun-2005','yashwantd@godrej.com',DEFAULT,DEFAULT),
('Maruselvi', 'Nadar', 5000,'Female', '30-Nov-2004', 'm@gmail.com', 'Dombivli', default),
('Khushi', 'Shetty', 5000, 'Female', '31-May-2005', 'k@gmail.com', 'Navi Mumbai', default),
('Soumyajeet','Saha',15000,'Male','11-Apr-2004','soumyajeet@gmail.com','Kolkata','WB'),
('Pranit','Dalvi',500000,'Male','09-June-2005','pranitdalvi09@godrej.com',DEFAULT,DEFAULT),
('SOUMAVA','MAITI','50000','Male','08-AUG-2004','ssmaiti@godrej.com','BURDWAN','WEST BENGAL'),
('Saptarshi','Basu',30000,'Male','18-Feb-2004','ssbasu@godrej.com','Howrah','West Bengal');
 ;

 SELECT * FROM hr.employee;

 UPDATE hr.employee SET gender = 'Female' WHERE gender IN ('f','F','FEMALE','female');
 UPDATE hr.employee SET gender = 'Male' WHERE gender IN ('m','M','MALE','male');


 SELECT UPPER(state) FROM hr.employee;

 UPDATE hr.employee SET state = UPPER(state);
 UPDATE hr.employee SET city = UPPER(city);
 UPDATE hr.employee SET city = 'MUMBAI' WHERE city IN ('VIKHROLI','DEFAULT');
 UPDATE hr.employee SET city = 'THENE' WHERE city IN ('BADLAPUR','DOMBIVLI');
 UPDATE hr.employee SET city = 'THANE' WHERE city = 'THENE';
 UPDATE hr.employee SET city = 'BENGALURU' WHERE city IN ('BENGALURU','BANGALORE');
 UPDATE hr.employee SET state = 'MAHARASHTRA' WHERE state IN ('MAHARSHTRA','DEFAULT');
 UPDATE hr.employee SET state = 'WEST BENGAL' WHERE state IN ('WB','WEST_BENGAL');

 -- print all employees
SELECT 
	* 
FROM 
	hr.employee;

 -- print employeeid , first name , salary of employees
SELECT 
	 employee_id,first_name,salary
FROM 
	hr.employee;

-- print employees with salary >= 10000

SELECT 
	* 
FROM 
	hr.employee
WHERE 
	salary >= 10000;

-- print only male employees with salary >= 10000
SELECT 
	* 
FROM 
	hr.employee
WHERE 
	salary >= 10000 AND gender = 'Male';

-- print only female employees with salary >= 10000
SELECT 
	* 
FROM 
	hr.employee
WHERE 
	salary >= 10000 AND gender = 'Female';

SELECT 
	* 
FROM 
	hr.employee
WHERE 
	city != 'MUMBAI';

SELECT 
	* 
FROM 
	hr.employee
WHERE 
	city != 'MUMBAI' AND city != 'THANE';

SELECT 
	* 
FROM 
	hr.employee
WHERE 
	city NOT IN ('MUMBAI','THANE');

SELECT 
	DISTINCT city 
FROM 
	hr.employee;

SELECT 
	DISTINCT city 
FROM 
	hr.employee 
ORDER BY 
	city DESC;


SELECT 
	COUNT(city) AS 'MUMBAI_Employee'
FROM 
	hr.employee
WHERE city = 'MUMBAI';

SELECT 
	city,
	COUNT(city) 'Employee_Count'
FROM 
	hr.employee
GROUP BY
	city;

SELECT 
	city,
	COUNT(city) 'Employee_Count'
FROM 
	hr.employee
GROUP BY
	city
ORDER BY COUNT(city);
	
SELECT 
	city,
	COUNT(city) 'Employee_Count'
FROM 
	hr.employee
GROUP BY
	city
HAVING 
	COUNT(city) < 10
ORDER BY 
	Employee_Count

-- Print all male employees having salary > 1000
	-- avg salary of all employees by city
SELECT 
	 city,avg(salary) 'AVG_MALE_SALARY'
FROM 
	hr.employee
WHERE
	gender = 'Male' AND salary > 1000
GROUP BY 
	city
HAVING 
	avg(salary) < 50000
ORDER BY 
	AVG_MALE_SALARY;

SELECT 
	*
FROM
	employee
ORDER BY
	state;

-- PRINT ALL EMPLOYEES HAVING SALARY BETWEEN 10000 - 100000 
SELECT 
	 *
FROM
	employee
WHERE 
	salary BETWEEN 10000 AND 100000
ORDER BY 
	salary;

-- Print all employee by there first name length - asc order 
SELECT 
	LEN(first_name) 'first_name_length' , COUNT(LEN(first_name)) 'count_f_name_length'
FROM
	employee
GROUP BY
	LEN(first_name)
HAVING
	LEN(first_name) > 5
ORDER BY 
	first_name_length;


-- PRINT EMPLOYEES, first name ends with 'a'
SELECT 
	*
FROM 
	employee
WHERE 
	first_name LIKE '%a';




