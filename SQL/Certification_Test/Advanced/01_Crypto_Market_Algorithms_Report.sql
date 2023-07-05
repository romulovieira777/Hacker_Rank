/*
1 - Crypto Market Algorithms Report

A number of algorithms are used to mine cryptocurrencies. As part of a comparison, create a query to return a list of
algorithms and their volumes for each quarter of the year 2020.

The result should be in the following format: Algorithm name, Q1, Q2, Q3, Q4 transactions.

    - Q1 through Q4 contain the sums of transactions volumes for the algorithm for each calendar quarter of 2020 precise
    to 6 places after the decimal.
    - Results should be sorted ascending by algorithm name.


SCHEMA

There are two tables:

-----------------------------------------------------------
                    coins
-----------------------------------------------------------
name      | type         | description
-----------------------------------------------------------
code      | VARCHAR(4)   | Coin code
-----------------------------------------------------------
name      | VARCHAR(64)  | Coin name
-----------------------------------------------------------
algorithm | varchar(128) | Cryptocurrency algorithm name
-----------------------------------------------------------


-----------------------------------------------------------
                    transactions
-----------------------------------------------------------
name      | type         | description
-----------------------------------------------------------
coin_code | VARCHAR(4)   | Coin code
-----------------------------------------------------------
dt        | VARCHAR(19)  | Transaction timestamp
-----------------------------------------------------------
volume    | DECIMAL(11,6)| Transaction volume
-----------------------------------------------------------

*/
SELECT
    c.algorithm,
    ROUND(SUM(CASE WHEN MONTH(t.dt) IN (1,2,3) THEN t.volume ELSE 0 END), 6)    AS Q1,
    ROUND(SUM(CASE WHEN MONTH(t.dt) IN (4,5,6) THEN t.volume ELSE 0 END), 6)    AS Q2,
    ROUND(SUM(CASE WHEN MONTH(t.dt) IN (7,8,9) THEN t.volume ELSE 0 END), 6)    AS Q3,
    ROUND(SUM(CASE WHEN MONTH(t.dt) IN (10,11,12) THEN t.volume ELSE 0 END), 6) AS Q4
FROM
    coins c
INNER JOIN
    transactions t
ON
    c.code = t.coin_code
WHERE
    YEAR(t.dt) = 2020
GROUP BY
    c.algorithm
ORDER BY
    c.algorithm;
