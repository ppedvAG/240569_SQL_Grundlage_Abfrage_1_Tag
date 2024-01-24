-- WHERE - Filtert die Ergebnismenge nach einem oder mehreren Kriterien

SELECT * FROM Customers
WHERE Country = 'Germany' -- Wichtig Hochkommas aufgrund eines Strings

-- Mit = Operator nur EXAKTE Treffer
SELECT * FROM Customers
WHERE City = 'Paris'

-- WHERE mehrerer Vergleichsoperatoren prüfen
-- >, >=, <, <=, =, !=, <>
SELECT * FROM Orders
WHERE Freight > 100
ORDER BY Freight --> ORDER BY steht immer am Ende!

SELECT * FROM Customers
WHERE Country != 'Germany'

-- Mehr als eine Bedingung filtern möchte... AND oder OR
SELECT * FROM Customers
WHERE Country = 'France' OR  Country = 'Brazil'

SELECT * FROM Customers
WHERE Country = 'France' OR
Country = 'Brazil' OR
Country = 'Austria' OR
Country = 'Germany'

-- => IN Operator
SELECT * FROM Customers
WHERE Country IN('France', 'Brazil', 'Austria', 'Germany')

SELECT * FROM Orders 
WHERE Freight >= 100 and Freight <= 500

-- BETWEEN gibt eien Reichweite an, Grenzwerte mit inbegriffen
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 500 --AND CustomerID = 'RICSU'

-- Aufgaben:
-- 1. Alle Bestellungen (Orders) die nach Deutschland gingen
-- Spalte: ShipCountry
SELECT * FROM Orders
WHERE ShipCountry = 'Germany'

-- 2. Alle Kunden aus Deutschland oder Frankreich, die aus Berlin oder Paris sind
--> Tabelle: Customers
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'France' AND City = 'Berlin' OR City = 'Paris'

-- 3. Alle Kunden die eine Fax Nummer hinterlegt haben
--> Tabelle: Customers
SELECT * FROM Customers

SELECT Fax FROM Customers
WHERE Fax != 'NULL'

-- Lösung Nr.2
SELECT Fax FROM Customers
WHERE Fax IS NOT NULL