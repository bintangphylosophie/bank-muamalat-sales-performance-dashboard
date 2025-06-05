SELECT
  c.CustomerEmail,
  c.CustomerCity,
  o.Date,
  o.Quantity,
  p.ProdName,
  p.Price,
  pc.CategoryName,
  -- Aggregate total sales per CustomerID
  SUM(p.Price * o.Quantity) OVER (PARTITION BY c.CustomerEmail) AS TotalSalesPerCustomer
FROM
  `bank-muamalat-461606.bank_muamalat_dashboard.c` AS c
JOIN
  `bank-muamalat-461606.bank_muamalat_dashboard.o` AS o
  ON c.CustomerID = o.CustomerID
JOIN
  `bank-muamalat-461606.bank_muamalat_dashboard.p` AS p
  ON o.ProdNumber = p.ProdNumber
JOIN
  `bank-muamalat-461606.bank_muamalat_dashboard.pc` AS pc
  ON p.Category = pc.CategoryID
ORDER BY
    Date ASC, 
    Quantity ASC;
# same query but using CTE
WITH TotalKuantitas AS (
    SELECT
        o.Date AS order_date,
        pc.CategoryName AS category_name,
        p.ProdName AS product_name,
        p.Price AS product_price,
        o.Quantity AS order_qty,
        (p.Price * o.Quantity) AS total_sales,
        c.CustomerEmail AS cust_email,
        c.CustomerCity AS cust_city
    FROM
        `bank-muamalat-461606.bank_muamalat_dashboard.o` AS o
    JOIN
        `bank-muamalat-461606.bank_muamalat_dashboard.c` AS c
        ON o.CustomerID = c.CustomerID
    JOIN
        `bank-muamalat-461606.bank_muamalat_dashboard.p` AS p
        ON o.ProdNumber = p.ProdNumber
    JOIN
        `bank-muamalat-461606.bank_muamalat_dashboard.pc` AS pc
        ON p.Category = pc.CategoryID
)

SELECT
    order_date, 
    category_name, 
    product_name, 
    product_price, 
    order_qty, 
    total_sales, 
    cust_email, 
    cust_city
FROM
    TotalKuantitas
ORDER BY
    order_date ASC, 
    order_qty ASC;
