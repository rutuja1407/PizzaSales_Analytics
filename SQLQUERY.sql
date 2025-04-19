  Select * from pizza_sales

  select SUM(total_price) AS Total_Revenue from pizza_Sales

  Select SUM(total_price)/ COUNT(DISTINCT order_id) AS average_order_value From pizza_sales

   Select SUM(quantity) As total_pizzas from pizza_sales

   Select COUNT(DISTINCT order_id) As total_orders from pizza_sales

   Select CAST(SUM(quantity) As DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) As DECIMAL(10,2)) from pizza_sales



  select DATENAME(Month, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
  GROUP BY DATENAME(Month, order_date)
  ORDER BY Total_orders DESC
 
  select DATENAME(Month, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
  GROUP BY DATENAME(Month, order_date)
  ORDER BY Total_orders DESC

  Select pizza_category, SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS PCT
  from pizza_sales
  GROUP BY pizza_category

  Select pizza_size,CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_sales, CAST(SUM(total_price)*100 / 
  (Select sum(total_price) from pizza_sales   WHERE DATEPART(quarter, order_date)1) AS DECIMAL(10,2)) AS PCT
  pizza_sales
  WHERE DATEPART(quarter, order_date) = 1
  GROUP BY pizza_size
  ORDER BY PCT DESC


  SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
  GROUP BY pizza_name
  ORDER BY Total_Revenue DESC



