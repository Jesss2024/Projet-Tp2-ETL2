-- Modifier Le pays du client 'ALFKI'
UPDATE Customers
SET Country = 'ALGERIA', -- Modifier le nom du contact
    Phone = '(514) 555-7890'
WHERE CustomerID = 'ALFKI';
-- Insérer des clients dans la table Customers
INSERT INTO [dbo].[Customers] (CustomerID, CompanyName, ContactName, ContactTitle, [Address], City, PostalCode, Country, Phone)
VALUES ('C0001', 'Company A', 'John Doe', 'Sales Manager', '123 Main St', 'Montreal', 'H1A 1A1', 'Canada', '(514) 555-1234');

--NOUVEAU PRODUIT
INSERT INTO [dbo].[Products] ( ProductName, CategoryID, UnitPrice)
VALUES ( 'Nouveau Produit B', 2, 40.0000)

--inserer une nouvelle commande au nom du client dont le CustomerID = 'ALFKI' plus les details de cette commande
INSERT INTO [NORTHWND].[dbo].[Orders] (
    [CustomerID], 
    [EmployeeID], 
    [OrderDate], 
    [RequiredDate], 
    [ShippedDate], 
    [ShipVia], 
    [Freight], 
    [ShipName], 
    [ShipAddress], 
    [ShipCity], 
    [ShipRegion], 
    [ShipPostalCode], 
    [ShipCountry]
) 
VALUES (
    'ALFKI',           -- CustomerID
    8,                 -- EmployeeID
    '1997-02-14', -- OrderDate
    '1997-02-14', -- RequiredDate
    '1997-02-14', -- ShippedDate
    2,                 -- ShipVia
    68.6600,           -- Freight (corrigé : point décimal)
    'Ricardo Adocicados Av. Copacabana', -- ShipName (corrigé : suppression de tabulation)
    '26',              -- ShipAddress
    'Rio de Janeiro',  -- ShipCity
    'JJ',              -- ShipRegion
    '02389-890',       -- ShipPostalCode
    'Brazil'           -- ShipCountry
);
INSERT INTO [NORTHWND].[dbo].[Order Details] (
    [OrderID], 
    [ProductID], 
    [UnitPrice], 
    [Quantity], 
    [Discount]
)
VALUES(
11078,
1,
9999999,
10,
0
)

