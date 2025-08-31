
--SELECT 
--max(Age)
--FROM retail_sales_dataset_1;

--SELECT 
--min(Age)
--FROM retail_sales_dataset_1;

--SELECT 
--*
--FROM retail_sales_dataset_1;

SELECT 

`Transaction ID`,
`Customer ID`,
dayname(`Date`) AS Day_Name,
month(`Date`) AS Month_Number,
year(`Date`) AS Year,
`Date`,

CASE
         WHEN Age BETWEEN 18 AND 30 THEN 'Youth'
         WHEN Age BETWEEN 31 AND 40 THEN 'Adult'
         WHEN Age BETWEEN 41 AND 60 THEN 'Senior'
         ELSE 'Elder'
    END AS Age_Group,
CASE
    WHEN `Total Amount` BETWEEN 0 AND 200 THEN 'Low Spend'
    WHEN `Total Amount` BETWEEN 201 AND 500 THEN 'Medium Spend'
    WHEN `Total Amount` BETWEEN 501 AND 1000 THEN 'High Spend'
    ELSE 'Very High Spend'
END AS Spending_Group,

Gender,
`Total Amount`,
`Product Category`,
`Quantity`

FROM retail_sales_dataset_1

Group by ALL;

