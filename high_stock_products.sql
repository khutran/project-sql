-- =====================================================================
-- Task 3.170: Danh sách sản phẩm có số lượng tồn kho lớn hơn mức trung bình
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Lọc sản phẩm có quantityInStock > trung bình của toàn kho
-- Tính tỷ lệ phần trăm tồn kho so với tổng số lượng tồn kho (stockPercentage)
-- Sắp xếp giảm dần theo tỷ lệ phần trăm đó
SELECT productCode, 
       productName, 
       quantityInStock,
       ROUND((quantityInStock / 555131) * 100, 2) AS stockPercentage
FROM products
WHERE quantityInStock > 5046.6455
ORDER BY stockPercentage DESC;
