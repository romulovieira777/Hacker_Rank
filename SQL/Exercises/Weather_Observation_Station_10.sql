SELECT 
    DISTINCT(City) 
FROM
    Station
WHERE
    RIGHT(CITY,1) NOT IN ('a','e','i','o','u')
GO