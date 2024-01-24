-- CREATE / ALTER / DROP - DDL (Data Definition Language)

-- Neue Tabelle anlegen
CREATE TABLE PurchasingOrders
(
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	OrderDate date NOT NULL,
	ProductID int NOT NULL
	-- beliebig viele Felder
)-- ; ggf. semicolon

SELECT * FROM PurchasingOrders

-- Beziehung zwischen PurchasingOrders und Products anlegen über ProductID
ALTER TABLE PurchasingOrders
ADD FOREIGN KEY (ProductID) REFERENCES Products (ProductID)

-- ALTER = Neue Spalten hinzufügen im Nachhinein
ALTER TABLE PurchasingOrders
ADD NeueSpalte VARCHAR(50)

-- Tabelle Loeschen => DROP
DROP TABLE PurchasingOrders

-- Spalte loeschen
ALTER TABLE PurchasingOrders
DROP COLUMN NeueSpalte

/*
-------------------------------------
*/

-- INSERT - Hinzufuegen von Datensaetzen in einer bestehenden Tabelle

-- Alle Spalten befuellen in PurchasingOrders
INSERT INTO PurchasingOrders
VALUES ('20240124', 5)

SELECT * FROM PurchasingOrders

-- Explizit einzelne Spalten befuellen:
INSERT INTO PurchasingOrders (OrderDate, ProductID)
VALUES ('20240124', 3)

-- Das Ergebnis von einer SELECT Abfrage in eine Tabelle speichern
INSERT INTO PurchasingOrders
SELECT GETDATE(), 10

/*
	ID	OrderDate	ProductID
	1	2024-01-24	5
	2	2024-01-24	3 => Loeschen würden
	3	2024-01-24  2

	1	2024-01-24	5
	3	2024-01-24  2
	4	2024-01-24  10 => wie würde er weiter zaehlen?
*/

SELECT * FROM PurchasingOrders

DELETE FROM PurchasingOrders
WHERE ID = 2


-- Wir veraendern von ID=1 die ProductID zu 15
UPDATE PurchasingOrders 
SET ProductID = 15 -- => SET = Setze bei der Spalte XYZ den Wert ein
WHERE ID = 1