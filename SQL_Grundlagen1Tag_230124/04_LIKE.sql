-- LIKE - im WHERE statt Vergleichsoperator; Filtern nach "ungenauen" Eingaben

-- "%" => egal welches Symbol, egal wieviele davon
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE 'B%'

-- " _ " => egal welches Symbol, aber NUR EINS
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '_r%'

-- "[]" => alle Symbole wählen, die gültig sein sollen, an dieser EINEN Stelle
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[012345]%'

-- Geht auch mit Buchstaben
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '[ABCD]%'

-- "[^]" => alles was in den Klammern drin steht, soll nicht drankommen
SELECT * FROM Customers
WHERE CompanyName LIKE '[^ABCD]%'

-- "[x-y]" => kürzere Schreibweise zu [012345]%
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[0-5]%'

-- Sonderfälle
-- % => Prozentzeichen ausgeben lassen
SELECT * FROM Customers
WHERE CompanyName LIKE '%[%]%'

-- '' => Hochkomma ausgeben lassen
SELECT * FROM Customers
WHERE CompanyName LIKE '% '' %'

-- 1. Alle Ansprechpartner (ContactNames) die im JobTitel "Manger" haben
-- > Tabelle: (Customers)
SELECT * FROM Customers