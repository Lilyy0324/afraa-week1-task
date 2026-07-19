# 📱 Flutter UI Development Project

A Flutter-based UI application developed as part of a Flutter UI Development Internship. This project focuses on designing a clean, responsive, and user-friendly interface while demonstrating Flutter fundamentals, reusable widgets, screen navigation, and form validation.

> **Note:** This project primarily showcases UI implementation and Flutter development concepts. Some advanced functionalities such as backend integration, persistent storage, and complete business logic are not included in the current version.

---

# ✨ Features

### Authentication

- Login Screen
- Registration Screen
- Form Validation
- Password Visibility Toggle
- Remember Me Checkbox
- Navigation between Login and Register screens

### Home Dashboard

- Welcome Section
- Progress Card
- Search Bar
- Quick Action Cards
- Task Cards Layout

### Task Management UI

- Add Task Screen
- Task Title Input
- Description Input
- Category Selection
- Priority Selection
- Basic Input Validation

### User Profile

- Profile Screen
- Editable User Details
- Logout Button

### Settings

- Settings Screen
- Notification Toggle
- Theme Preference UI
- General Settings Layout

### Reusable Components

- Custom Buttons
- Custom Text Fields
- Progress Cards
- Task Cards
- Quick Action Cards

### Design

- Material Design
- Responsive Layout
- Organized Folder Structure
- Consistent Color Theme
- Reusable Widget-Based Architecture

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Flutter | Cross-platform mobile app development |
| Dart | Programming language |
| Material Design | UI Components |
| VS Code | Development Environment |
| Android Emulator | Application Testing |
| Git & GitHub | Version Control |

---

# 📂 Project Structure

The project follows a modular architecture to improve code organization, readability, and maintainability.

```text
lib/
│
├── main.dart                     # Application entry point
│
├── models/
│   └── task.dart                 # Task model used to represent task data
│
├── screens/
│   ├── splash_screen.dart        # Initial splash screen
│   ├── login_screen.dart         # User login interface
│   ├── register_screen.dart      # User registration interface
│   ├── home_screen.dart          # Main dashboard/home page
│   ├── add_task_screen.dart      # UI for adding a new task
│   ├── profile_screen.dart       # User profile interface
│   └── settings_screen.dart      # Application settings page
│
├── theme/
│   ├── app_colors.dart           # Centralized color definitions
│   └── app_theme.dart            # Global application theme
│
├── widgets/
│   ├── custom_button.dart        # Reusable button widget
│   ├── custom_text_field.dart    # Reusable text field widget
│   ├── progress_card.dart        # Dashboard progress card
│   ├── quick_action_card.dart    # Quick action cards
│   └── task_card.dart            # Individual task display card
│
├── utils/
│   └── constants.dart            # Text constants and reusable values
│
└── assets/                       # Images, icons, and fonts (if included)
```

### Screen Modules

- Splash Screen
- Login Screen
- Registration Screen
- Home Screen
- Add Task Screen
- Profile Screen
- Settings Screen

---

# 🎯 Project Objective

The objective of this project is to gain hands-on experience in Flutter application development by designing and implementing a modern mobile application interface.

This project demonstrates:

- Flutter UI Development
- Screen Navigation
- Widget Composition
- Form Validation
- Custom Reusable Widgets
- Clean Project Organization
- Material Design Principles
- Responsive Mobile UI Design

---

# 📚 Flutter Concepts Demonstrated

- Stateless Widgets
- Stateful Widgets
- MaterialApp
- Scaffold
- AppBar
- Navigator
- Form Widget
- GlobalKey
- TextEditingController
- Form Validation
- setState()
- Custom Widgets
- Theme Management
- Reusable Components
- Project Folder Organization

---

# 🚀 Getting Started

## Prerequisites

Before running the project, ensure the following are installed:

- Flutter SDK
- Dart SDK
- Android Studio
- VS Code
- Android Emulator or Android Device
- Git

---

## Installation

### Clone the repository

```bash
git clone https://github.com/<YOUR_GITHUB_USERNAME>/afraa-week1-task.git
```

### Navigate to the project

```bash
cd afraa-week1-task
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

---

# 📱 Application Screens

- Splash Screen
- Login Screen
- Registration Screen
- Home Dashboard
- Add Task Screen
- Profile Screen
- Settings Screen

---

# ⚠️ Current Scope

This project was developed as part of a Flutter UI Development Internship assignment.

The current implementation mainly focuses on:

- User Interface Design
- Screen Navigation
- Flutter Widget Composition
- Form Validation
- Reusable Components

Some interactive features are currently placeholders and are intended for future enhancement.

---

# 🔮 Future Enhancements

Possible future improvements include:

- Firebase Authentication
- Local Database (SQLite / Hive)
- Cloud Firestore Integration
- Dark Mode
- Push Notifications
- Task Reminder System
- Search & Filter
- Calendar Integration
- User Profile Persistence
- Task Completion Tracking
- State Management using Provider, Riverpod, or Bloc
- Backend API Integration

---

# 📄 License

This project is developed for educational and internship demonstration purposes.
