USE sql_store;

SELECT 	COUNT(customers.first_name) AS 'number of customers', 
		SUM(points) AS total_points, 
        state
FROM customers
GROUP BY state
HAVING total_points > 3000;
-- HAVING 子句用于在分组后的数据上进行过滤。它通常与 GROUP BY 子句一起使用，作用是对分组后的结果进行条件筛选
