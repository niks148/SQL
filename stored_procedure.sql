use employees;
drop procedure if exists avg_sal;
DELIMITER $$

create procedure avg_sal()
begin
select avg(salary) from salaries limit 100;
end$$

delimiter ;

call avg_sal;