/*
The PADS

Generate the following two result sets:

    1 - Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of
        each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D),
        AProfessorName(P), and ASingerName(S).
    2 - Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and
        output them in the following format:

        There are a total of [occupation_count] [occupation]s.
        where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the
        lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered
        alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

Input Format


---------------------
Column     | Type
---------------------
Name       | String |
Occupation | String |
---------------------



The OCCUPATIONS table is described as follows:  Occupation will only contain one of the following values: Doctor,
Professor, Singer or Actor.

Sample Input

An OCCUPATIONS table that contains the following records:


------------------------------------
| Name          | Occupation       |
------------------------------------
Samantha        | Doctor           |
Julia           | Actor            |
Maria           | Actor            |
Meera           | Singer           |
Ashely          | Professor        |
Ketty           | Professor        |
Christeen       | Professor        |
Jane            | Actor            |
Jenny           | Doctor           |
Priya           | Singer           |
------------------------------------


Explanation

The results of the first query are formatted to the problem description's specifications.

The results of the second query are ascendingly ordered first by number of names corresponding to each profession
(2 _<_2<_3<3), and then alphabetically by profession (Doctor < singer, and actor <_ professor).

*/
SELECT
    CONCAT(Name,"(", LEFT(Occupation, 1), ")") AS result
FROM
    OCCUPATIONS
UNION
    SELECT
        CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') AS result
FROM
    OCCUPATIONS
GROUP BY
    Occupation
ORDER BY
    result ASC
GO
