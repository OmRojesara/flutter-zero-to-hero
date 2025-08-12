// Functions in Dart - Different Ways to Define and Use Functions
// This program shows various function patterns commonly used in Dart and Flutter

void main() {
  print('=== Dart Functions Demo ===\n');
  
  // 1. Basic function with positional parameters
  greetUser('Alice', 25);
  
  // 2. Function with named parameters
  printUserInfo(name: 'Bob', age: 30, city: 'London');
  printUserInfo(name: 'Charlie'); // Using default values
  
  // 3. Arrow function (shorthand syntax)
  int sum = addNumbers(10, 20);
  print('Sum of 10 + 20 = $sum');
  
  // 4. Function with optional positional parameters
  displayUser('David');
  displayUser('Eva', 'Paris');
  
  // 5. Function returning a value
  String greeting = getGreeting('Frank');
  print(greeting);
  
  // 6. Function with multiple return types
  var result = calculateArea(5.0, 3.0);
  print('Area: $result');
  
  // 7. Higher-order function (function that takes another function)
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) => print('Number: $number'));
  
  // 8. Function with list parameter
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  printFruits(fruits);
  
  print('\n=== Function Types ===');
  print('addNumbers function type: ${addNumbers.runtimeType}');
  print('greetUser function type: ${greetUser.runtimeType}');
}

// Basic function with positional parameters
// These are the most common type - parameters must be provided in order
void greetUser(String name, int age) {
  print('Hello $name! You are $age years old.');
}

// Function with named parameters
// Parameters are specified by name when calling - order doesn't matter
// Required parameters must be provided, optional ones can use defaults
void printUserInfo({
  required String name,           // Must provide this
  int age = 18,                  // Optional with default
  String city = 'Unknown'         // Optional with default
}) {
  print('User: $name, Age: $age, City: $city');
}

// Arrow function - great for simple one-liners
// This is equivalent to: int addNumbers(int a, int b) { return a + b; }
int addNumbers(int a, int b) => a + b;

// Function with optional positional parameters
// Parameters in square brackets are optional
void displayUser(String name, [String? city]) {
  print('Name: $name');
  if (city != null) {
    print('City: $city');
  } else {
    print('City: Not specified');
  }
}

// Function returning a value
String getGreeting(String name) {
  return 'Welcome to Dart, $name!';
}

// Function returning different types using var/dynamic
// In practice, you'd usually specify the exact return type
var calculateArea = (double length, double width) => length * width;

// Function taking a list as parameter
void printFruits(List<String> fruits) {
  print('\nFruits list:');
  for (int i = 0; i < fruits.length; i++) {
    print('${i + 1}. ${fruits[i]}');
  }
}
