/*
2 - Country Codes

A company wants to contact each of its customers regarding the policy changes. They have international customers, but
their database does not include country codes with their phone numbers.

There are two tables in the database: customers and country_codes. The first table contains details of every customer
including customer_id, name, phone_number, and country. The second table contains the country code for every country.

Write a query to retrieve a list of all customers ids, names, and phone numbers, with their country codes concatenated
with their phone numbers. Sort the output in the order of their customer_id.

Note: The phone number should be in the following format: +COUNTRY_CODE PHONENUMBER (With spaces).

SCHEMA

There are two tables in the database: customers and country_codes.

--------------------------------------------------------------------------------------------------
                                            customers
--------------------------------------------------------------------------------------------------
Name        | Type    | Description
--------------------------------------------------------------------------------------------------
customer_id | INTEGER | This is unique customer id. It is the primary key.
--------------------------------------------------------------------------------------------------
name        | STRING  | This name of the customer having [1, 20] characters.
--------------------------------------------------------------------------------------------------
phone_number| STRING  | The phone number of the customer having [6, 13] characters.
--------------------------------------------------------------------------------------------------
country     | STRING  | The country of the customer. It is a foreign key taken from country_codes.
--------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------
                                            country_codes
--------------------------------------------------------------------------------------------------
Name        | Type    | Description
--------------------------------------------------------------------------------------------------
country     | STRING  | This is the name of the country. It is the primary key.
--------------------------------------------------------------------------------------------------
country_code| STRING | This is the country code of this country.
--------------------------------------------------------------------------------------------------


Sample Data Tables

--------------------------------------------------------------------------------------------------
                                            customers
--------------------------------------------------------------------------------------------------
customer_id | name    | phone_number | country
--------------------------------------------------------------------------------------------------
1           | John    | 1234567890   | USA
--------------------------------------------------------------------------------------------------
2           | Mary    | 1234567891   | USA
--------------------------------------------------------------------------------------------------
3           | Peter   | 1234567892   | USA
--------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------
                                            country_codes
--------------------------------------------------------------------------------------------------
country     | country_code
--------------------------------------------------------------------------------------------------
USA         | 1
--------------------------------------------------------------------------------------------------
India       | 91
--------------------------------------------------------------------------------------------------


Sample Output

1 John +11234567890
2 Mary +11234567891
3 Peter +11234567892

*/

SELECT
    customer_id
  , name,
  , CONCAT('+', country_code, '', phone_number) AS phone_number
FROM
    customers
INNER JOIN
    country_codes
ON
    customers.country = country_codes.country
ORDER BY
    customer_id;
