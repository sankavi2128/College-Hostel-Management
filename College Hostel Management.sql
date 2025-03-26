-- create database

create database college_hostels;
show databases;
use college_hostels;

-- create table

CREATE TABLE warden (
    warden_id INT PRIMARY KEY,
    warden_name VARCHAR(100) NOT NULL
);
drop table warden;
INSERT INTO warden (warden_id, warden_name) VALUES
(201, 'Rajesh Kumar'),
(202, 'Anita Sharma'),
(203, 'Vikram Singh'),
(204, 'Pooja Mehta'),
(205, 'Amit Verma' ),
(206, 'Neha Iyer'),
(207, 'Siddharth Rao'),
(208, 'Kavita Patel'),
(209, 'Rohan Das'),
(210, 'Divya Joshi'),
(211, 'Arjun Malhotra'),
(212, 'Simran Kaur'),
(213, 'Manish Gupta'),
(214, 'Swati Nair'),
(215, 'Karan Yadav'),
(216, 'Ritika Sharma'),
(217, 'Harsh Jain'),
(218, 'Sneha Reddy'),
(219, 'Yash Dubey'),
(220, 'Priya Singh');

CREATE TABLE Hostel (
    hostel_id INT PRIMARY KEY ,
    hostel_name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    warden_id INT NOT NULL,
    CONSTRAINT fk_hostel FOREIGN KEY (warden_id) REFERENCES Warden(warden_id)
);
INSERT INTO hostel (hostel_id, hostel_name, address, warden_id) VALUES
(101, 'Sunrise Hostel', '123 Main St, Chennai', 201),
(102, 'Greenfield Hostel', '45 Park Ave, Chennai', 202),
(103, 'BlueSky Hostel', '78 College Rd, Coimbatore', 203),
(104, 'Silver Nest Hostel', '12 Lakeview St, Madurai', 204),
(105, 'Royal Residency', '56 Market St, Trichy', 205),
(106, 'Hilltop Hostel', '90 Gandhi Nagar, Salem', 206),
(107, 'River View Hostel', '23 Marina Beach Rd, Chennai', 207),
(108, 'Elite Hostel', '34 Anna Salai, Chennai', 208),
(109, 'Golden Nest Hostel', '67 MG Road, Bangalore', 209),
(110, 'Palm Grove Hostel', '89 Residency Rd, Hyderabad', 210),
(111, 'Sunset Villa Hostel', '101 Nelson St, Coimbatore', 211),
(112, 'Ocean Breeze Hostel', '55 Beach Rd, Pondicherry', 212),
(113, 'Maple Leaf Hostel', '77 Green St, Bangalore', 213),
(114, 'Skyline Hostel', '102 Mount Rd, Chennai', 214),
(115, 'Evergreen Hostel', '39 Park Lane, Coimbatore', 215),
(116, 'Serene Stay Hostel', '18 Rajaji Rd, Trichy', 216),
(117, 'Horizon Hostel', '45 Gandhi St, Madurai', 217),
(118, 'Grand View Hostel', '76 Sunset Blvd, Hyderabad', 218),
(119, 'Crystal Lake Hostel', '112 Pearl St, Pondicherry', 219),
(120, 'Metro City Hostel', '99 Nehru St, Bangalore', 220);

CREATE TABLE Student (
    student_id INT PRIMARY KEY ,
    student_name VARCHAR(100) NOT NULL,
    father_name VARCHAR(100) NOT NULL,
    mother_name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    dob DATE NOT NULL,
    gender VARCHAR(15) NOT NULL,
    contact_no VARCHAR(100) NOT NULL,
    hostel_id INT NOT NULL,
    CONSTRAINT fk_student FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);
INSERT INTO student (student_id, student_name, father_name, mother_name, age, DOB, gender, contact_no, hostel_id) VALUES
(1, 'Amit Kumar', 'Rajesh Kumar', 'Sunita Kumar', 19, '2006-02-15', 'Male', '9876543210', 101),
(2, 'Priya Sharma', 'Suresh Sharma', 'Anita Sharma', 20, '2005-06-22', 'Female', '9876543211', 102),
(3, 'Rahul Singh', 'Mahesh Singh', 'Meena Singh', 18, '2007-01-10', 'Male', '9876543212', 103),
(4, 'Sneha Verma', 'Dinesh Verma', 'Kavita Verma', 21, '2004-09-18', 'Female', '9876543213', 104),
(5, 'Vikram Rao', 'Suraj Rao', 'Lata Rao', 22, '2003-07-05', 'Male', '9876543214', 105),
(6, 'Anjali Yadav', 'Ravi Yadav', 'Poonam Yadav', 19, '2006-12-12', 'Female', '9876543215', 106),
(7, 'Siddharth Mehta', 'Amit Mehta', 'Neeta Mehta', 20, '2005-08-30', 'Male', '9876543216', 107),
(8, 'Pooja Iyer', 'Ganesh Iyer', 'Radha Iyer', 18, '2007-05-20', 'Female', '9876543217', 108),
(9, 'Rohan Das', 'Vikas Das', 'Savita Das', 21, '2004-03-25', 'Male', '9876543218', 109),
(10, 'Kavya Nair', 'Arun Nair', 'Lakshmi Nair', 19, '2006-11-17', 'Female', '9876543219', 110),
(11, 'Arjun Patel', 'Bhavesh Patel', 'Rita Patel', 22, '2003-04-29', 'Male', '9876543220', 111),
(12, 'Simran Kaur', 'Harpreet Kaur', 'Manjeet Kaur', 20, '2005-07-13', 'Female', '9876543221', 112),
(13, 'Yash Dubey', 'Sanjay Dubey', 'Sarla Dubey', 18, '2007-02-07', 'Male', '9876543222', 113),
(14, 'Neha Reddy', 'Krishna Reddy', 'Sujatha Reddy', 21, '2004-10-15', 'Female', '9876543223', 114),
(15, 'Manish Gupta', 'Alok Gupta', 'Seema Gupta', 19, '2006-06-27', 'Male', '9876543224', 115),
(16, 'Swati Joshi', 'Vivek Joshi', 'Megha Joshi', 20, '2005-09-09', 'Female', '9876543225', 116),
(17, 'Karan Malhotra', 'Ramesh Malhotra', 'Usha Malhotra', 18, '2007-03-14', 'Male', '9876543226', 117),
(18, 'Divya Sharma', 'Rohit Sharma', 'Anjali Sharma', 21, '2004-12-08', 'Female', '9876543227', 118),
(19, 'Harsh Jain', 'Manoj Jain', 'Poonam Jain', 22, '2003-05-19', 'Male', '9876543228', 119),
(20, 'Ritika Verma', 'Ashok Verma', 'Sunita Verma', 19, '2006-07-11', 'Female', '9876543229', 120);

CREATE TABLE Room (
    room_id INT PRIMARY KEY ,
    room_no VARCHAR(10) NOT NULL,
    capacity INT CHECK (capacity > 0),
    hostel_id INT NOT NULL,
    CONSTRAINT fk_room FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);
INSERT INTO room (room_id, room_no, capacity, hostel_id) VALUES
(1, 'A101', 3, 101),
(2, 'A102', 2, 101),
(3, 'A103', 4, 102),
(4, 'A104', 3, 102),
(5, 'B201', 2, 103),
(6, 'B202', 3, 103),
(7, 'B203', 4, 104),
(8, 'B204', 2, 104),
(9, 'C301', 3, 105),
(10, 'C302', 4, 105),
(11, 'C303', 2, 106),
(12, 'C304', 3, 106),
(13, 'D401', 4, 107),
(14, 'D402', 3, 107),
(15, 'D403', 2, 108),
(16, 'D404', 3, 108),
(17, 'E501', 4, 109),
(18, 'E502', 2, 109),
(19, 'E503', 3, 110),
(20, 'E504', 4, 110);

CREATE TABLE Mess (
    mess_id INT PRIMARY KEY ,
    student_id INT NOT NULL,
    menu VARCHAR(15) NOT NULL,
    monthly_charge DECIMAL(10,2) CHECK (monthly_charge >= 0),
    CONSTRAINT fk_mess FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
INSERT INTO mess (mess_id, student_id, menu, monthly_charge) VALUES
(1, 1, 'Veg', 3500),
(2, 2, 'Non-Veg', 4000),
(3, 3, 'Veg', 3500),
(4, 4, 'Veg', 3500),
(5, 5, 'Non-Veg', 4000),
(6, 6, 'Veg', 3500),
(7, 7, 'Non-Veg', 4000),
(8, 8, 'Veg', 3500),
(9, 9, 'Non-Veg', 4000),
(10, 10, 'Veg', 3500),
(11, 11, 'Non-Veg', 4000),
(12, 12, 'Veg', 3500),
(13, 13, 'Veg', 3500),
(14, 14, 'Non-Veg', 4000),
(15, 15, 'Veg', 3500),
(16, 16, 'Non-Veg', 4000),
(17, 17, 'Veg', 3500),
(18, 18, 'Non-Veg', 4000),
(19, 19, 'Veg', 3500),
(20, 20, 'Non-Veg', 4000);

CREATE TABLE Fee_Payment (
    payment_id INT PRIMARY KEY ,
    student_id INT NOT NULL,
    amount DECIMAL(10,2) CHECK (amount >= 0),
    payment_date DATE NOT NULL,
    payment_status VARCHAR(15) NOT NULL,
    hostel_id INT NOT NULL,
    CONSTRAINT fk_fees FOREIGN KEY (student_id) REFERENCES Student(student_id),
    CONSTRAINT fk_payment FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);
INSERT INTO fee_payment (payment_id, student_id, amount, payment_date, payment_status, hostel_id) VALUES
(1, 1, 15000, '2025-01-10', 'Paid', 101),
(2, 2, 15000, '2025-01-12', 'Paid', 102),
(3, 3, 15000, '2025-01-15', 'Pending', 103),
(4, 4, 16000, '2025-01-18', 'Paid', 104),
(5, 5, 16000, '2025-01-20', 'Paid', 105),
(6, 6, 14000, '2025-01-22', 'Unpaid', 106),
(7, 7, 15000, '2025-01-25', 'Paid', 107),
(8, 8, 15500, '2025-01-28', 'Paid', 108),
(9, 9, 15000, '2025-02-01', 'Pending', 109),
(10, 10, 16000, '2025-02-05', 'Paid', 110),
(11, 11, 14500, '2025-02-07', 'Paid', 111),
(12, 12, 15000, '2025-02-10', 'Unpaid', 112),
(13, 13, 15500, '2025-02-12', 'Paid', 113),
(14, 14, 15000, '2025-02-15', 'Paid', 114),
(15, 15, 14000, '2025-02-18', 'Pending', 115),
(16, 16, 15000, '2025-02-20', 'Paid', 116),
(17, 17, 16000, '2025-02-22', 'Paid', 117),
(18, 18, 14500, '2025-02-25', 'Unpaid', 118),
(19, 19, 15500, '2025-02-28', 'Paid', 119),
(20, 20, 15000, '2025-03-02', 'Paid', 120);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY ,
    student_id INT NOT NULL,
    date DATE NOT NULL,
    status VARCHAR(15) NOT NULL,
    hostel_id INT NOT NULL,
    CONSTRAINT fk_stud FOREIGN KEY (student_id) REFERENCES Student(student_id),
    CONSTRAINT fk_hos FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);
INSERT INTO attendance (attendance_id, student_id, date, status, hostel_id) VALUES
(1, 1, '2025-03-01', 'Present', 101),
(2, 2, '2025-03-01', 'Present', 102),
(3, 3, '2025-03-01', 'Absent', 103),
(4, 4, '2025-03-01', 'Present', 104),
(5, 5, '2025-03-01', 'Present', 105),
(6, 6, '2025-03-01', 'Absent', 106),
(7, 7, '2025-03-01', 'Present', 107),
(8, 8, '2025-03-01', 'Present', 108),
(9, 9, '2025-03-01', 'Absent', 109),
(10, 10, '2025-03-01', 'Present', 110),
(11, 11, '2025-03-01', 'Present', 111),
(12, 12, '2025-03-01', 'Absent', 112),
(13, 13, '2025-03-01', 'Present', 113),
(14, 14, '2025-03-01', 'Present', 114),
(15, 15, '2025-03-01', 'Absent', 115),
(16, 16, '2025-03-01', 'Present', 116),
(17, 17, '2025-03-01', 'Present', 117),
(18, 18, '2025-03-01', 'Absent', 118),
(19, 19, '2025-03-01', 'Present', 119),
(20, 20, '2025-03-01', 'Present', 120);


-- VIEW TABLE

create view present_attendance 
as
select student_id,attendance_id,date,hostel_id
from attendance
where status='present';
select * from present_attendance ;

create view female_student
as
select student_id, student_name, age, contact_no, hostel_id
from student
where gender='female';
select * from female_student;

create view veg_mess
as
select mess_id, student_id,monthly_charge
from mess
where menu='veg';
SELECT * FROM veg_mess;


-- QUERY

-- Get Student In Hostel

delimiter //
CREATE PROCEDURE GetStudentsInHostel(IN hostel_id INT)
BEGIN
    SELECT * FROM student WHERE hostel_id = hostel_id;
END //
delimiter ;
call GetStudentsInHostel(101);


-- get student attendance

delimiter //
CREATE PROCEDURE GetStudentAttendance(IN student_id INT)
BEGIN
    SELECT * FROM attendance 
    WHERE student_id = student_id;
END //
delimiter ;
call GetStudentAttendance(20);

-- Get Student Details by Hostel ID

DELIMITER //
CREATE PROCEDURE GetStudentsByHostel(IN p_hostel_id INT)
BEGIN
    SELECT * FROM student 
    WHERE hostel_id = p_hostel_id;
END //
DELIMITER ;
CALL GetStudentsByHostel(101);

-- Get Monthly Mess Charge for a Student

DELIMITER //
CREATE PROCEDURE GetMessCharge(IN p_student_id INT)
BEGIN
    SELECT monthly_charge FROM mess
    WHERE student_id = p_student_id;
END//
delimiter ;
call GetMessCharge(10);

-- Get Attendance Report by Date

DELIMITER //
CREATE PROCEDURE GetAttendanceByDate(IN p_date DATE)
BEGIN
    SELECT * FROM attendance 
    WHERE date = p_date;
END //
DELIMITER ;
CALL GetAttendanceByDate('2025-03-01');

-- Get warden by ID

delimiter //
CREATE PROCEDURE GetWardenByID(IN warden_id INT)
BEGIN
    SELECT * FROM warden 
    WHERE warden_id = warden_id;
END //
delimiter ;
call GetWardenByID(201);

-- Get mess details for a student

delimiter //
CREATE PROCEDURE GetMessDetailsByStudent (IN sid INT)
BEGIN
    SELECT * FROM mess 
    WHERE student_id = sid;
END//
delimiter ;
call GetMessDetailsByStudent(12);

-- Get all mess entries

delimiter //
CREATE PROCEDURE GetAllMessEntries()
BEGIN
    SELECT * FROM mess;
END //
delimiter ;
call GetAllMessEntries();

-- Get student by id 

delimiter //
CREATE PROCEDURE GetStudentById
(student_id INT)
BEGIN
    SELECT * FROM student 
    WHERE student_id = student_id;
END //
DELIMITER ;
CALL GetStudentById(2);

-- get payment by student id

delimiter //
CREATE PROCEDURE GetPaymentByStudentId
(student_id INT)
BEGIN
    SELECT * FROM fee_payment
    WHERE student_id = student_id;
END// 
delimiter ;
call GetPaymentByStudentId(12);

-- get total student by hostel

delimiter //
CREATE PROCEDURE GetTotalStudentsByHostel
(hostel_id INT)
BEGIN
    SELECT COUNT(*) AS TotalStudents
    FROM student WHERE hostel_id = hostel_id;
END //
delimiter ;
call GetTotalStudentsByHostel(101);

-- get total fee

delimiter //
 CREATE FUNCTION get_total_fee(student_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_fee INT;
    SELECT SUM(amount) 
    INTO total_fee
    FROM fee_payment
    WHERE student_id = student_id AND payment_status = 'Paid';
    RETURN total_fee;
END //
delimiter ;

SELECT get_total_fee(5) AS Total_Fee;