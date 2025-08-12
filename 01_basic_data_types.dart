// Basic Data Types in Dart
// This program demonstrates the fundamental data types available in Dart
// and how to use them effectively in your applications.

void main() {
  print('=== Dart Basic Data Types Demo ===\n');
  
  // Integer type - for whole numbers
  int age = 25;
  int year = 2024;
  print('Age: $age years old');
  print('Current year: $year');
  
  // Double type - for decimal numbers
  double height = 5.9;
  double weight = 68.5;
  print('Height: ${height} feet');
  print('Weight: ${weight} kg');
  
  // String type - for text
  String name = 'John Doe';
  String city = 'New York';
  print('Name: $name');
  print('City: $city');
  
  // Boolean type - for true/false values
  bool isStudent = true;
  bool isWorking = false;
  print('Is student: $isStudent');
  print('Is working: $isWorking');
  
  // var keyword - Dart infers the type automatically
  var favoriteColor = 'Blue';  // Dart knows this is a String
  var luckyNumber = 7;         // Dart knows this is an int
  print('Favorite color: $favoriteColor');
  print('Lucky number: $luckyNumber');
  
  // dynamic keyword - can change type at runtime (use sparingly!)
  dynamic flexibleVariable = 42;
  print('Dynamic variable (int): $flexibleVariable');
  
  flexibleVariable = 'Now I am a string!';
  print('Dynamic variable (String): $flexibleVariable');
  
  // final keyword - runtime constant (value set once)
  final currentTime = DateTime.now();
  print('Current time: $currentTime');
  
  // const keyword - compile-time constant (value known at compile time)
  const PI = 3.14159;
  const GRAVITY = 9.81;
  print('PI: $PI');
  print('Gravity: ${GRAVITY} m/s²');
  
  print('\n=== Type Information ===');
  print('age is ${age.runtimeType}');
  print('height is ${height.runtimeType}');
  print('name is ${name.runtimeType}');
  print('isStudent is ${isStudent.runtimeType}');
  print('favoriteColor is ${favoriteColor.runtimeType}');
}
