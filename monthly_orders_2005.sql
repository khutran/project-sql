-- =====================================================================
-- Task 3.130: In ra số đơn đặt hàng theo từng tháng trong năm 2005
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Lấy tháng và đếm số lượng đơn hàng trong năm 2005
SELECT MONTH(orderDate) AS month, 
       COUNT(orderNumber) AS numberOfOrder
FROM orders
WHERE YEAR(orderDate) = 2005
GROUP BY MONTH(orderDate)
ORDER BY month;
