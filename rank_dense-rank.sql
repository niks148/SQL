select 
emp_no,salary,
rank() over(partition by emp_no order by salary desc) as row_nm
 from salaries where emp_no=10560;
 
select 
emp_no,salary,
dense_rank() over(partition by emp_no order by salary desc) as row_nm
 from salaries where emp_no=10560;
