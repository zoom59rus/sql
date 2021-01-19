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

## Task 3
SCHEMA:  
Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int)  
Truncate table Employee  
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3')  
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4')  
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', 'None')  
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', 'None')  
The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.  
+----+-------+--------+-----------+  
| Id | Name  | Salary | ManagerId |  
+----+-------+--------+-----------+  
| 1  | Joe   | 70000  | 3         |  
| 2  | Henry | 80000  | 4         |  
| 3  | Sam   | 60000  | NULL      |  
| 4  | Max   | 90000  | NULL      |  
+----+-------+--------+-----------+  
Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.  
+----------+  
| Employee |  
+----------+  
| Joe      |  
+----------+  
## Completed
See /src/3.sql 

## Task 4  
SCHEMA:  
Create table If Not Exists Person (Id int, Email varchar(255))  
Truncate table Person  
insert into Person (Id, Email) values ('1', 'a@b.com')  
insert into Person (Id, Email) values ('2', 'c@d.com')  
insert into Person (Id, Email) values ('3', 'a@b.com')  
Write a SQL query to find all duplicate emails in a table named Person.  
+----+---------+  
| Id | Email   |  
+----+---------+  
| 1  | a@b.com |  
| 2  | c@d.com |  
| 3  | a@b.com |  
+----+---------+  
For example, your query should return the following for the above table:  
+---------+  
| Email   |  
+---------+  
| a@b.com |  
+---------+  
Note: All emails are in lowercase.  
## Completed
See /src/4.sql 