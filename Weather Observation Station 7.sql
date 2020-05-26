SELECT
	DISTINCT
    city
FROM
    station
WHERE
    LOWER(SUBSTR(city, LENGTH(city), 1))
IN
	('a' , 'e', 'i', 'o', 'u');