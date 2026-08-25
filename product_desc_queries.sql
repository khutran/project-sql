-- =====================================================================
-- Task 2.50: Truy vấn toàn bộ thông tin sản phẩm sắp xếp theo giá mua giảm dần
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Truy vấn toàn bộ thông tin sản phẩm sắp xếp theo buyPrice giảm dần (DESC)
SELECT *
FROM products
ORDER BY buyPrice DESC;
