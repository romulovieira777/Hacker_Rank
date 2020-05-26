SELECT 
	DISTINCT
    city
FROM
    station
WHERE
    REGEXP_LIKE(LOWER(city), '^[aeiou]');