-- Question 1
-- Show the total payment amount for each payment date
-- Sort by payment date descending and limit to 5 latest dates
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
-- Find the average credit limit of each customer
-- Display customer name, country, and average credit limit
SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3
-- Find the total price of products ordered
-- Display product code, quantity ordered, and total price
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
-- Find the highest payment amount for each check number
-- Display check number and highest amount paid
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
