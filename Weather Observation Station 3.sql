SELECT DISTINCT
    city
FROM
    station
WHERE
    MOD(ID, 2) = 0;
