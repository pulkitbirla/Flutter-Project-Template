# 🚀 Flutter Project Template 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/pulkitbirla/Flutter-Project-Template/pulls)
[![GitHub stars](https://img.shields.io/github/stars/pulkitbirla/Flutter-Project-Template.svg?style=social&label=Star)](https://github.com/pulkitbirla/Flutter-Project-Template)

A production-ready, feature-rich, and scalable Flutter template designed to supercharge your app development. Built with a focus on **Clean Architecture**, this template helps you write clean, maintainable, and testable code from day one.

Stop worrying about setup and boilerplate. Start building features!

---

## ✨ Core Philosophy

This template is built on the principles of **separation of concerns**. By decoupling the UI, business logic, and data layers, it creates an architecture that is:

*   **Scalable:** Easily add new features without breaking existing ones.
*   **Maintainable:** Understand and modify code with confidence.
*   **Testable:** Write unit, widget, and integration tests with ease.

![image](https://github.com/user-attachments/assets/e3e31ecf-b459-48ce-bd55-a5defc4dcddd)

---

## 🌟 Features Included

This template comes pre-configured with a suite of modern tools and practices:

*   **Clean Architecture:** A clear separation of concerns between UI, business logic, and data.
*   **State Management:** Pre-configured with **Bloc** for predictable and scalable state management.
*   **Dependency Injection:** Using **get_it** to easily manage and provide dependencies.
*   **Routing:** Simplified and powerful navigation with **GoRouter**.
*   **API Handling:** Ready-to-use services for making HTTP requests with **Dio**.
*   **Testing:** Setup for unit, widget, and integration tests.
*   **Linting:** Strict analysis options to ensure code quality and consistency.
*   **Environment Configuration:** Easily manage different build environments (dev, staging, prod).

---

## 📂 Project Structure

The project follows a feature-first directory structure, which is organized for scalability and clarity.

```
/
├── .github/              # GitHub-specific files (e.g., workflow actions for CI/CD)
│   └── workflows/
│       └── main.yml
│
├── android/              # Android-specific project files
├── ios/                  # iOS-specific project files
├── lib/                  # Main Dart source code for the application
│   ├── main.dart         # The entry point of the application
│   │
│   ├── core/             # Shared code, utilities, and services used across all features
│   │   ├── di/             # Dependency Injection setup (e.g., using GetIt, Injectable)
│   │   ├── network/        # Network layer setup (e.g., Dio client, interceptors, API constants)
│   │   ├── router/         # App navigation and routing setup (e.g., using GoRouter)
│   │   ├── theme/          # Global theme, colors, text styles, and assets
│   │   ├── usecases/       # Base classes for use cases
│   │   └── widgets/        # Common reusable widgets (e.g., CustomAppBar, LoadingSpinner)
│   │
│   └── features/         # Each individual feature of the app resides in its own folder
│       └── example_feature/ # An example feature folder
│           │
│           ├── data/       # Data Layer: How to get data
│           │   ├── datasources/ # Abstract definitions for data sources (remote/local)
│           │   ├── models/      # Data Transfer Objects (DTOs), for parsing API responses
│           │   └── repositories/ # Implementation of the domain layer's repositories
│           │
│           ├── domain/     # Domain Layer: What the app can do (pure Dart, no Flutter dependencies)
│           │   ├── entities/   # Core business objects/entities
│           │   ├── repositories/ # Abstract contracts for repositories
│           │   └── usecases/     # Application-specific business rules/interactors
│           │
│           └── presentation/ # Presentation Layer: How the UI looks and handles user input
│               ├── bloc/       # State management logic (e.g., Blocs, Cubits, Providers)
│               ├── screens/    # The screens/pages for this feature
│               └── widgets/    # Widgets that are specific to this feature
│
├── test/                 # Folder for all automated tests
│   ├── features/         # Tests organized by feature
│   │   └── example_feature/
│   │       ├── data/
│   │       ├── domain/
│   │       └── presentation/
│   └── mocks/              # Mock files for testing
│
├── assets/               # Static assets like images, fonts, and translation files
│   ├── images/
│   └── fonts/
│
├── pubspec.yaml          # Project metadata and dependencies
├── pubspec.lock          # Tracks the exact versions of all dependencies
└── README.md             # Project documentation
```

---

## 🏁 Getting Started

Follow these steps to get a local copy up and running.

### **Prerequisites**

Ensure you have the latest stable version of the Flutter SDK installed on your machine.
*   [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

### **Installation & Setup**

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/pulkitbirla/Flutter-Project-Template.git your_project_name
    ```
2.  **Navigate into your new project:**
    ```sh
    cd your_project_name
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the build runner to generate necessary files:**
    *(This is required for libraries like Freezed and Injectable)*
    ```sh
    dart run build_runner build --delete-conflicting-outputs
    ```
5.  **Launch the application:**
    ```sh
    flutter run
    ```

---

## 🤝 How to Contribute

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/pulkitbirla/Flutter-Project-Template/issues).

1.  **Fork the Project**
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a **Pull Request**

Give the project a ⭐ if it helped you!

---

## 📜 License

This project is distributed under the MIT License. See `LICENSE.txt` for more information.
