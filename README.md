# User Management System Backend

A full-stack User Management System backend built using Laravel.  
This project includes authentication, role-based access, CRUD operations, notifications, and profile management.

---

# Features

- User Authentication using Laravel Sanctum
- Admin & User Roles
- User CRUD Operations
- Protected API Routes
- Profile Update System
- Notification System
- Real-time Form Validation Support
- REST API Architecture

---

# Technology Used

- Laravel
- PHP
- MySQL
- Laravel Sanctum

---

# API Features

## Authentication

- Login
- Logout

## User Management

- Get Users
- Create User
- Update User
- Delete User

## Profile

- My Profile
- Update Profile

## Notifications

- Get Notifications

---

# Setup Instructions

## 1. Clone Repository

```bash
git clone YOUR_BACKEND_REPOSITORY_LINK
```

---

## 2. Go To Project Folder

```bash
cd user-management-backend
```

---

## 3. Install Dependencies

```bash
composer install
```

---

## 4. Create Environment File

```bash
cp .env.example .env
```

---

## 5. Generate Application Key

```bash
php artisan key:generate
```

---

## 6. Configure Database

Update `.env` file:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=fullstack_project
DB_USERNAME=root
DB_PASSWORD=
```

---

## 7. Import Database

Import SQL file from:

```text
database_file/fullstack_project.sql
```

using phpMyAdmin.

---

## 8. Run Laravel Server

```bash
php artisan serve
```

Server runs at:

```text
http://127.0.0.1:8000
```

---

# Postman Collection

Postman collection includes all API requests:

- Authentication APIs
- User APIs
- Profile APIs
- Notification APIs

---

# Project Structure

```text
app/
routes/
database/
database_file/
resources/
```

---

# Author

Rakib Ahmed