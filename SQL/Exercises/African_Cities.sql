/*
African Cities

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:


--------------------------------------
              CITY
--------------------------------------
Field        | Type         |
--------------------------------------
ID           | NUMBER       |
Name         | VARCHAR2(17) |
CountryCode  | VARCHAR2(3)  |
District     | VARCHAR2(20) |
Population   | NUMBER       |
--------------------------------------


--------------------------------------
               COUNTRY
--------------------------------------
Field          | Type         |
--------------------------------------
Code           | VARCHAR2(3)  |
Name           | VARCHAR2(44) |
Continent      | VARCHAR2(13) |
Region         | VARCHAR2(25) |
SurfaceArea    | NUMBER       |
IndepYear      | VARCHAR2(5)  |
Population     | NUMBER       |
LifeExpectancy | VARCHAR2(4)  |
GNP            | NUMBER       |

*/

SELECT
    CITY.name AS CITY
FROM
    CITY
INNER JOIN
    COUNTRY
ON
    CITY.CountryCode = COUNTRY.Code
WHERE
    CONTINENT = 'Africa'
GO