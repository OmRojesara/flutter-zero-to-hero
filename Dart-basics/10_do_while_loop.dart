
void main() {
  // Learning about do-while loops in Dart
  // Do-while executes at least once before checking condition
  
  // Finding even numbers from 1 to 10
  print("Even numbers from 1 to 10:");
  int counter = 1;
  
  do {
    if (counter % 2 == 0) {
      print(counter);
    }
    counter++;
  } while (counter <= 10);
  
  // Another example - menu simulation
  print("\nMenu simulation:");
  int choice = 5;
  
  do {
    print("Current choice: $choice");
    choice--;
  } while (choice > 0);
  
  // Do-while with user input simulation
  print("\nUser input simulation:");
  int userInput = 0;
  
  do {
    print("Processing input: $userInput");
    userInput++;
  } while (userInput < 3);
  
  print("Input processing complete!");
}
