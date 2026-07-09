SELECT VERSION();

CREATE DATABASE library_db;

USE library_db;

CREATE TABLE admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

SHOW TABLES;

INSERT INTO admin (username, password)
VALUES ('admin', 'admin123');

SELECT * FROM admin;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    quantity INT NOT NULL,
    available INT NOT NULL
);

DESCRIBE books;

INSERT INTO books(book_id, title, author, category, quantity, available)
VALUES
(1,'Core Java', 'Cay S. Horstmann', 'Programming', 10, 10),
(2, 'Database System Concepts', 'Korth', 'Database', 5, 5),
(3, 'Operating System Concepts', 'Silberschatz', 'Operating System', 7, 7);

SELECT * FROM books;

SELECT *
FROM books
WHERE available > 0;

SELECT * FROM books WHERE book_id = 1;

DELETE FROM books WHERE book_id = 12;



UPDATE books
SET title='OOPS Java', author='James', category='Synopsis', quantity=20, available=89
WHERE book_id=1;

UPDATE books
SET available = available - 1
WHERE book_id = 1;


CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

DESCRIBE students;

INSERT INTO students(name, department, phone, email)
VALUES
('Rahul', 'CSE', '9876543210', 'rahul@gmail.com'),
('Priya', 'ECE', '9876543211', 'priya@gmail.com');

SELECT * FROM students;

SELECT * FROM students
WHERE student_id = 1;

UPDATE students
SET name = 'Raju',
    department = 'civil',
    phone = '321654987',
    email = 'raju@gmail.com'
WHERE student_id = 1;

DELETE FROM students
WHERE student_id = 4;

CREATE TABLE issued_books (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    student_id INT NOT NULL,
    issue_date DATE NOT NULL,
    return_date DATE,
    fine DOUBLE DEFAULT 0,
    status VARCHAR(20) DEFAULT 'Issued',

    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

DESCRIBE issued_books;

SELECT * FROM issued_books;

SELECT book_id, title, available
FROM books
WHERE book_id = 1;

SELECT * FROM issued_books WHERE issue_id = 7;

UPDATE issued_books
SET issue_date = DATE_SUB(CURDATE(), INTERVAL 20 DAY)
WHERE issue_id = 9;

SELECT
    ib.issue_id,
    b.title,
    s.name,
    ib.issue_date
FROM issued_books ib
JOIN books b
ON ib.book_id = b.book_id
JOIN students s
ON ib.student_id = s.student_id
WHERE ib.status = 'Issued';


SELECT
    ib.issue_id,
    b.title,
    s.name,
    ib.return_date,
    ib.fine
FROM issued_books ib
JOIN books b
ON ib.book_id = b.book_id
JOIN students s
ON ib.student_id = s.student_id
WHERE ib.status = 'Returned';


SELECT
    ib.issue_id,
    s.name,
    b.title,
    ib.issue_date
FROM issued_books ib
JOIN students s
ON ib.student_id = s.student_id
JOIN books b
ON ib.book_id = b.book_id
WHERE ib.status = 'Issued'
AND DATEDIFF(CURDATE(), ib.issue_date) > 15;


SELECT SUM(fine) AS total_fine
FROM issued_books;


SELECT COUNT(*) AS total_books
FROM books;

SELECT COUNT(*) AS total_students
FROM students;

