-- =====================================================================
-- Task 3.150: Danh sách khách hàng có và không có nhân viên hỗ trợ
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Kiểm tra xem khách hàng có nhân viên hỗ trợ (salesRepEmployeeNumber) không
-- Nếu có: In ra mã nhân viên, Nếu không: In ra 'No salesRep Employee'
SELECT customerNumber, 
       customerName, 
       IFNULL(salesRepEmployeeNumber, 'No salesRep Employee') AS salesRepEmployeeNumber
FROM customers;
