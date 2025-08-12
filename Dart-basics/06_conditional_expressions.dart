
void main() {
  // Learning about conditional expressions in Dart
  
  // 1. Ternary operator: condition ? expression1 : expression2
  // If condition is true, evaluates expression1; otherwise evaluates expression2
  
  int firstNumber = 2;
  int secondNumber = 3;
  
  int smallerNumber = firstNumber < secondNumber ? firstNumber : secondNumber;
  print("$smallerNumber is the smaller number");
  
  // Another example with age
  var userAge = 20;
  String ageStatus = userAge >= 18 ? "Adult" : "Minor";
  print("Age status: $ageStatus");
  
  // 2. Null-aware operator: expression1 ?? expression2
  // If expression1 is non-null, returns its value; otherwise returns expression2
  
  String? userName = null;
  
  String displayName = userName ?? "Guest User";
  print("Welcome, $displayName!");
  
  // Testing with non-null value
  String actualName = "John";
  String finalName = actualName ?? "Guest User";
  print("Hello, $finalName!");
  
  // Combining both operators
  int? score = null;
  int finalScore = score ?? 0;
  String grade = finalScore >= 70 ? "Pass" : "Fail";
  print("Score: $finalScore, Grade: $grade");
}
