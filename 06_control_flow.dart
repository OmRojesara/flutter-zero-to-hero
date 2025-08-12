// Control Flow in Dart - Simple Examples for Beginners
// Control flow is like making decisions in your code

void main() {
  print('=== Learning Control Flow in Dart ===\n');
  
  // 1. Learning about if-else statements (making decisions)
  learnAboutIfElse();
  
  // 2. Learning about switch statements (multiple choices)
  learnAboutSwitch();
  
  // 3. Learning about loops (repeating things)
  learnAboutLoops();
  
  // 4. Learning about break and continue
  learnAboutBreakContinue();
  
  print('\n=== Control flow helps your code make decisions! ===');
}

void learnAboutIfElse() {
  print('--- IF-ELSE STATEMENTS (Making Decisions) ---');
  
  int age = 18;
  bool hasLicense = true;
  bool isStudent = true;
  
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

void learnAboutSwitch() {
  print('--- SWITCH STATEMENTS (Multiple Choices) ---');
  
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

void learnAboutLoops() {
  print('--- LOOPS (Repeating Things) ---');
  
  // 1. For loop with counter
  print('Counting from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }
  
  // 2. For loop with list
  List<String> friends = ['Om', 'Abhishek', 'Akshit', 'Kartik'];
  print('\nMy friends:');
  for (int i = 0; i < friends.length; i++) {
    print('${i + 1}. ${friends[i]}');
  }
  
  // 3. For-in loop (iterate over elements)
  print('\nFriends (for-in):');
  for (String friend in friends) {
    print('Friend: $friend');
  }
  
  // 4. ForEach loop
  print('\nFriends (forEach):');
  friends.forEach((friend) => print('Friend: $friend'));
  
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

void learnAboutBreakContinue() {
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

// Enum for user status
enum UserStatus {
  online,
  offline,
  away,
  busy
}
