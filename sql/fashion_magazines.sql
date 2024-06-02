--Start the select statement
SELECT
c.customer_name AS Customer,
printf("$%.2f", SUM(s.price_per_month * s.subscription_length)) AS 'Amount Due' --This was horrible to figure out.

--We want this frm the orders table using the alias 'o' to ease repeated typing.
FROM orders o

--Start the JOIN statements to combine all the needed tables and allow the select statements to make sense.
JOIN customers c ON o.customer_id = c.customer_id
JOIN subscriptions s ON o.subscription_id = s.subscription_id

--The conditions that we need to meet.
WHERE o.order_status = 'unpaid' AND s.description = 'Fashion Magazine'

--Group by statement.
GROUP BY c.customer_name;