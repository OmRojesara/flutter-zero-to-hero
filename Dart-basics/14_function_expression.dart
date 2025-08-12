// Learning about function expressions in Dart
// Function expressions provide a shorter syntax for simple functions

void main() {
  // Calling our functions written in short syntax
  
  // Calculate perimeter using short syntax
  calculatePerimeter(4, 2);
  
  // Calculate area and store the result
  int rectangleArea = calculateArea(10, 5);
  print("The area of the rectangle is $rectangleArea");
  
  // Testing with different values
  calculatePerimeter(8, 6);
  int bigArea = calculateArea(15, 10);
  print("Big rectangle area: $bigArea");
}

// Short syntax for perimeter calculation
void calculatePerimeter(int length, int width) => 
    print("The perimeter of the rectangle is ${2 * (length + width)}");

// Short syntax for area calculation
int calculateArea(int length, int width) => length * width;

// Notes about the fat arrow syntax:
// "=>" is called the FAT ARROW
// "=> expression" is shorthand for { return expression; }
// Example: "=> length * width" is shorthand for { return length * width; }
// This makes code more concise for simple functions
