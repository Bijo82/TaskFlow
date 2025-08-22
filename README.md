# TaskFlow - A Minimalist To-Do App

TaskFlow is a simple and elegant to-do list application built with Flutter. It's designed to help you manage your daily tasks with a clean, intuitive, and dark-themed user interface. All your tasks are saved locally on your device, so you can pick up right where you left off.

-----

## ✨ Features

  * **Create & Manage Tasks:** Easily add new tasks to your list.
  * **Mark as Complete:** Tap the checkbox to mark tasks as done, visually striking them through.
  * **Delete Tasks:** A simple and intuitive swipe-left gesture to delete tasks you no longer need.
  * **Local Data Persistence:** Your to-do list is automatically saved to your device using the **Hive** database, ensuring your data is always there when you reopen the app.
  * **Clean, Dark UI:** A beautiful, modern, and easy-on-the-eyes dark theme.

-----

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

You must have Flutter installed on your machine. For help, check out the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repo**
    ```sh
    git clone https://github.com/your_username/taskflow.git
    ```
2.  **Navigate to the project directory**
    ```sh
    cd taskflow
    ```
3.  **Install dependencies**
    ```sh
    flutter pub get
    ```
4.  **Run the app**
    ```sh
    flutter run
    ```

-----

## 📂 Project Structure

The project is organized into logical folders and files to keep the code clean and maintainable.

```
lib
├── data
│   └── database.dart     # Manages all Hive database operations (load, update, initial data)
├── pages
│   └── main_page.dart    # The main screen widget, handling UI and state for the to-do list
├── util
│   ├── button.dart       # A reusable custom button widget for the dialog box
│   ├── dialogbox.dart    # The alert dialog widget for adding new tasks
│   └── todo_tile.dart    # The widget for a single to-do list item
└── main.dart             # The main entry point of the application
```

-----

## 📱 How to Use

1.  **Adding a Task:** Tap the **`+`** button in the bottom-right corner. A dialog box will appear where you can type your new task and hit "Save".
2.  **Completing a Task:** Tap the checkbox to the left of a task to mark it as complete.
3.  **Deleting a Task:** Simply swipe any task from right to left to reveal the delete button and remove it from your list.

-----

## 🛠️ Technologies Used

  * [**Flutter**](https://flutter.dev/) - The UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
  * [**Dart**](https://dart.dev/) - The programming language used by Flutter.
  * [**Hive**](https://www.google.com/search?q=https://pub.dev/packages/hive) - A lightweight and blazing fast key-value database written in pure Dart.
  * [**flutter\_slidable**](https://pub.dev/packages/flutter_slidable) - A Flutter package to create dismissible list items with actions.
