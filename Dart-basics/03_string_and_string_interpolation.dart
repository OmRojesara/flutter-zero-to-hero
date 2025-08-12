
void main() {
  // Learning about strings and string interpolation in Dart
  
  // Some basic literals
  var isGameCool = true;
  int playerLevel = 2;
  "John"; // String literal
  4.5; // Double literal
  
  // Different ways to create strings
  String singleQuote = 'Single quotes work';
  String doubleQuote = "Double quotes also work";
  String escapeSingle = 'It\'s easy to escape';
  String noEscape = "It's easy without escaping";
  
  // Multi-line string using concatenation
  String longMessage = 'This is going to be a very long String. '
      'This is just a sample String demo in Dart Programming Language';
  
  // String interpolation - much better than concatenation
  String playerName = "Kevin";
  
  print("My name is $playerName");
  print("The number of characters in name Kevin is ${playerName.length}");
  
  // Using variables in strings
  int rectangleLength = 20;
  int rectangleWidth = 10;
  
  print("The sum of $rectangleLength and $rectangleWidth is ${rectangleLength + rectangleWidth}");
  print("The area of rectangle with length $rectangleLength and width $rectangleWidth is ${rectangleLength * rectangleWidth}");
  
  // Testing our string variables
  print(longMessage);
  print(escapeSingle);
  print(noEscape);
}
