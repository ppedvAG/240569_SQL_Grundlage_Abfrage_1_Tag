/*

	Datentypen in 3 große Gruppen:

	Charakter/String Datentypen:
	char(10) = 'Hallo     ' = 10 Byte Speicherplatz
	nchar(10) -> Pro Zeichen jeweils 2 Byte => 20 Byte Speicherplatz

	varchar(10) = 'Hallo' = 5 Byte Speicherplatz
	nvarchar(10) -> Pro Zeichen 2 Byte = 20 Byte Speicherplatz

	Legacy: text --> VARCHAR(max) = bis 2GB Speicherplatz
	varchar(8000) sonst maximum
	nvarchar(4000)



	Numerischen Datentypen:

	tinyint = 8 bit bis 255
	smallint = 16 bit bis zu 32k
	int = 32 bit bis zu 2,14 Mrd
	bigint = 64 Bit bis zu ...

	(keine boolschen Werte)
	bit = 1 oder 0 (true = 1, false = 0)

	decimal(x, y) = x Ziffern gesamt, davon sind y Nachkommastellen
	decimal(10,2) = 10 Ziffern insgesamt, davon sind aber 2 Nachkommastellen
	float
	money


	Datum/Zeit Datentypen:
	time = 00h 00m 00s
	date = YYYY/MM/DD
	datetime = date + time bis in Millisekunden
	datetime = YYYY/MM/DD 00h:00m:00s.000ms
	datetime2 = bis Nanosekunden
	smalldatetime = präzise bis Sekunden bereich

*/

SELECT * FROM Orders
-- Selbsterstelle Ergebnismenge bezüglich Datumsformatierung
SELECT CAST(OrderDate AS date) as BestellDatum, CAST(ShippedDate AS date),
CAST (RequiredDate as date), RequiredDate as AltesDatum
FROM Orders