SQL_02_TAL
1)SELECT Item.ItemNum, Item.Category, Item.OnHand, Item.Price, (onHand*0.9) AS Discounted_price
FROM Item;

2)SELECT Customer.CustomerName, Customer.City
FROM Customer
WHERE (Customer.CustomerName) Like "*Gift*";


3) SELECT Description, Item.Price, Item.Category
FROM Item
WHERE (Item.Description) Like "*brain teaser*";


4) SELECT ItemNum, Description
FROM Item
WHERE (Item.Description) Like "*D*";

5) SELECT Customer.CustomerName, Customer.CustomerNum, Rep.RepNum, Rep.FirstName, Rep.LastName
FROM Customer, Rep
WHERE (((Customer.RepNum)=[Rep].[RepNum]));


6) SELECT Item.ItemNum, Item.Description, Orderline.OrderNum
FROM Item, Orderline
ORDER BY Orderline.OrderNum;


7) SELECT OrderNum, OrderDate, Customer.CustomerNum, CustomerName
FROM Orders, Customer
WHERE Orders.CustomerNum= Customer.CustomerNum
AND Orders.OrderDate = #10/13/2015#;


8) SELECT Orders.OrderDate, Orders.OrderNum, OrderLine.NumOrdered
FROM Orders, OrderLine
WHERE (Orders.OrderNum)=Orderline.OrderNum;


9) SELECT Avg(Customer.Balance) AS AvgBalance, Customer.RepNum
FROM Customer, Rep
GROUP BY Customer.RepNum;


10) SELECT OrderLine.OrderNum, OrderLine.NumOrdered
FROM OrderLine;
