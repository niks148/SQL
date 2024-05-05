SELECT employees;

select 
emp_no,first_name,last_name,
row_number() over(partition by first_name order by last_name) as row_nm
 from employees;
 
SELECT

dm.emp_no,

    salary,

    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary ASC) AS row_num1,

    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS row_num2   

FROM

dept_manager dm

    JOIN 

    salaries s ON dm.emp_no = s.emp_no;

select 
emp_no,first_name,last_name,
row_number() over w as row_nm
 from employees
window w as (partition by first_name order by last_name);

select a.emp_no, min(salary) from(
select emp_no,salary,row_number() over w as row_num from salaries window w as (partition by emp_no order by salary asc)) a
group by emp_no;

