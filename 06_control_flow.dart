// Control Flow in Dart - If, Else, Switch, Loops
// This program demonstrates various control flow statements
// that are essential for programming logic

void main() {
  print('=== Dart Control Flow Demo ===\n');
  
  demonstrateIfElse();
  demonstrateSwitchCase();
  demonstrateLoops();
  demonstrateBreakContinue();
  demonstrateConditionalExpressions();
}

void demonstrateIfElse() {
  print('--- IF-ELSE STATEMENTS ---');
  
  int age = 18;
  bool hasLicense = true;
  bool isStudent = false;
  
  // Basic if statement
  if (age >= 18) {
    print('You are an adult');
  }
  
  // If-else statement
  if (age >= 18) {
    print('You can vote');
  } else {
    print('You cannot vote yet');
  }
  
  // If-else if-else chain
  if (age < 13) {
    print('You are a child');
  } else if (age < 20) {
    print('You are a teenager');
  } else if (age < 65) {
    print('You are an adult');
  } else {
    print('You are a senior');
  }
  
  // Multiple conditions with logical operators
  if (age >= 16 && hasLicense) {
    print('You can drive alone');
  } else if (age >= 16 && !hasLicense) {
    print('You can drive with a licensed driver');
  } else {
    print('You cannot drive yet');
  }
  
  // Nested if statements
  if (age >= 18) {
    if (isStudent) {
      print('You are an adult student');
    } else {
      print('You are an adult non-student');
    }
  }
  
  print('');
}

void demonstrateSwitchCase() {
  print('--- SWITCH-CASE STATEMENTS ---');
  
  String dayOfWeek = 'Monday';
  
  // Basic switch statement
  switch (dayOfWeek) {
    case 'Monday':
      print('Start of the work week');
      break;
    case 'Tuesday':
      print('Second day of the week');
      break;
    case 'Wednesday':
      print('Middle of the week');
      break;
    case 'Thursday':
      print('Almost Friday!');
      break;
    case 'Friday':
      print('TGIF!');
      break;
    case 'Saturday':
    case 'Sunday':
      print('Weekend!');
      break;
    default:
      print('Invalid day');
  }
  
  // Switch with enum
  UserStatus status = UserStatus.online;
  
  switch (status) {
    case UserStatus.online:
      print('User is online');
      break;
    case UserStatus.offline:
      print('User is offline');
      break;
    case UserStatus.away:
      print('User is away');
      break;
    case UserStatus.busy:
      print('User is busy');
      break;
  }
  
  // Switch with fall-through (no break)
  int grade = 85;
  
  switch (grade ~/ 10) { // Integer division to get tens digit
    case 10:
    case 9:
      print('Grade: A');
      break;
    case 8:
      print('Grade: B');
      break;
    case 7:
      print('Grade: C');
      break;
    case 6:
      print('Grade: D');
      break;
    default:
      print('Grade: F');
  }
  
  print('');
}

void demonstrateLoops() {
  print('--- LOOPS ---');
  
  // 1. For loop with counter
  print('Counting from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }
  
  // 2. For loop with list
  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Mango'];
  print('\nFruits:');
  for (int i = 0; i < fruits.length; i++) {
    print('${i + 1}. ${fruits[i]}');
  }
  
  // 3. For-in loop (iterate over elements)
  print('\nFruits (for-in):');
  for (String fruit in fruits) {
    print('Fruit: $fruit');
  }
  
  // 4. ForEach loop
  print('\nFruits (forEach):');
  fruits.forEach((fruit) => print('Fruit: $fruit'));
  
  // 5. While loop
  print('\nCounting down from 5:');
  int countdown = 5;
  while (countdown > 0) {
    print('Countdown: $countdown');
    countdown--;
  }
  
  // 6. Do-while loop (executes at least once)
  print('\nDo-while example:');
  int number = 1;
  do {
    print('Number: $number');
    number++;
  } while (number <= 3);
  
  // 7. Loop with break condition
  print('\nLoop with break:');
  for (int i = 1; i <= 10; i++) {
    if (i == 6) {
      print('Breaking at 6');
      break;
    }
    print('Number: $i');
  }
  
  // 8. Loop with continue (skip iteration)
  print('\nLoop with continue (skip even numbers):');
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue; // Skip even numbers
    }
    print('Odd number: $i');
  }
  
  print('');
}

void demonstrateBreakContinue() {
  print('--- BREAK AND CONTINUE ---');
  
  // Break example - finding first even number
  List<int> numbers = [1, 3, 5, 8, 9, 10, 12];
  
  print('Finding first even number:');
  for (int number in numbers) {
    if (number % 2 == 0) {
      print('First even number found: $number');
      break; // Exit the loop
    }
    print('Checking: $number (odd)');
  }
  
  // Continue example - printing only positive numbers
  List<int> mixedNumbers = [-5, 10, -3, 0, 7, -2, 15];
  
  print('\nPrinting only positive numbers:');
  for (int number in mixedNumbers) {
    if (number <= 0) {
      continue; // Skip non-positive numbers
    }
    print('Positive number: $number');
  }
  
  // Nested loops with break
  print('\nNested loops with break:');
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        print('Breaking inner loop at i=$i, j=$j');
        break; // Breaks only the inner loop
      }
      print('i=$i, j=$j');
    }
  }
  
  print('');
}

void demonstrateConditionalExpressions() {
  print('--- CONDITIONAL EXPRESSIONS ---');
  
  int age = 20;
  bool isStudent = true;
  
  // Ternary operator (condition ? value1 : value2)
  String status = age >= 18 ? 'Adult' : 'Minor';
  print('Status: $status');
  
  // Nested ternary operators
  String category = age < 13 ? 'Child' : 
                   age < 20 ? 'Teenager' : 
                   age < 65 ? 'Adult' : 'Senior';
  print('Category: $category');
  
  // Conditional expressions with null safety
  String? userName;
  String displayName = userName ?? 'Guest';
  print('Display name: $displayName');
  
  // Conditional expressions in variable assignment
  int maxScore = 100;
  int currentScore = 85;
  int bonus = currentScore >= 90 ? 10 : 0;
  
  print('Current score: $currentScore');
  print('Bonus: $bonus');
  print('Final score: ${currentScore + bonus}');
  
  // Conditional expressions with function calls
  String message = isStudent ? 
                   'Welcome, student!' : 
                   'Welcome, visitor!';
  print('Message: $message');
  
  // Using conditional expressions for simple logic
  List<int> scores = [85, 92, 78, 96, 88];
  int highestScore = scores.reduce((a, b) => a > b ? a : b);
  print('Highest score: $highestScore');
  
  print('');
}

// Enum for user status
enum UserStatus {
  online,
  offline,
  away,
  busy
}
