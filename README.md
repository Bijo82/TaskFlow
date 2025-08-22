TaskFlow - A Minimalist To-Do App
TaskFlow is a simple and elegant to-do list application built with Flutter. It's designed to help you manage your daily tasks with a clean, intuitive, and dark-themed user interface. All your tasks are saved locally on your device, so you can pick up right where you left off.

✨ Features
Create & Manage Tasks: Easily add new tasks to your list.

Mark as Complete: Tap the checkbox to mark tasks as done, visually striking them through.

Delete Tasks: A simple and intuitive swipe-left gesture to delete tasks you no longer need.

Local Data Persistence: Your to-do list is automatically saved to your device using the Hive database, ensuring your data is always there when you reopen the app.

Clean, Dark UI: A beautiful, modern, and easy-on-the-eyes dark theme.

🚀 Getting Started
To get a local copy up and running, follow these simple steps.

Prerequisites
You must have Flutter installed on your machine. For help, check out the official Flutter installation guide.

Installation
Clone the repo

git clone https://github.com/your_username/taskflow.git

Navigate to the project directory

cd taskflow

Install dependencies

flutter pub get

Run the app

flutter run

📂 Project Structure
The project is organized into logical folders and files to keep the code clean and maintainable.

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

📱 How to Use
Adding a Task: Tap the + button in the bottom-right corner. A dialog box will appear where you can type your new task and hit "Save".

Completing a Task: Tap the checkbox to the left of a task to mark it as complete.

Deleting a Task: Simply swipe any task from right to left to reveal the delete button and remove it from your list.

🛠️ Technologies Used
Flutter - The UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.

Dart - The programming language used by Flutter.

Hive - A lightweight and blazing fast key-value database written in pure Dart.

flutter_slidable - A Flutter package to create dismissible list items with actions.
