// Enums and Null Safety in Dart - Simple Examples for Beginners
// Enums are like a list of choices, null safety prevents crashes

void main() {
  print('=== Learning Enums and Null Safety in Dart ===\n');
  
  // 1. Learning about enums (fixed choices)
  learnAboutEnums();
  
  // 2. Learning about null safety (preventing crashes)
  learnAboutNullSafety();
  
  // 3. Learning about late variables
  learnAboutLateVariables();
  
  // 4. Learning about null-aware operators
  learnAboutNullOperators();
  
  print('\n=== Enums and null safety make your code safer! ===');
}

void learnAboutEnums() {
  print('--- ENUMS (Fixed Choices) ---');
  
  // Enums are like a menu with limited options
  UserRole myRole = UserRole.student;
  ButtonType myButton = ButtonType.primary;
  
  print('My role: $myRole');
  print('Button type: $myButton');
  
  // Using enums in switch statements
  describeMyRole(myRole);
  
  // Getting information about enums
  print('Role name: ${myRole.name}');
  print('Role number: ${myRole.index}');
  
  // Seeing all available roles
  print('\nAll available roles:');
  for (UserRole role in UserRole.values) {
    print('- ${role.name}');
  }
  
  // Using enums for app states
  AppState currentState = AppState.loading;
  print('\nApp state: $currentState');
  
  // Changing state
  currentState = AppState.loaded;
  print('After loading: $currentState');
  
  // Using enums for messages
  print('\n--- MESSAGE TYPES ---');
  MessageType success = MessageType.success;
  MessageType error = MessageType.error;
  
  showMessage(success);
  showMessage(error);
  
  print('');
}

void learnAboutNullSafety() {
  print('--- NULL SAFETY (Preventing Crashes) ---');
  
  // 1. Variables that must have a value (non-nullable)
  String myName = 'Om';
  int myAge = 20;
  
  print('My name: $myName');
  print('My age: $myAge');
  
  // This would cause an error:
  // String uninitializedName; // Error: must give it a value
  
  // 2. Variables that can be empty (nullable)
  String? nickname;
  int? score;
  
  print('Nickname: $nickname'); // Prints: null (empty)
  print('Score: $score');       // Prints: null (empty)
  
  // Giving values to nullable variables
  nickname = 'Ommy';
  score = 95;
  
  print('After giving values:');
  print('Nickname: $nickname');
  print('Score: $score');
  
  // 3. Working safely with nullable variables
  String? email;
  
  // Safe way to check if email exists
  if (email != null) {
    print('Email: ${email.toUpperCase()}');
  } else {
    print('Email not provided');
  }
  
  // Giving email a value
  email = 'om@example.com';
  
  if (email != null) {
    print('Email: ${email.toUpperCase()}');
  }
  
  print('');
}

void learnAboutLateVariables() {
  print('--- LATE VARIABLES (Set Later) ---');
  
  // Late variables are like promises - we'll give them a value later
  late String greeting;
  late int luckyNumber;
  
  // Now we're giving them values
  greeting = 'Namaste from Dart!';
  luckyNumber = 7;
  
  print('Greeting: $greeting');
  print('Lucky number: $luckyNumber');
  
  // Late variables are useful in Flutter
  late String userName;
  
  // Simulating getting user name from somewhere
  userName = getUserName();
  print('User name: $userName');
  
  print('');
}

void learnAboutNullOperators() {
  print('--- NULL AWARE OPERATORS (Smart Defaults) ---');
  
  // 1. ?? operator (use this if that is empty)
  String? firstName;
  String? lastName = 'Sharma';
  
  String displayName = firstName ?? 'Guest';
  String fullName = '${firstName ?? 'Guest'} ${lastName ?? ''}';
  
  print('Display name: $displayName');
  print('Full name: $fullName');
  
  // 2. ??= operator (give value only if empty)
  String? userEmail;
  userEmail ??= 'guest@example.com';
  print('User email: $userEmail');
  
  // Won't change if already has a value
  userEmail ??= 'new@example.com';
  print('User email after ??=: $userEmail');
  
  // 3. ?. operator (safe access)
  String? text;
  int? length = text?.length; // Safe access, returns null if text is null
  print('Text length: $length');
  
  text = 'Hello Dart!';
  length = text?.length;
  print('Text length after assignment: $length');
  
  // 4. ! operator (I promise this is not empty - use carefully!)
  String? nullableString = 'This is not empty';
  String nonNullableString = nullableString!; // Asserts it's not empty
  
  print('Non-nullable string: $nonNullableString');
  
  // 5. Practical example with user data
  User? user = getUser();
  
  if (user != null) {
    print('User: ${user.name}');
    print('Email: ${user.email}');
    print('Age: ${user.age}');
  } else {
    print('No user found');
  }
  
  // Using null-aware operators for cleaner code
  print('User name: ${user?.name ?? 'Guest'}');
  print('User email: ${user?.email ?? 'No email'}');
  print('User age: ${user?.age ?? 0}');
  
  print('');
}

// Enum for user roles
enum UserRole {
  admin,    // 0
  student,  // 1
  teacher,  // 2
  guest     // 3
}

// Enum for button types
enum ButtonType {
  primary,
  secondary,
  danger,
  success
}

// Enum for app states
enum AppState {
  initial,
  loading,
  loaded,
  error,
  empty
}

// Simple enum for message types
enum MessageType {
  success,
  error,
  warning,
  info
}

// Function to describe user roles
void describeMyRole(UserRole role) {
  switch (role) {
    case UserRole.admin:
      print('Admin has full access to everything');
      break;
    case UserRole.student:
      print('Student can access learning materials');
      break;
    case UserRole.teacher:
      print('Teacher can create and manage content');
      break;
    case UserRole.guest:
      print('Guest has limited access');
      break;
  }
}

// Function to show messages
void showMessage(MessageType message) {
  switch (message) {
    case MessageType.success:
      print('✅ Success: Everything worked perfectly!');
      break;
    case MessageType.error:
      print('❌ Error: Something went wrong');
      break;
    case MessageType.warning:
      print('⚠️ Warning: Please check your input');
      break;
    case MessageType.info:
      print('ℹ️ Info: Here is some information');
      break;
  }
}

// Helper function to simulate getting user name
String getUserName() {
  // Simulate some processing time
  return 'Om Sharma';
}

// User class for null safety examples
class User {
  final String name;
  final String email;
  final int age;
  
  User({
    required this.name,
    required this.email,
    required this.age,
  });
}

// Helper function to simulate getting user data
User? getUser() {
  // Simulate API call that might return null
  bool userExists = true; // Change to false to test null case
  
  if (userExists) {
    return User(
      name: 'Abhishek Kumar',
      email: 'abhishek@example.com',
      age: 22,
    );
  } else {
    return null;
  }
}
