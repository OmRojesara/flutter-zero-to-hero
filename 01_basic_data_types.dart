// Basic Data Types in Dart - Simple Examples for Beginners
// This program shows the basic building blocks of Dart programming

void main() {
  print('=== Welcome to Dart Basics! ===\n');
  
  // Let's learn about different types of data we can store
  
  // 1. Text (String) - for names, messages, etc.
  String myName = 'Om';
  String friendName = 'Abhishek';
  String message = 'Hello from Dart!';
  
  print('My name is: $myName');
  print('My friend is: $friendName');
  print('Message: $message');
  
  // 2. Numbers (int) - for whole numbers like age, count
  int myAge = 20;
  int friendsCount = 5;
  int year = 2024;
  
  print('\nMy age: $myAge');
  print('Number of friends: $friendsCount');
  print('Current year: $year');
  
  // 3. Decimal numbers (double) - for height, weight, price
  double myHeight = 5.8;
  double myWeight = 65.5;
  double movieTicketPrice = 250.0;
  
  print('\nMy height: ${myHeight} feet');
  print('My weight: ${myWeight} kg');
  print('Movie ticket price: Rs. ${movieTicketPrice}');
  
  // 4. True/False (bool) - for yes/no questions
  bool isStudent = true;
  bool isWorking = false;
  bool likesCoding = true;
  
  print('\nAm I a student? $isStudent');
  print('Am I working? $isWorking');
  print('Do I like coding? $likesCoding');
  
  // 5. Let Dart guess the type (var) - Dart is smart!
  var favoriteColor = 'Blue';
  var luckyNumber = 7;
  var isHappy = true;
  
  print('\nFavorite color: $favoriteColor');
  print('Lucky number: $luckyNumber');
  print('Am I happy? $isHappy');
  
  // 6. Values that can't change (final) - like your birth date
  final birthYear = 2004;
  final birthPlace = 'Mumbai';
  
  print('\nBirth year: $birthYear');
  print('Birth place: $birthPlace');
  
  // 7. Values that never change (const) - like mathematical constants
  const PI = 3.14;
  const GRAVITY = 9.8;
  
  print('\nValue of PI: $PI');
  print('Gravity: ${GRAVITY} m/s²');
  
  print('\n=== Great! You learned about data types ===');
  print('Next: Learn about functions!');
}
