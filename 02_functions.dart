// Functions in Dart - Simple Examples for Beginners
// Functions are like recipes - they take ingredients and give you results!

void main() {
  print('=== Learning Functions in Dart ===\n');
  
  // 1. Simple function call - like saying hello to someone
  sayHello('Om');
  sayHello('Abhishek');
  
  // 2. Function that gives us information back
  String greeting = getGreeting('Akshit');
  print(greeting);
  
  // 3. Function that does math for us
  int total = addNumbers(10, 20);
  print('10 + 20 = $total');
  
  int product = multiplyNumbers(5, 6);
  print('5 × 6 = $product');
  
  // 4. Function that checks if someone is old enough
  checkAge('Kartik', 18);
  checkAge('Hardik', 15);
  
  // 5. Function that shows student information
  showStudentInfo('Anand', 'Computer Science', 85);
  
  print('\n=== Functions are like helpers! ===');
  print('They make your code organized and reusable.');
}

// Simple function that says hello
// This function takes a name and prints a greeting
void sayHello(String name) {
  print('Hello $name! How are you today?');
}

// Function that returns a greeting message
// This function gives us back a string we can use
String getGreeting(String name) {
  return 'Welcome to Dart programming, $name!';
}

// Function that adds two numbers
// This function takes two numbers and gives us their sum
int addNumbers(int a, int b) {
  return a + b;
}

// Function that multiplies two numbers
int multiplyNumbers(int a, int b) {
  return a * b;
}

// Function that checks if someone is old enough to drive
void checkAge(String name, int age) {
  if (age >= 18) {
    print('$name, you are $age years old. You can drive!');
  } else {
    print('$name, you are $age years old. You need to wait ${18 - age} more years to drive.');
  }
}

// Function that shows student information
void showStudentInfo(String name, String course, int marks) {
  print('\nStudent Information:');
  print('Name: $name');
  print('Course: $course');
  print('Marks: $marks out of 100');
  
  if (marks >= 90) {
    print('Grade: A+ (Excellent!)');
  } else if (marks >= 80) {
    print('Grade: A (Very Good!)');
  } else if (marks >= 70) {
    print('Grade: B (Good!)');
  } else if (marks >= 60) {
    print('Grade: C (Pass)');
  } else {
    print('Grade: F (Need to improve)');
  }
}
