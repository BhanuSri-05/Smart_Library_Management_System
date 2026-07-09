# 📚 Smart Library Management System

A **console-based Smart Library Management System** developed using **Core Java, JDBC, and MySQL**. This application provides an efficient way to manage library operations such as book management, student management, issuing and returning books, fine calculation, and report generation through a menu-driven interface.

---

## 🚀 Features

### 📖 Book Management

* Add a new book
* View all books
* Search book by ID
* Update book details
* Delete book
* Track available copies

### 👨‍🎓 Student Management

* Add a new student
* View all students
* Search student by ID
* Update student details
* Delete student

### 📚 Book Issue & Return

* Issue books to students
* Return issued books
* Update book availability automatically
* Prevent issuing unavailable books

### 💰 Fine Management

* Automatic fine calculation for overdue books
* Fine generated during book return
* View total fine collection

### 📊 Reports

* View all books
* Available books
* Issued books
* Returned books
* Overdue books
* Fine collection report
* Dashboard summary

### 🔐 Admin Login

* Secure login before accessing the system

### ✅ Additional Features

* JDBC connectivity with MySQL
* Exception handling
* Input validation
* Layered architecture using DAO pattern
* Menu-driven console interface

---

# 🛠️ Technologies Used

* Core Java
* JDBC
* MySQL
* IntelliJ IDEA
* Object-Oriented Programming (OOP)

---

# 📂 Project Structure

```text
SmartLibraryManagementSystem/
│
├── src/
│   ├── dao/
│   ├── database/
│   ├── exception/
│   ├── menu/
│   ├── model/
│   ├── service/
│   ├── util/
│   └── Main.java
│
├── database/
│   └── library.sql
│
├── screenshots/
│
├── README.md
└── .gitignore
```

---

# 🗄️ Database

The project uses **MySQL** as the backend database.

Main tables include:

* admin
* books
* students
* issued_books

---

# ⚙️ Installation

1. Clone this repository.

```bash
git clone https://github.com/your-username/SmartLibraryManagementSystem.git
```

2. Open the project in IntelliJ IDEA.

3. Import the `library.sql` file into MySQL.

4. Update your database credentials in the database connection class if required.

5. Run the `Main.java` file.

---

# 📸 Screenshots

Add screenshots of the following screens inside the `screenshots` folder:

* Login Screen
* Main Menu
* Book Management
* Student Management
* Issue Book
* Return Book
* Reports
* Dashboard

---

# 🧪 Sample Workflow

1. Admin Login
2. Add Books
3. Add Students
4. Issue Books
5. Return Books
6. Calculate Fine
7. Generate Reports
8. Exit Application

---

# 🎯 Learning Outcomes

This project demonstrates:

* Object-Oriented Programming
* JDBC Database Connectivity
* CRUD Operations
* MySQL Integration
* Exception Handling
* Input Validation
* DAO Design Pattern
* Business Logic Implementation
* Console Application Development

---

# 🔮 Future Enhancements

* Barcode/QR code support
* Email notifications
* Search by title or author
* Multi-admin support
* JavaFX or Swing GUI
* Spring Boot REST API
* Role-based access control

---

# 👩‍💻 Author

**Bhanu Sri**

Core Java | JDBC | MySQL | Software Development

---

## ⭐ If you found this project useful, consider giving it a star!
