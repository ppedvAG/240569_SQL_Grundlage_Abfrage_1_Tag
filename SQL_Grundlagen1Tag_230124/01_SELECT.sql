/*
Eröffnet Kommentarblock
geht über mehrere Zeilen
*/

-- einzeiliger Kommentar "--"

-- Datenbank ansprechen (per USE Befehl oder per Dropdown Menü)
USE Northwind

-- "*" bedeutet ALLE Spalten die vorhanden sind
SELECT * FROM Orders

SELECT * FROM Customers

-- => Selektiert nur CompanyName, Country & City
SELECT CompanyName, Country, City FROM Customers

-- SQL ist nicht case sensitive
sElEcT cOmPanYNaMe as Unternehmen, cItY

fRoM CusTomErs

-- "Custom" Ausgabe in SQL 
SELECT 100 as Hundert -- => Gibt in einer Spalte, in einer Zeile, in einer Zeile die 100 aus

-- Selektiert 100, 5 und Hallo => 3 Spalten, jeweils 1 Zelle
/*
	Hundert		Fuenf		Hallo
	-----------------------------
	100			5			Hallo
*/

/*
	
-- ORDER BY - Sortiert Ergebnismengen

*/

SELECT * FROM Orders
ORDER BY Freight DESC -- DESC = DESCENDING = absteigend
					  -- ASC = ASCENDING = aufsteigend (standard)

SELECT CompanyName, Country, City FROM Customers
ORDER BY Country DESC, City

SELECT CompanyName, Country, City FROM Customers
ORDER BY Country DESC, City DESC

/*
	
-- TOP X - werden nur die "obersten" X Zeilen ausgegeben

*/
--> SELECT BOT X gibt es nicht
-- Selektiert die ersten 10 Datensätze aus der Tabelle Customers
SELECT TOP 10 CompanyName, City FROm Customers

-- Nur 10% von der Tabelle Customers sehen
-- 91 Rows => 9,1 Rows? (Er rundet dann auf 10 auf)
SELECT TOP 10 PERCENT CompanyName, City FROM Customers

-- Die 20 Bestellungen haben, mit den größten Frachtkosten
SELECT TOP 20 * FROM Orders
ORDER BY Freight DESC

-- Die 20 Bestellungen haben, mit den kleinsten Frachtkosten
SELECT TOP 20 * FROM Orders
ORDER BY Freight


/*
-- DISTINCT - "filtert" Duplikate Ergebniszeilen
*/
SELECT Country FROM Customers

-- Lösung: DISTINCT benutzen um Duplikate rauszufiltern
SELECT DISTINCT Country FROM Customers
--ORDER BY Country DESC

-- Auch mit "TOP" kombinierbar
SELECT DISTINCT TOP 10 Country FROM Customers

/* Uebung: */
-- 1. Die ersten 20 Bestellungen aus der Tabelle "Orders"
-- Anzeigen lassen: OrderID, Freight, CustomerID

-- 2. Die letzten!!! 10% Freight ausgeben lassen aus der Orders
-- tabelle (absteigend)

-- 3. Gebe mir alle Spalten aus "Customers" aus