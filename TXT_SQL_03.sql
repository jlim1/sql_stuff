1.
SELECT Sum(Customer.Balance) AS total_balance
FROM Customer;

2.
SELECT Sum(Customer.Balance) AS BalanceTotal, Customer.RepNum
FROM Customer
GROUP BY Customer.RepNum;

3.
SELECT SUM(Customer.Balance) AS Total_Balance, AVG(Customer.Balance) AS [AVG Balance]
FROM Customer
GROUP BY city;

4.
SELECT Customer.City, AVG(Balance) AS [Average Balance], SUM(Balance) AS [Balance per City]
FROM Customer
WHERE Customer.Balance > 
(
SELECT AVG(Balance) AS [avg] 
FROM Customer
)
--GROUP BY City;

5.
SELECT Item.Description, Item.Price
FROM Item
WHERE Item.Price > 
(
	SELECT AVG(Item.Price) FROM Item 
);

6.
SELECT Customer.RepNum, COUNT(*) AS [Total Customers Per Rep, Rep.LastName
FROM Customer, Rep
WHERE Customer.RepNum=Rep.RepNum
ORDER BY Customer.RepNum

7.
SELECT SUM(Balance) AS [Total Customer Balance]
FROM Customer
WHERE City = "Grove" OR City = "Northfield";

8.
SELECT Storehouse, SUM(OnHand) AS [Total OnHand Items]
FROM Item
GROUP BY Storehouse
HAVING Sum(OnHand) > 200;

9.
10.
SELECT CustomerName, COUNT(*) AS [total orders placed]
FROM Orders, Customer
WHERE Customer.CustomerNum = Orders.CustomerNum
GROUP BY CustomerName;
