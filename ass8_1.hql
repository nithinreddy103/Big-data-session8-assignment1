1.	Get a list of employees who receive a salary less than 100, compared
to their immediate employee with higher salary in the same unit

select * from employee where salary<100 order by salary desc;


2.	List of all employees who draw higher salary than the average salary
of that department

select * from (select name,dept,salary,avg(salary) over() as avgsalary from emp)s where salary>avgsalary;

