use employees;

DELIMITER $$

create function emp_avg_sal(emp_no integer) returns decimal(10,2)
begin
declare avg_sal decimal(10,2);
SELECT 
    avg(s.salary)
INTO avg_sal FROM
    employees e
    join
    salaries s on e.emp_no = s.emp_no
WHERE
    e.emp_no = emp_no;
return avg_sal;
end $$

delimiter ;

select emp_avg_sal(11300);
