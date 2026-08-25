-- =====================================================================
-- Task 1.90: Đọc hiểu câu truy vấn mẫu và viết câu truy vấn mới
-- =====================================================================

-- ---------------------------------------------------------------------
-- Subtask 1: Đọc hiểu câu lệnh lấy tên phòng ban
-- ---------------------------------------------------------------------
SELECT dept_name FROM departments;

/* Ý nghĩa: Lấy ra danh sách tên của tất cả các phòng ban (dept_name) từ bảng phòng ban (departments). */


-- ---------------------------------------------------------------------
-- Subtask 2: Đọc hiểu câu lệnh tính tổng lương theo nhân viên
-- ---------------------------------------------------------------------
SELECT emp_no, SUM(salary) FROM salaries GROUP BY emp_no;

/* Ý nghĩa: Tính tổng toàn bộ tiền lương (SUM(salary)) đã nhận của từng nhân viên từ bảng salaries, được nhóm theo mã số nhân viên (emp_no). */


-- ---------------------------------------------------------------------
-- Subtask 3: Đọc hiểu câu lệnh lọc theo ngày kết thúc
-- ---------------------------------------------------------------------
SELECT * FROM dept_emp WHERE to_date > NOW();

/* Ý nghĩa: Lấy ra toàn bộ thông tin của các nhân viên có ngày hết hạn hợp đồng (to_date) lớn hơn thời điểm hiện tại (NOW()) - tức là các nhân viên hiện tại đang còn làm việc.
   Lưu ý: Bảng 'employees' gốc trong cơ sở dữ liệu không chứa cột 'to_date' (cột này nằm ở các bảng như 'dept_emp', 'salaries', 'titles'). Do đó, câu lệnh chuẩn xác được điều chỉnh chạy trên bảng 'dept_emp'. */


-- ---------------------------------------------------------------------
-- Subtask 4: Sửa đổi keyword đơn giản để tạo ra các câu truy vấn mới
-- ---------------------------------------------------------------------

-- Câu truy vấn mới 1: Lấy danh sách phòng ban và sắp xếp theo bảng chữ cái
SELECT dept_name FROM departments ORDER BY dept_name ASC;

/* Ý nghĩa: Lấy danh sách tên phòng ban từ bảng departments và sắp xếp thứ tự tăng dần từ A đến Z (ORDER BY dept_name ASC). */


-- Câu truy vấn mới 2: Thay hàm SUM thành hàm AVG để tính lương trung bình
SELECT emp_no, AVG(salary) FROM salaries GROUP BY emp_no;

/* Ý nghĩa: Tính mức lương trung bình (AVG(salary)) của từng nhân viên từ bảng salaries, nhóm theo mã số nhân viên (emp_no). */


-- Câu truy vấn mới 3: Thay đổi lọc ngày hết hạn thành lọc ngày thuê (hire_date)
SELECT * FROM employees WHERE hire_date > '2000-01-01';

/* Ý nghĩa: Lấy ra tất cả thông tin của các nhân viên được tuyển dụng (hire_date) sau ngày 01/01/2000. */
