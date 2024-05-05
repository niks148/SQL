SELECT 
    emp_no,
    first_name,
    last_name,
    CASE gender
        WHEN 'M' THEN 'Male'
        ELSE 'Female'
    END as gender
FROM
    employees;
    
SELECT 
    emp_no,
    first_name,
    last_name,
    if(gender='M','Male','Female') as gender
FROM
    employees;