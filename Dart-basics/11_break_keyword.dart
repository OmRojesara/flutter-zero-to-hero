
void main() {
  // Learning about the break keyword in Dart
  // Break is used to exit loops early
  
  // Using break with nested for loops
  print("Nested loop example with break:");
  
  outerLoop: for (int row = 1; row <= 3; row++) {
    innerLoop: for (int col = 1; col <= 3; col++) {
      print("Row $row, Column $col");
      
      // Break out of outer loop when we reach row 2, column 2
      if (row == 2 && col == 2) {
        print("Breaking out of outer loop!");
        break outerLoop;
      }
    }
  }
  
  // Another example - searching through a list
  print("\nSearching through a list:");
  List<String> fruits = ["Apple", "Banana", "Orange", "Grape"];
  
  for (String fruit in fruits) {
    if (fruit == "Orange") {
      print("Found Orange! Breaking the loop.");
      break;
    }
    print("Checking: $fruit");
  }
  
  // Break in while loop
  print("\nWhile loop with break:");
  int number = 1;
  
  while (true) {
    if (number > 5) {
      print("Breaking at number: $number");
      break;
    }
    print("Number: $number");
    number++;
  }
}
