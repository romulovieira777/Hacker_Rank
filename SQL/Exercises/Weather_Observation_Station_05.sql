SELECT
	city
  , length_city 
FROM
	(SELECT a.*, rownum r FROM (SELECT LENGTH(city) length_city, city FROM station
	ORDER BY length_city, city)a)
WHERE
	r IN (1, (SELECT COUNT(*) FROM station));
