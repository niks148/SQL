use employees_mod;

select year(dp.from_date)as cal_year, e.gender, count(e.emp_no) as employee_count
from 
t_dept_emp dp
join
t_employees e on dp.emp_no = e.emp_no
group by year(dp.from_date),e.gender
having cal_year>=1990;