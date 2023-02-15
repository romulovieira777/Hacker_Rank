SELECT
    name
FROM
    students
WHERE
    marks > 75
ORDER BY
    SUBSTRING(name, LEN(name) -2, 3)
  , id ASC
GO