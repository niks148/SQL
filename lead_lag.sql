use employees;

select
emp_no,
salary,
lag(salary) over w as prev_salary,
lead(salary) over w as next_salary,
salary - lag(salary) over w as diff_curr_prev,
lead(salary) over w - salary as diff_next_curr
from salaries
window w as (partition by emp_no order by salary);