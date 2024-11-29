## Klinik frontend repository 
https://github.com/IslamTaleb11/klinik-vuejs

# Klinik Laravel API

## Overview
**Klinik Laravel API** is a robust backend solution built to manage clinic operations efficiently. This API is designed using **Laravel 11**, offering a RESTful architecture for handling essential clinic operations like appointments, patient management, doctor schedules, and more. With a focus on scalability and ease of integration, this API is suitable for frontend applications and large-scale clinic operations.

---

## Features
- 🩺 **Appointment Management**: Seamlessly create, update, and manage appointments for doctors and patients.
- 🗂️ **Patient Records**: Securely store, update, and retrieve comprehensive patient information.
- 🕒 **Doctor Schedules**: Dynamically manage doctor availability and schedules to avoid conflicts.
- 🔐 **Authentication**: Secure login and registration with Laravel Sanctum for token-based authentication.
- 📡 **RESTful API**: Well-documented and fully RESTful endpoints, ensuring smooth integration with any frontend.
- 🔑 **Role-Based Access Control**: Granular permissions for admins, doctors, nurses, pharmacists, and patients.
- 🚀 **Scalable Architecture**: Optimized to support large clinic operations with room for future expansion.
- 🏢 **Admin Dashboard**: Centralized management for appointments, user roles, doctor schedules, and more.
- 👨‍⚕️ **Doctors Dashboard**: Manage patient appointments, check schedules, and access patient records.
- 👩‍⚕️ **Nurses Dashboard**: Manage patient data, assist with scheduling, and handle medication tracking.
- 💊 **Pharmacists Dashboard**: Manage pharmaceutical records, medication orders, and inventory.
- 🧑‍⚕️ **Patients Dashboard**: View personal health records, appointments, and medical history.
- and more...
---

## Tech Stack
- **Language**: PHP
- **Framework**: Laravel 11
- **Database**: MySQL
- **Authentication**: Laravel Sanctum
- **API**: RESTful
- **Other**: Composer, Node.js (optional for frontend build with Laravel Mix)

---

## Requirements
- **PHP**: >= 8.3
- **Composer**: Latest version
- **MySQL**: >= 5.7
- **Node.js**: >= 16.x (if using Laravel Mix for frontend assets)
- **Git**: Latest version

---

## Getting Started

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/IslamTaleb11/klinik-laravel-api.git
cd klinik-laravel-api 
```

### 2️⃣ Install Dependencies

Run the following command to install the required PHP dependencies using Composer:

```bash
composer install
```

If you're using Laravel Mix for frontend assets, install the Node.js dependencies as well:

```bash
npm install
```

### 3️⃣ Set Up Environment File
```bash
cp .env.example .env
```

### 4️⃣ Generate Application Key
Laravel requires an application key, which can be generated by running the following Artisan command:
```bash
php artisan key:generate
```

### 5️⃣ Configure Database
Update your .env file with the appropriate database connection details. For MySQL, it should look like this:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=klinik_database
DB_USERNAME=root
DB_PASSWORD=
```
### 6️⃣ Run Migrations
Once the database configuration is set, run the database migrations to create the necessary tables:
```bash
php artisan migrate
```
### 7️⃣ Seed the Database (Optional)
You can seed the database with some initial data for testing purposes. To do so, run the following command:
```bash
php artisan db:seed
```
### 8️⃣ Start the Development Server
Now that the setup is complete, you can start the development server:
```bash
php artisan serve
```
The API will be available at http://localhost:8000.

## The API documentation will be available on: 
```
http://localhost:8000/api/documentation
```

## Licenses
- **Laravel**: This project is built using Laravel, which is licensed under the MIT License. See the [Laravel License](https://github.com/laravel/laravel/blob/master/LICENSE) for details.
- **Project License**: This project itself is licensed under the MIT License.

## ⭐ Give It a Star!
If you found this project helpful or interesting, please give it a star on GitHub! It helps others discover the project and motivates us to keep improving it. 🌟  
[Click here to star the repository!](https://github.com/IslamTaleb11/klinik-laravel-api)  
