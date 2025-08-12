
void main() {
  // Learning about for loops in Dart
  
  // Basic for loop - finding even numbers from 1 to 10
  print("Even numbers from 1 to 10:");
  for (int counter = 1; counter <= 10; counter++) {
    if (counter % 2 == 0) {
      print(counter);
    }
  }
  
  // For-in loop with a list
  List<String> solarSystem = ["Mercury", "Venus", "Earth", "Mars"];
  
  print("\nPlanets in our solar system:");
  for (String planet in solarSystem) {
    print(planet);
  }
  
  // Another example - counting down
  print("\nCountdown:");
  for (int countdown = 5; countdown > 0; countdown--) {
    print("$countdown...");
  }
  print("Blast off!");
  
  // For loop with step increment
  print("\nMultiples of 3:");
  for (int number = 3; number <= 15; number += 3) {
    print(number);
  }
}
