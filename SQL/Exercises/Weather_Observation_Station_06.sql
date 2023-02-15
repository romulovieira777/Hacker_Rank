SELECT
	DISTINCT(city)
FROM
	station
WHERE
	regexp_like(LOWER(city), '^[aeiou]')
GO