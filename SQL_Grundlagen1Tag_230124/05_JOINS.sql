-- Joins

-- "verbinden" Datensätze von Tabellen miteinander ins selbe Ergebnisfenster
-- Wichtig!: Ergebnisfenster, NICHT DIE Tabellen!


SELECT * FROM Orders
SELECT * FROM Customers

/*
	SELECT Spalten FROM TabelleA JOIN TabelleB ON TabelleA.Spalte = TabelleB.Spalte
*/

-- Ohne Aliases
SELECT Customers.CompanyName, Orders.* FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- Mit Aliases
SELECT cus.CompanyName, o.* FROM Customers as cus
JOIN Orders as o ON cus.CustomerID = o.CustomerID

-- Selektiert alles von Orders & Customers
-- Wo bei Country "Germany" ist
SELECT cus.*, o.* FROM Customers as cus
INNER JOIN Orders as o ON cus.CustomerID = o.CustomerID
WHERE cus.Country = 'Germany'
ORDER BY cus.CustomerID ASC

-- Übungen:
-- 1. Alle Bestellungen (Orders) die der Mitarbeiter "King" (LastName in Employees)
-- bearbeitet hat
-- Tables: Orders - Employees


-- 2. Alle Bestellungen (Orders) aus Frankreich (Customers), deren Lieferkosten (Freight)
-- über 300 lag
-- Tables: Orders - Customers


-- 3. Welche Produkte (ProductNames in Products) wurden in Austria verkauft
-- Tables: Customers - Orders - Order Details - Products
SELECT TOP 2 * FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID

/* Syntax beim JOIN von Tabellen:
SELECT * FROM  table 1
(INNER, OUTER, LEFT usw.) JOIN table 2 ON   table1.Verknüpfungspunkt = table2.Verknüpfungspunkt
WHERE Bedingung
ORDER BY Bedingung
*/

/* Syntax beim JOIN von mehreren Tabellen:
SELECT * FROM  table 1
(INNER, OUTER, LEFT usw.) JOIN table 2 ON   table1.Feld = table2.feld
JOIN table 3 ON table3.Feld = table2.Feld
...
WHERE Bedingung
ORDER BY Bedingung
*/

-- OUTER JOINS

-- Left/Right JOIN = Zeigt Tabelle A oder B vollständig an (mit der Schnittmenge)
SELECT * FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
-- Customers finden, die noch nie bestellt haben

-- FULL Outer JOIN = LEFT + RIGHT JOIN
SELECT * FROM Customers FULL OUTER JOIN Orders ON Orders.CustomerID = Customers.CustomerID