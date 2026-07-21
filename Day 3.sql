CREATE TABLE Employee
(
    EmpId INT,
    EmpName VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Employee VALUES
(101,'Rahul Sharma','Mumbai'),
(102,'Priya Patel','Pune'),
(103,'Amit Kumar','Delhi');
-- String Functions
SELECT
EmpName,
UPPER(EmpName) AS UpperName,
LOWER(EmpName) AS LowerName,
LEN(EmpName) AS NameLength
FROM Employee;




-- Date Functions
-- Print current date - Using Function
SELECT GETDATE();

-- Print current date - Using Variable
SELECT CURRENT_TIMESTAMP;

-- Print current date - Server Date and Time
SELECT SYSDATETIME();

-- Add number of days into current date
SELECT DATEADD(DAY,10,GETDATE());

-- Add number of months into current date
SELECT DATEADD(MONTH,2,GETDATE());

-- Add number of years into current date
SELECT DATEADD(YEAR,4,GETDATE());

-- Finds the difference between two days and retrun years 
SELECT DATEDIFF(YEAR,'2000-01-01',GETDATE());
-- Finds the difference between two days and retrun months
SELECT DATEDIFF(MONTH,'2026-06-21',GETDATE());
-- Finds the difference between two days and retrun days 
SELECT DATEDIFF(DAY,'2026-06-21',GETDATE());

-- Print day - date from the supplied date
SELECT DAY(GETDATE());
-- Print month - date from the supplied date
SELECT MONTH(GETDATE());
-- Print year - date from the supplied date
SELECT YEAR(GETDATE());

-- Print last date of the month
SELECT EOMONTH(GETDATE());

-- Print name of day from the current date
SELECT DATENAME(WEEKDAY,GETDATE());

-- Retrive the part date from the date
-- Retrive the week
SELECT DATEPART(WEEK,GETDATE());
-- Retrive the Day
SELECT DATEPART(DAY,GETDATE());




-- Mathematical Functions
SELECT ABS(-250);
SELECT CEILING(15.2);
SELECT FLOOR(15.8);
SELECT ROUND(123.4567,2);
SELECT POWER(2,5);
SELECT SQRT(81);
SELECT RAND();
SELECT PI();

-- Ranking Functions
CREATE TABLE EmployeeSalary
(
    EmpId INT,
    EmpName VARCHAR(30),
    Salary DECIMAL(10,2)
);

INSERT INTO EmployeeSalary VALUES
(101,'Rahul',50000),
(102,'Priya',70000),
(103,'Amit',70000),
(104,'Neha',45000),
(105,'Karan',60000);

SELECT
EmpName,
Salary,
ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNo
FROM EmployeeSalary;

SELECT
EmpName,
Salary,
RANK() OVER(ORDER BY Salary DESC) AS RankNo
FROM EmployeeSalary;

SELECT
EmpName,
Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM EmployeeSalary;

-- System Functions
SELECT @@VERSION;
SELECT DB_NAME();
SELECT SUSER_NAME();
SELECT HOST_NAME();
SELECT APP_NAME();
SELECT NEWID();
SELECT ISNULL(NULL,'Not Available');
SELECT ISNULL('A','Not Available');