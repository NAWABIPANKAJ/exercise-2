CREATE DATABASE PK_SHARMA
CREATE TABLE Departments (Code INTEGER PRIMARY KEY,Name varchar(100),Budget decimal );
CREATE TABLE Employees (SSN INTEGER PRIMARY KEY,First_Name varchar(100) NOT NULL ,LastName varchar(100) NOT NULL ,
Department INTEGER FOREIGN KEY REFERENCES Departments(Code)NOT NULL);
--------------
INSERT INTO Departments(Code,Name,Budget) VALUES(14,'IT',65000);
INSERT INTO Departments(Code,Name,Budget) VALUES(37,'Accounting',15000);
INSERT INTO Departments(Code,Name,Budget) VALUES(59,'Human Resources',240000);
INSERT INTO Departments(Code,Name,Budget) VALUES(77,'Research',55000);
-----------------
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('123234877','Michael','Rogers',14);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('152934485','Anand','Manikutty',14);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('222364883','Carol','Smith',37);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('326587417','Joe','Stevens',37);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('332154719','Mary-Anne','Foster',14);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('332569843','George','ODonnell',77);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('546523478','John','Doe',59);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('631231482','David','Smith',77);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('654873219','Zacary','Efron',59);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('745685214','Eric','Goldsmith',59);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('845657245','Elizabeth','Doe',14);
INSERT INTO Employees(SSN,First_Name,LastName,Department) VALUES('845657246','Kumar','Swamy',14);
----------------
--------1
SELECT LASTNAME FROM Employees
-----------2
SELECT DISTINCT LASTNAME FROM Employees
----------3
SELECT LASTNAME FROM Employees WHERE LastName='SMITH'
---------4
SELECT LASTNAME FROM Employees WHERE LastName IN ('SMITH','DOE')
------5
SELECT * FROM Employees WHERE Department=14
------------6-
SELECT * FROM Employees WHERE Department in(37,77)
----------7-



SELECT * FROM Departments;
SELECT * FROM Employees
