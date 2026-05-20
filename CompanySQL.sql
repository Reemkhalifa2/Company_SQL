CREATE DATABASE Company;
USE Company;

CREATE TABLE Employee (
    SSN VARCHAR(20) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender CHAR(1),
    Supervisor_ssn VARCHAR(20),
    Dnum VARCHAR(20),

    FOREIGN KEY (Supervisor_ssn)
    REFERENCES Employee(SSN),

)

CREATE TABLE Department(
    Dnum VARCHAR(20) PRIMARY KEY,
    Dnam VARCHAR(20),
    Manager_ssn VARCHAR(20),
    HireDate DATE,

    FOREIGN KEY (Manager_ssn)
    REFERENCES Employee(SSN)
    )

ALTER TABLE Employee
ADD Dnum VARCHAR(20);

ALTER TABLE Employee
ADD CONSTRAINT fk_department
FOREIGN KEY (Dnum)
REFERENCES Department(Dnum);

CREATE TABLE Dept_location(
Dnum VARCHAR(20),
Loc VARCHAR (30) NOT NULL,
PRIMARY KEY (Dnum,Loc),

FOREIGN KEY (Dnum)
REFERENCES Department(Dnum)
);

CREATE TABLE Project(
Pnum int PRIMARY KEY,
Pname VARCHAR(30),
City VARCHAR(30),
Loc VARCHAR(50),
Dnum VARCHAR(20),
FOREIGN KEY (Dnum)
REFERENCES Department(Dnum)
);

CREATE TABLE Work_On(
Employee_ssn VARCHAR(20),
Project_no int,
Work_hour int,

PRIMARY KEY (Employee_ssn,Project_no),
FOREIGN KEY (Employee_ssn)
REFERENCES Employee(SSN),

FOREIGN KEY (Project_no)
REFERENCES Project(Pnum)

);
ALter TABLE Employee
add Birth_Date DATE

CREATE TABLE Dependent(
DepName VARCHAR(30),
Gender CHAR(1),
Birth_Date DATE,
Employee_ssn VARCHAR(20),
FOREIGN KEY (Employee_ssn)
REFERENCES Employee(SSN),

);



    
    
