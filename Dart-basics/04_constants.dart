
void main() {
  // Learning about constants in Dart
  
  // final keyword - can only be set once
  final hometown = 'Mumbai';
  // hometown = 'Peter'; // This would cause an error - can't change final
  
  final String countryName = 'India';
  
  // const keyword - compile-time constant
  const PI = 3.14;
  const double gravity = 9.8;
  
  // Testing our constants
  print("Hometown: $hometown");
  print("Country: $countryName");
  print("PI value: $PI");
  print("Gravity: $gravity");
}

class Circle {
  // Instance constant - each circle can have different color
  final color = 'Red';
  
  // Static constant - shared by all circles
  static const PI = 3.14;
}
