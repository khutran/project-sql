-- =====================================================================
-- Task 3.180: Danh sách sản phẩm có số lượng tồn kho lớn hơn mức trung bình
--             (Viết lại bằng cách gộp truy vấn - Subquery)
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Lọc sản phẩm có quantityInStock > trung bình của toàn kho (sử dụng Subquery)
-- Tính tỷ lệ phần trăm tồn kho so với tổng số lượng tồn kho (sử dụng Subquery)
-- Sắp xếp giảm dần theo tỷ lệ phần trăm đó
SELECT productCode, 
       productName, 
       quantityInStock,
       ROUND((quantityInStock / (SELECT SUM(quantityInStock) FROM products)) * 100, 2) AS stockPercentage
FROM products
WHERE quantityInStock > (SELECT AVG(quantityInStock) FROM products)
ORDER BY stockPercentage DESC;
