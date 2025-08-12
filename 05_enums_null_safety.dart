// Enums and Null Safety in Dart
// This program demonstrates how to use enums for fixed choices
// and how null safety prevents runtime crashes

void main() {
  print('=== Dart Enums and Null Safety Demo ===\n');
  
  demonstrateEnums();
  demonstrateNullSafety();
  demonstrateLateVariables();
  demonstrateNullAwareOperators();
}

void demonstrateEnums() {
  print('--- ENUMS ---');
  
  // Enums are perfect for representing fixed sets of values
  UserRole currentRole = UserRole.editor;
  ButtonType buttonType = ButtonType.primary;
  
  print('Current user role: $currentRole');
  print('Button type: $buttonType');
  
  // Using enums in switch statements
  describeUserRole(currentRole);
  
  // Accessing enum properties
  print('Role name: ${currentRole.name}');
  print('Role index: ${currentRole.index}');
  
  // Iterating through all enum values
  print('\nAll available roles:');
  for (UserRole role in UserRole.values) {
    print('- ${role.name}');
  }
  
  // Using enums for UI state management
  AppState currentState = AppState.loading;
  print('\nApp state: $currentState');
  
  // Simulating state changes
  currentState = AppState.loaded;
  print('After loading: $currentState');
  
  // Using enums for status messages
  print('\n--- STATUS MESSAGES ---');
  StatusMessage message = StatusMessage.success;
  StatusMessage error = StatusMessage.error;
  
  handleStatusMessage(message);
  handleStatusMessage(error);
  
  print('');
}

void demonstrateNullSafety() {
  print('--- NULL SAFETY ---');
  
  // 1. Non-nullable variables (must be initialized)
  String name = 'John Doe';
  int age = 25;
  
  print('Name: $name');
  print('Age: $age');
  
  // This would cause a compile-time error:
  // String uninitializedName; // Error: must be initialized
  
  // 2. Nullable variables (can be null)
  String? nickname;
  int? score;
  
  print('Nickname: $nickname'); // Prints: null
  print('Score: $score');       // Prints: null
  
  // Assigning values to nullable variables
  nickname = 'Johnny';
  score = 95;
  
  print('After assignment:');
  print('Nickname: $nickname');
  print('Score: $score');
  
  // 3. Working with nullable variables safely
  String? email;
  
  // Safe access with null check
  if (email != null) {
    print('Email: ${email.toUpperCase()}');
  } else {
    print('Email not provided');
  }
  
  // Assigning email
  email = 'john@example.com';
  
  if (email != null) {
    print('Email: ${email.toUpperCase()}');
  }
  
  print('');
}

void demonstrateLateVariables() {
  print('--- LATE VARIABLES ---');
  
  // Late variables are initialized when first accessed
  late String greeting;
  late int calculatedValue;
  
  // They're not initialized yet, but we can assign them later
  greeting = 'Hello, World!';
  calculatedValue = 42;
  
  print('Greeting: $greeting');
  print('Calculated value: $calculatedValue');
  
  // Late variables are useful in Flutter widgets
  late String userName;
  
  // Simulating getting user name from somewhere
  userName = getUserName();
  print('User name: $userName');
  
  print('');
}

void demonstrateNullAwareOperators() {
  print('--- NULL AWARE OPERATORS ---');
  
  // 1. ?? operator (null coalescing)
  String? firstName;
  String? lastName = 'Smith';
  
  String displayName = firstName ?? 'Unknown';
  String fullName = firstName ?? 'Unknown' + ' ' + (lastName ?? '');
  
  print('Display name: $displayName');
  print('Full name: $fullName');
  
  // 2. ??= operator (null-aware assignment)
  String? userEmail;
  userEmail ??= 'default@example.com';
  print('User email: $userEmail');
  
  // Won't change if already has a value
  userEmail ??= 'new@example.com';
  print('User email after ??=: $userEmail');
  
  // 3. ?. operator (null-aware access)
  String? text;
  int? length = text?.length; // Safe access, returns null if text is null
  print('Text length: $length');
  
  text = 'Hello';
  length = text?.length;
  print('Text length after assignment: $length');
  
  // 4. ! operator (null assertion - use carefully!)
  String? nullableString = 'This is not null';
  String nonNullableString = nullableString!; // Asserts it's not null
  
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
  editor,   // 1
  viewer,   // 2
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

// Simple enum for status messages
enum StatusMessage {
  success,
  error,
  warning,
  info
}

// Function to describe user roles
void describeUserRole(UserRole role) {
  switch (role) {
    case UserRole.admin:
      print('Admin has full access to all features');
      break;
    case UserRole.editor:
      print('Editor can create and modify content');
      break;
    case UserRole.viewer:
      print('Viewer can only read content');
      break;
    case UserRole.guest:
      print('Guest has limited access');
      break;
  }
}

// Function to handle status messages
void handleStatusMessage(StatusMessage message) {
  switch (message) {
    case StatusMessage.success:
      print('✅ Success: Operation completed successfully');
      break;
    case StatusMessage.error:
      print('❌ Error: Something went wrong');
      break;
    case StatusMessage.warning:
      print('⚠️ Warning: Please check your input');
      break;
    case StatusMessage.info:
      print('ℹ️ Info: Here is some information');
      break;
  }
}

// Helper function to simulate getting user name
String getUserName() {
  // Simulate some processing time
  return 'John Doe';
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
      name: 'Alice Johnson',
      email: 'alice@example.com',
      age: 28,
    );
  } else {
    return null;
  }
}
