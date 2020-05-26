SELECT 
    COUNT(City) - COUNT(DISTINCT city)
FROM
    station;
