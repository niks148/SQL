use employees_mod;
drop procedure if exists avg_emp_sal;
DELIMITER $$
create procedure avg_emp_sal(in min_sal float, in max_sal float)
begin
	select d.dept_name,e.gender,round(avg(s.salary),2) as avg_sal
    from
    t_salaries s
    join
    t_employees e on s.emp_no = e.emp_no
    join
    t_dept_emp de on e.emp_no=de.emp_no
    join
    t_departments d on de.dept_no = d.dept_no
    where
    s.salary between min_sal and max_sal
    group by d.dept_name, e.gender;
end$$

DELIMITER ;

call avg_emp_sal(50000,90000);