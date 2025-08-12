
void main() {
  // Learning about while loops in Dart
  
  // While loop - finding even numbers from 1 to 10
  print("Even numbers from 1 to 10:");
  var counter = 1;
  
  while (counter <= 10) {
    if (counter % 2 == 0) {
      print(counter);
    }
    counter++;
  }
  
  // Another example - countdown timer
  print("\nCountdown timer:");
  int timeLeft = 10;
  
  while (timeLeft > 0) {
    print("$timeLeft seconds remaining...");
    timeLeft--;
  }
  print("Time's up!");
  
  // While loop with user input simulation
  print("\nSimulating user input:");
  int attempts = 0;
  int maxAttempts = 3;
  
  while (attempts < maxAttempts) {
    print("Attempt ${attempts + 1} of $maxAttempts");
    attempts++;
  }
  print("Maximum attempts reached!");
}
