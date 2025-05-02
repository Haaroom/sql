/* sql small project -1 */
select employee_id, name, department_id, salary, hire_date from employee as e  where salary > (select avg(salary) from employee where department_id= e.department_id) and cast(strftime(%Y ,hire_date) as int) > 2020;
/* sql small project - 2*/
select top 3 from sales where cast(strftime(timedelta=30days,sale_date) as int) 
