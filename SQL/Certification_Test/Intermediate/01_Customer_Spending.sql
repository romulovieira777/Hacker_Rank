/*
List all customers who spent 25% os less than the average amount spent on all invoices. For each customer, display
their name and the amount spent to 6 decimal places. Order the result by the amount spent from high to low.
*/
SELECT
  customer.customer_name              AS customer_name
, ROUND(SUM(invoice.total_price), 6)  AS total_amount_spent
FROM
  customer
INNER JOIN
  invoice
ON
  customer.id = invoice.customer_id
WHERE
  invoice.total_price <= 0.25 * (
  SELECT
    AVG(total_price)
  FROM
    invoice)
GROUP BY
  customer.customer_name
ORDER BY
  total_amount_spent DESC;
