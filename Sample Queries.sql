--Display the name concatenated with the job_id, separated by a comma and space and name the column [Employee and job]
SELECT first_name||','||job_id as "Employee and job"
FROM EMPLOYEES;

--Display the name and salary for all employees whose salary is not in the range of $1500 and $2850
SELECT first_name, Salary 
FROM EMPLOYEES
WHERE salary NOT BETWEEN 1500 and 2850;

/*Display the name, salary and commission for all employees who earn commissions, 
Sort data in descending order of salary and commissions*/
SELECT first_name,salary,commission_pct
FROM employees
where commission_pct is not null 
ORDER BY salary DESC, commission_pct DESC;

/*Display the name, job and salary for all employees whose job is Clerk or ACCOUNT 
and their salary is not equal to $1000,$3000 or $5000*/
SELECT first_name,job_id,Salary
FROM employees 
WHERE job_id in ('SH_CLERK','AC_ACCOUNT') AND (salary NOT IN (1000,3000,5000));

--Display all information about employees whose name begin with letter 'S'
SELECT *
FROM employees
WHERE first_name LIKE 'S%';

--Display all employees whose employee id is odd
SELECT *
FROM employees 
WHERE MOD(employee_id,2)!=0;

--Write a query that displays the first three letters of the employee name, and the length of his name
SELECT SUBSTR(first_name,1,3),LENGTH(first_name)
from employees;
