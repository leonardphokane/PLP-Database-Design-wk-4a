
# SQL query to show the total payment amount for each payment date from payments table.
SELECT 
    payment_date, 
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    payment_date
ORDER BY
    payment_date DESC
LIMIT 5;

# SQL query to find the average credit limit of each customer from customers table.

SELECT 
    customer_name, 
    country, 
    AVG(credit_limit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customer_name, 
    country;

# SQL query to find the total price of products ordered from orderdetails table.

SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM 
    orderdetails
GROUP BY 
    productCode, 
    quantityOrdered;


# SQL query to find the highest payment amount for each check number from payments table.
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
