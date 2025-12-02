/*SELECT salesman_id, name, city, commission FROM salesman WHERE ( city ='Paris' OR city = 'Rome');*/

/*SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM orders 
WHERE purch_amt BETWEEN 500 AND 4000 
AND purch_amt NOT IN ( 948.5 , 1983.43 )*/

/*SELECT customer.cust_name, customer.city, salesman.name, salesman.city AS ville_vendeur, salesman.commission
FROM customer 
INNER JOIN salesman ON customer.salesman_id = salesman.salesman_id
WHERE salesman.commission > 0.12;*/

/*SELECT orders.ord_no, orders.ord_date, orders.purch_amt, customer.cust_name, customer.grade, salesman.name, salesman.commission
FROM orders INNER JOIN customer INNER JOIN salesman
ON orders.customer_id = customer.customer_id AND orders.salesman_id = salesman.salesman_id;*/

/*SELECT * , salesman.city AS ville_vendeur FROM orders
INNER JOIN customer USING(customer_id)
INNER JOIN salesman USING(salesman_id);*/

/*SELECT customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt FROM customer 
INNER JOIN orders ON customer.customer_id = orders.customer_id
ORDER BY orders.ord_date ASC*/
