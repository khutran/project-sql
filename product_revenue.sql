-- =====================================================================
-- Task 3.140: Tính tổng doanh thu theo mã sản phẩm
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Tính tổng doanh thu (quantityOrdered * priceEach), làm tròn 2 chữ số thập phân
SELECT productCode, 
       ROUND(SUM(quantityOrdered * priceEach), 2) AS productCodeRevenue
FROM orderdetails
GROUP BY productCode;
