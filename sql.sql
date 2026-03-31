create database a3;
use a3;
select * from emp;
select * from dept;


#1.WAQTD all the details of employees along with their half-term salary.
select *, sal*6  from emp;

#2. WAQTD name of the employee along with a 10% deduction in salary.
select ename,sal-(sal*0.1) from emp;

#3.WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY.
select ename,job,sal-100 from emp;

#4.WAQTD name and hiredate of the employees if the employees Are hired after 1981 and before 1987
select ename,hiredate from emp 
where hiredate between '1981-01-01' and '1987-12-31';

#5.WAQTD name , sal and deptno of the employees earning 2000 In dept 20 or 30
select ename,sal,deptno from emp where sal=2000 and deptno in(20.30);

#6. WAQTD details of the employees working as 'SALESMAN' or‘ANALYST’ in dept 10 or 30 .
select * from emp where job in('SALESMAN','analyst') and deptno in(10,30);

#7.WAQTD details of the employees working as clerk or salesman .
select * from emp where job in('clerk','salesman');

#8. WAQTD name and salary of the employees if their range of salary is 1000 to 3000
select ename,sal from emp
where sal between 1000 and 3000;

#9.WAQTD name and hiredate of all the employees except the employee hired in 2020 .
select ename,hiredate from emp
where hiredate between '2020-01-01' and '2020-12-31';

#10. WAQTD all the details of the employee who doesn't earn commission .
select * from emp
where comm is null;

#11. WAQTD name of the employee who gets salary as well as commission .
select ename from emp
where sal is not null and comm is not null;

#12. Names NOT starting with ‘S’ and ending with ‘H’
select ename from emp 
where  ename not like "s%" and ename like "%h";

#13. Names NOT starting with ‘A’ AND NOT ending with ‘N’
select ename from emp
where ename not like "a%n";

#14.Displays first 4 characters of employee names
SELECT SUBSTR(ename, 1, 4) AS short_name FROM emp;

#15. Write a query to display the string excluding the first character
SELECT SUBSTR(ename, 2) AS name_without_first_char FROM emp;

#16. Write a query to convert VSTAND4U → VSTANDFORU
SELECT REPLACE('VSTAND4U', '4', 'FOR') AS converted_string;

#17. Display employees whose name contains letter S
SELECT * FROM emp WHERE ename LIKE '%S%';

#18. Display employees whose name ends with A
SELECT * FROM emp WHERE ename LIKE '%A';

#19. Pad VSTAND4U with # to make length 12
SELECT LPAD('VSTAND4U', 12, '#') AS padded_string;
SELECT RPAD('VSTAND4U', 12, '#') AS padded_string;

#20.Find employees with EVEN empno ONLY:*
SELECT * FROM emp WHERE empno % 2 = 0;


select * from emp;

select ename,sal from emp
where sal>(select sal from emp where empno=7566);

select ename from emp 
where deptno in(select deptno from dept where loc='new york');