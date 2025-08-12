# Dart Basics - Complete Learning Repository

A comprehensive collection of Dart programming examples and tutorials designed for beginners and intermediate developers. This repository covers fundamental Dart concepts with practical, runnable examples.

## 🎯 What You'll Learn

This repository covers the essential Dart programming concepts that form the foundation for Flutter development:

- **Basic Data Types** - Variables, constants, and type system
- **Functions** - Different ways to define and use functions
- **Collections** - Lists, Sets, and Maps with practical examples
- **Classes & Objects** - Object-oriented programming in Dart
- **Control Flow** - If-else, switch-case, loops, and more
- **Enums & Null Safety** - Modern Dart features for robust code

## 📁 Repository Structure

```
Dart Basics/
├── 01_basic_data_types.dart      # Basic data types and variables
├── 02_functions.dart             # Function definitions and usage
├── 03_collections.dart           # Lists, Sets, and Maps
├── 04_classes_objects.dart       # Classes, objects, and inheritance
├── 05_enums_null_safety.dart     # Enums and null safety features
├── 06_control_flow.dart          # Control flow statements
├── Dart-basics/                  # Additional basic examples
│   ├── 01_hello_world.dart
│   ├── 02_built_in_data_types.dart
│   ├── 03_string_and_string_interpolation.dart
│   ├── 04_constants.dart
│   ├── 05_if_else_control_flow.dart
│   ├── 06_conditional_expressions.dart
│   ├── 07_switch_and_case.dart
│   ├── 08_for_loop.dart
│   ├── 09_while_loop.dart
│   ├── 10_do_while_loop.dart
│   ├── 11_break_keyword.dart
│   ├── 12_continue_keyword.dart
│   ├── 13_functions.dart
│   ├── 14_function_expression.dart
│   └── 15_optional_positional_params.dart
└── README.md                     # This file
```

## 🚀 Getting Started

### Prerequisites

- **Dart SDK** (version 2.12.0 or higher recommended)
- **Code Editor** (VS Code, Android Studio, or any text editor)
- **Terminal/Command Prompt**

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/dart-basics.git
   cd dart-basics
   ```

2. **Verify Dart installation:**
   ```bash
   dart --version
   ```

3. **Run any example:**
   ```bash
   dart 01_basic_data_types.dart
   ```

## 📚 Learning Path

### 1. Start with Basics
Begin with `01_basic_data_types.dart` to understand:
- Variable declarations and types
- String interpolation
- Constants (`final` vs `const`)
- Type inference with `var`

### 2. Learn Functions
Move to `02_functions.dart` to explore:
- Function definitions and parameters
- Named and optional parameters
- Arrow functions
- Function types

### 3. Master Collections
Study `03_collections.dart` for:
- List operations and methods
- Set operations and uniqueness
- Map key-value pairs
- Collection transformations

### 4. Understand OOP
Dive into `04_classes_objects.dart` to learn:
- Class definitions and constructors
- Object creation and methods
- Inheritance and polymorphism
- Static members

### 5. Modern Dart Features
Explore `05_enums_null_safety.dart` for:
- Enum definitions and usage
- Null safety principles
- Late variables
- Null-aware operators

### 6. Control Your Code
Finish with `06_control_flow.dart` covering:
- Conditional statements
- Switch-case expressions
- Loop constructs
- Break and continue

## 💡 Key Features

### Human-Written Code
- **Natural comments** that explain concepts clearly
- **Real-world examples** that make sense
- **Progressive complexity** from simple to advanced
- **Best practices** used throughout

### Flutter-Ready Examples
- **Widget-like patterns** in function definitions
- **State management concepts** in class examples
- **UI-related scenarios** in control flow
- **Practical use cases** for each concept

### Comprehensive Coverage
- **All basic Dart concepts** covered systematically
- **Multiple approaches** to solve problems
- **Error handling** and edge cases
- **Performance considerations** where relevant

## 🔧 Running Examples

### Individual Files
```bash
# Run a specific example
dart 01_basic_data_types.dart

# Run with verbose output
dart --verbose 02_functions.dart
```

### All Examples
```bash
# Run all examples in sequence
for file in *.dart; do
    echo "Running $file..."
    dart "$file"
    echo "---"
done
```

### Interactive Mode
```bash
# Start Dart REPL
dart

# Or use dartpad.dev for online experimentation
```

## 📖 Code Examples

### Basic Data Types
```dart
// Integer type - for whole numbers
int age = 25;
int year = 2024;

// Double type - for decimal numbers
double height = 5.9;
double weight = 68.5;

// String type - for text
String name = 'John Doe';
String city = 'New York';

// Boolean type - for true/false values
bool isStudent = true;
bool isWorking = false;
```

### Functions with Named Parameters
```dart
void printUserInfo({
  required String name,           // Must provide this
  int age = 18,                  // Optional with default
  String city = 'Unknown'         // Optional with default
}) {
  print('User: $name, Age: $age, City: $city');
}

// Usage
printUserInfo(name: 'Bob', age: 30, city: 'London');
printUserInfo(name: 'Charlie'); // Uses default values
```

### Collections
```dart
// List operations
List<String> fruits = ['Apple', 'Banana', 'Mango'];
fruits.add('Orange');
fruits.remove('Banana');

// Set operations
Set<int> uniqueNumbers = {1, 2, 3, 4, 5};
uniqueNumbers.add(6);

// Map operations
Map<String, String> countryCapitals = {
  'India': 'New Delhi',
  'USA': 'Washington DC',
};
```

## 🎓 Learning Tips

### 1. **Practice Regularly**
- Run each example multiple times
- Modify the code to see what happens
- Try to break things and understand errors

### 2. **Understand the Concepts**
- Don't just copy-paste code
- Read the comments carefully
- Think about why each approach is used

### 3. **Build Your Own Examples**
- Create variations of the examples
- Combine concepts from different files
- Build small projects using what you learn

### 4. **Use Dart DevTools**
- Install Dart DevTools for debugging
- Use `print()` statements for simple debugging
- Learn to read error messages

## 🐛 Troubleshooting

### Common Issues

1. **"Dart command not found"**
   - Install Dart SDK from [dart.dev](https://dart.dev/get-dart)
   - Add Dart to your system PATH

2. **"File not found"**
   - Ensure you're in the correct directory
   - Check file names and extensions

3. **"Type error"**
   - Read the error message carefully
   - Check variable types and null safety
   - Use the examples as reference

### Getting Help

- **Dart Documentation**: [dart.dev/guides](https://dart.dev/guides)
- **DartPad**: [dartpad.dev](https://dartpad.dev) for online experimentation
- **Stack Overflow**: Search for Dart-specific questions
- **GitHub Issues**: Report bugs or request features

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Ways to Contribute

1. **Report Bugs**
   - Open an issue with clear description
   - Include steps to reproduce
   - Share your Dart version and OS

2. **Suggest Improvements**
   - Propose new examples
   - Suggest better explanations
   - Request additional topics

3. **Submit Code**
   - Fork the repository
   - Create a feature branch
   - Submit a pull request

### Contribution Guidelines

- **Follow existing code style**
- **Add clear comments**
- **Test your changes**
- **Update documentation**

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Dart Team** for creating an amazing language
- **Flutter Community** for inspiration and feedback
- **Open Source Contributors** who helped improve this repository

## 📞 Contact

- **GitHub Issues**: [Report bugs or request features](https://github.com/yourusername/dart-basics/issues)
- **Email**: your.email@example.com
- **Twitter**: [@yourusername](https://twitter.com/yourusername)

---

## 🚀 Ready to Start?

1. **Clone this repository**
2. **Install Dart SDK**
3. **Start with `01_basic_data_types.dart`**
4. **Practice and experiment**
5. **Build amazing Flutter apps!**

Happy coding! 🎉

---

*Last updated: December 2024*
*Dart version: 3.0+*
