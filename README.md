# 🏥 Spring MVC Mini Project – CRUD Operation

<p align="center">
  <img src="https://img.shields.io/badge/Java-17-orange"/>
  <img src="https://img.shields.io/badge/SpringMVC-Web-green"/>
  <img src="https://img.shields.io/badge/JSP-Frontend-blue"/>
  <img src="https://img.shields.io/badge/Hibernate-ORM-yellow"/>
  <img src="https://img.shields.io/badge/MySQL-Database-blue"/>
  <img src="https://img.shields.io/badge/Maven-Build-red"/>
</p>

---

## 🚀 Overview

This project is a **Spring MVC-based web application** that performs **CRUD (Create, Read, Update, Delete)** operations.

It simulates a real-world **Hospital Management System**, where users can manage records such as adding, updating, viewing, and deleting data.

---

## 🎯 Features

* ➕ Add new records
* 📄 View all records
* ✏️ Update existing records
* ❌ Delete records
* 🌐 Web-based UI using JSP

---

## 🏗️ Architecture Diagram

<p align="center">
  <img src="images/mvc-architecture.png" width="800"/>
</p>

---

## 🛠️ Tech Stack

* Java
* Spring MVC
* Hibernate
* JSP (Java Server Pages)
* MySQL
* Maven

---

## 📂 Project Structure

```id="9xw2v1"
src/main/java
│
├── controller      # Handles HTTP requests
├── service         # Business logic layer
├── dao             # Data access layer
├── model           # Entity classes
└── config          # Spring configuration
```

---

## 🔄 Application Flow

User → JSP (View) → Controller → Service → DAO → Database → Response

---

## ▶️ How to Run

1. Clone the repository

```bash id="5y8k2m"
git clone https://github.com/Abhisek-Git-01/<your-repo-name>.git
```

2. Import project into IDE (STS / Eclipse)

3. Configure database in `application.properties` or XML config

4. Deploy on server (Tomcat)

5. Access application in browser

```id="d9s8q1"
http://localhost:8080/<project-name>/
```

---

## 📌 Modules

* Doctor Management
* Patient Management *(optional if implemented)*
* Record Handling

---

## 📊 Database Schema

* Tables for storing entity records (e.g., Doctor, Patient)

---

## 🎯 Learning Outcome

* Understood Spring MVC architecture
* Implemented full CRUD operations
* Integrated Hibernate with Spring
* Worked with JSP for frontend

---

## 📌 Future Enhancements

* 🔐 Login & authentication
* 📱 Responsive UI
* 📊 Dashboard & reports
* REST API integration

---

## 🤝 Contributing

Feel free to fork this repository and contribute.

---

## ⭐ Acknowledgement

This project is part of hands-on learning in Spring MVC and web application development.

---
