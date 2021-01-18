# Module_2_1 

## Task 1  
SCHEMA:   
Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255))  
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255))  
Truncate table Person  
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen')  
Truncate table Address  
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York')  
 
Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
FirstName, LastName, City, State  
## Completed
See /src/1.sql

## Task 2  
SCHEMA:   
Create table If Not Exists Employee (Id int, Salary int)  
Truncate table Employee  
insert into Employee (Id, Salary) values ('1', '100')  
insert into Employee (Id, Salary) values ('2', '200')  
insert into Employee (Id, Salary) values ('3', '300')  

Write a SQL query to get the second highest salary from the Employee table.  
+----+--------+  
| Id | Salary |  
+----+--------+  
| 1  | 100    |  
| 2  | 200    |  
| 3  | 300    |  
+----+--------+  
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.  
+---------------------+  
| SecondHighestSalary |  
+---------------------+  
| 200                 |  
+---------------------+  


## Completed
See /src/2.sql