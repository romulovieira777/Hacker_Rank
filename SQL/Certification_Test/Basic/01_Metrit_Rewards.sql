/*
1 - Metrit Rewards

On the basis of merit, a company decides to promote some of its employee in its HP division at the end of the quarter
because of their high performance. Write a query to find the employee IDs along with the names of all its employees who
work in the HR departament who earned a bonus of 5000 dollars or more in the last quarter.

There are two tables in the database: employee_information and last_quarter_bonus. Their primary keys are employee_ID.

SCHEMA

There are 2 tables: employee_information and last_quarter_bonus.

-------------------------------------------------------------------------------------
                            employee_information
-------------------------------------------------------------------------------------
Name        | Type    | Description
-------------------------------------------------------------------------------------
employee_ID | INTEGER | The employee ID of the employee. This is the primary key.
-------------------------------------------------------------------------------------
name        | STRING | The name of the employee.
-------------------------------------------------------------------------------------
division    | STRING | The division of the employee.
-------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------
                            last_quarter_bonus
-------------------------------------------------------------------------------------
Name        | Type    | Description
-------------------------------------------------------------------------------------
employee_ID | INTEGER | The employee ID of the employee. This is the primary key.
-------------------------------------------------------------------------------------
bonus       | INTEGER | The bonus amount earned by the employee in the last quarter.
-------------------------------------------------------------------------------------
*/

SELECT
  employee_ID,
  name
FROM
  employee_information
WHERE
  division = 'HR'
AND employee_ID IN (
  SELECT
    employee_ID
  FROM
    last_quarter_bonus
  WHERE
    bonus >= 5000)
GO
