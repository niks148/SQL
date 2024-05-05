use employees;

DELIMITER $$

create procedure emp_info(in f_name varchar(20), in l_name varchar(20), out emp_no integer)
begin
select e.emp_no into emp_no
from employees e
where e.first_name = f_name and e.last_name=l_name;
end $$

delimiter ;

