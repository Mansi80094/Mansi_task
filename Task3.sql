CREATE DATABASE EmployeeRecord;
USE EmployeeRecord;
CREATE TABLE Employee( EmployeeID INT Primary Key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null Unique,
Salary INT Not Null,
DepartmentID VARCHAR(50));

CREATE TABLE Departments(DepartmentID INT Primary Key,
                        DepartmentName VARCHAR(50) Not Null);
                        
CREATE TABLE Projects (ProjectID INT Primary Key,
                       ProjectName VARCHAR(100) Not Null,
                        DepartmentID INT, 
                        CONSTRAINT fk_projects_department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));
                        

INSERT INTO Employee(EmployeeID,FirstName,LastName,Email,Salary,DepartmentID)
VALUES(1, "John","Doe", 'john.doe@company.com', 60000,1),
       (2, "Jane","smith", 'jane.smith@company.com', 75000,2),
       (3, "Michael","Johnson", 'michael.johnson@company.com', 85000,1),
	   (4,'Emily','Williams', 'emily.williams@company.com',72000,3),
	   (5,'David','Brown', 'david.brown@company.com',65000,2),
       (6,'Sarah','Davis','sarah.davis@company.com', 90000,3);
       
INSERT INTO Departments(DepartmentID,DepartmentName)
			VALUES( 1,'Marketing'),(2,'Sales'),(3,'IT'),(4, 'Finance'),(5, 'HR');

 INSERT INTO Projects(ProjectID,ProjectName, DepartmentID) 
 VALUES(1,'ProjectA', 1),(2,'ProjectB', 2),(3,'ProjectC', 3),(4,'ProjectD', 4),(5,'ProjectE', 5);
 

ALTER TABLE Employee 
ADD CONSTRAINT cK_Salary CHECK(Salary>0);

ALTER TABLE Employee
MODIFY COLUMN DepartmentID INT;


ALTER TABLE Employee
ADD CONSTRAINT FK_Empl_Dep FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);


ALTER TABLE Employees ADD CONSTRAINT unique_email UNIQUE(Email);


ALTER TABLE Departments 
ADD CONSTRAINT PK_dep PRIMARY KEY(DepartmentID);

ALTER TABLE Projects
ADD CONSTRAINT fk_projects_department_new FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (7, 'Jack', 'Claire', 'jack.claire@company.com', 50000, 5);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (8, 'Joe', 'New', 'john.doe@company.com', 50000, 999);

DELETE FROM Departments WHERE DepartmentID= 1;

UPDATE Employee
SET DepartmentID = 9
WHERE EmployeeID = 1;