SELECT 
    c.CustomerID,c.CustomerKey,p.ProductKey,
    SUM(fs.[Montant Total]) AS TotalSales
FROM 
    [DWNorthwindSales].[dbo].[FactSales] fs
JOIN 
    [DWNorthwindSales].[dbo].[DimCustomers] c
ON 
    fs.CustomerKey = c.CustomerKey
JOIN 
    [DWNorthwindSales].[dbo].[DimProducts] p
ON 
    fs.ProductKey = p.ProductKey
GROUP BY 
    c.CustomerID,c.CustomerKey, p.ProductKey
ORDER BY 
    CustomerId;