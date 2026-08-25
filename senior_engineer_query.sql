-- =====================================================================
-- Task 3.40: Tính số nhân viên có vị trí là Senior Engineer
-- =====================================================================

-- Chọn cơ sở dữ liệu employees
USE employees;

-- Tính số nhân viên có vị trí là 'Senior Engineer' (đếm duy nhất theo emp_no)
SELECT COUNT(DISTINCT emp_no) AS tong_nhan_vien
FROM titles
WHERE title = 'Senior Engineer';
