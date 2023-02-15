SELECT
	DISTINCT(city)
FROM
	station
WHERE
	city RLIKE '^[^AEIOU]'
AND
	city RLIKE '[^AEIOU]$'
GO