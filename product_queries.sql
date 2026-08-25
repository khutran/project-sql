-- =====================================================================
-- Task 2.20: Truy vấn thông tin sản phẩm
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Truy vấn thông tin sản phẩm bao gồm tên sản phẩm, giá mua và giá bán
SELECT productName, buyPrice, MSRP
FROM products;
