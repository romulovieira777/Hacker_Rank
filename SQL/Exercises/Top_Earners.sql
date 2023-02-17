/*

Top Earners

We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum
total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all
employees as well as the total number of employees who have maximum total earnings. Then print these values as 2
space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:



*/

SELECT TOP(1)
    MAX(months * salary) AS max_earning
  , COUNT(*)
FROM
    Employee
GROUP BY
    months * salary
ORDER BY
    max_earning DESC
GO
