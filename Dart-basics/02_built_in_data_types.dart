
void main(List<String> arguments) {
  // Learning about different data types in Dart
  
  // Integer types - whole numbers
  int playerScore = 23;
  var itemCount = 23; // Compiler automatically infers this as int
  int hexColor = 0xEADEBAEE; // Hexadecimal value
  
  // Double types - decimal numbers
  double examPercentage = 93.4;
  var discountPercent = 82.533;
  double scientificNumber = 1.42e5; // Scientific notation
  
  // String types - text
  String playerName = "Henry";
  var companyName = "Google";
  
  // Boolean types - true/false
  bool isUserValid = true;
  var isGameActive = false;
  
  // Testing our variables
  print("Player score: $playerScore");
  print("Scientific number: $scientificNumber");
  
  // Important note about Dart
  // All data types in Dart are Objects
  // Their default initial value is null
}
