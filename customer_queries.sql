-- =====================================================================
-- Task 2.30: Truy vấn thông tin khách hàng ở Japan hoặc Singapore
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Truy vấn thông tin khách hàng bao gồm tên và quốc gia của những khách hàng ở Japan hoặc Singapore
SELECT customerName, country
FROM customers
WHERE country = 'Japan' OR country = 'Singapore';
