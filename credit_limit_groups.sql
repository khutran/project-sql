-- =====================================================================
-- Task 3.160: Thông tin hạn mức và phân nhóm khách hàng
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Phân nhóm khách hàng theo creditLimit (>100K: 'Cao', >40K: 'Trung bình', còn lại: 'Thấp')
-- Sắp xếp theo creditLimit giảm dần (DESC)
SELECT customerNumber, 
       customerName, 
       creditLimit,
       CASE 
           WHEN creditLimit > 100000 THEN 'Cao'
           WHEN creditLimit > 40000 THEN 'Trung bình'
           ELSE 'Thấp'
       END AS creditLimitGroup
FROM customers
ORDER BY creditLimit DESC;
