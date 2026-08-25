-- =====================================================================
-- Task: In ra các thông tin của nhân viên có chức vụ 'Sales Rep'
-- =====================================================================

-- Chọn cơ sở dữ liệu classicmodels
USE classicmodels;

-- Truy vấn thông tin gồm mã nhân viên, họ tên (nối lastName & firstName) và chức vụ
SELECT employeeNumber, 
       CONCAT(firstName, ' ', lastName) AS fullName, 
       jobTitle
FROM employees
WHERE jobTitle = 'Sales Rep';
