# Flutter Basics (Beginner Friendly)

This repository contains simple, exam-friendly Flutter examples. Each file is a complete app you can run directly. The code is written to be easy to read with clear comments.

## Requirements
- Flutter SDK installed (`flutter --version` should work in your terminal)
- A device/emulator connected (`flutter devices`)

## One-time setup (run in this folder)
Initialize a Flutter project structure here so you can run the examples directly:
```bash
flutter create .
```
This creates the necessary `pubspec.yaml` and folders. Your example files will remain intact.

## How to Run
You can run any example by pointing Flutter to the file using the `-t` flag.

Example:
```bash
flutter run -t 01_stateless_hello_world.dart
```

Run other examples similarly:
- Hello World (Stateless):
  ```bash
  flutter run -t 01_stateless_hello_world.dart
  ```
- Counter (Stateful):
  ```bash
  flutter run -t 02_stateful_counter.dart
  ```
- Text Input + Display:
  ```bash
  flutter run -t 03_text_input_display.dart
  ```
- Simple Calculator:
  ```bash
  flutter run -t 04_simple_calculator.dart
  ```
- Registration Form (Basic):
  ```bash
  flutter run -t 05_registration_form_basic.dart
  ```
- Registration + Dropdown:
  ```bash
  flutter run -t 06_registration_form_dropdown.dart
  ```
- Registration + Payment (Radio Buttons):
  ```bash
  flutter run -t 07_registration_form_payment_radio.dart
  ```
- Registration + Payment + Hobbies (Checkboxes):
  ```bash
  flutter run -t 08_registration_form_checkbox.dart
  ```

## Notes
- Each file includes its own `main()` function and can run separately.
- Input validation is basic and user-friendly.
- UI elements are kept simple and clear for exam understanding.
- The debug banner is hidden for a cleaner look.

## Contributing
Feel free to open issues or pull requests if you want to improve the examples or add more beginner-friendly demos.
