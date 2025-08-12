// Learning about functions in Dart
// Functions help us organize and reuse code

void main() {
  // Calling our custom functions
  
  // Calculate perimeter of a rectangle
  calculatePerimeter(4, 2);
  
  // Calculate area and store the result
  int rectangleArea = calculateArea(10, 5);
  print("The area of the rectangle is $rectangleArea");
  
  // Testing with different values
  calculatePerimeter(8, 6);
  int bigArea = calculateArea(15, 10);
  print("Big rectangle area: $bigArea");
}

// Function to calculate perimeter of a rectangle
void calculatePerimeter(int length, int width) {
  int perimeter = 2 * (length + width);
  print("The perimeter of the rectangle is $perimeter");
}

// Function to calculate area of a rectangle
int calculateArea(int length, int width) {
  int area = length * width;
  return area;
}
