
void main() {
  // Learning about the continue keyword in Dart
  // Continue skips the current iteration and continues with the next
  
  // Using continue with nested for loops
  print("Nested loop example with continue:");
  
  mainLoop: for (int row = 1; row <= 3; row++) {
    subLoop: for (int col = 1; col <= 3; col++) {
      
      // Skip printing when we reach row 2, column 2
      if (row == 2 && col == 2) {
        print("Skipping row $row, column $col");
        continue mainLoop; // Skip to next iteration of main loop
      }
      
      print("Row $row, Column $col");
    }
  }
  
  // Another example - filtering numbers
  print("\nFiltering even numbers:");
  for (int number = 1; number <= 10; number++) {
    if (number % 2 != 0) {
      continue; // Skip odd numbers
    }
    print("Even number: $number");
  }
  
  // Continue in while loop
  print("\nWhile loop with continue:");
  int counter = 0;
  
  while (counter < 10) {
    counter++;
    
    if (counter == 5) {
      print("Skipping number 5");
      continue;
    }
    
    print("Processing number: $counter");
  }
}
