-- product_id is the primary key (column with unique values) of this table.
-- Each row of this table indicates the product name of each product.
 

-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

-- Return the resulting table in any order.

select Product.product_name, Sales.year, Sales.price from Sales inner join Product on Product.product_id = Sales.product_id;