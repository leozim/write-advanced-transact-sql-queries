SELECT
	CustomerID,
	CompanyName,
	CONCAT(FirstName, ' ', LastName) AS Name
FROM
	SalesLT.Customer
WHERE
	CustomerID BETWEEN 1 AND 9;

SELECT
	CustomerID,
	CompanyName,
	CONCAT(FirstName, ' ', LastName) AS Name
FROM
	SalesLT.Customer
WHERE
	CustomerID BETWEEN 10 AND 19;
-----------------------------------------------------------------------------------

/* UNION IGNORA VALORES REPETIDOS IGUAL DISTINCT */
/* UNION ALL INCLUE VALORES REPETIDOS, DUPLICADOS */
/* THE ARE TWO RULES WHEN COMBINING RESULT SETS USING UNION:
		* THE NUMBER AND THE ORDER OF THE COLUMNS MUST BE THE SAME
		  IN ALL QUERIES.

		* THE DATA TYPES MUST BE COMPATIBLE.
*/
SELECT
	CustomerID,
	CompanyName,
	CONCAT(FirstName, ' ', LastName) AS Name
FROM
	SalesLT.Customer
WHERE
	CustomerID BETWEEN 1 AND 9
UNION
SELECT
	CustomerID,
	CompanyName,
	CONCAT(FirstName, ' ', LastName) AS Name
FROM
	SalesLT.Customer
WHERE
	CustomerID BETWEEN 10 AND 19;