// Learning about function parameters in Dart
// Understanding required vs optional positional parameters

void main() {
  // Testing functions with different parameter types
  
  // Function with all required parameters
  printCities("New York", "New Delhi", "Sydney");
  print(""); // Empty line for spacing
  
  // Function with optional parameters - you can skip them
  printCountries("USA"); // Only providing the required parameter
  
  // Testing with more optional parameters
  printCountries("India", "China"); // Providing 2 parameters
  printCountries("UK", "France", "Germany"); // Providing all 3 parameters
}

// Function with all required parameters
void printCities(String firstCity, String secondCity, String thirdCity) {
  print("First city is $firstCity");
  print("Second city is $secondCity");
  print("Third city is $thirdCity");
}

// Function with optional positional parameters
// Parameters in square brackets [] are optional
void printCountries(String firstCountry, [String? secondCountry, String? thirdCountry]) {
  print("First country is $firstCountry");
  print("Second country is $secondCountry");
  print("Third country is $thirdCountry");
}
