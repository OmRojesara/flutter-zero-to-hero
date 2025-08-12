// Collections in Dart - Lists, Sets, and Maps
// This program demonstrates how to work with different collection types
// that are fundamental to Dart programming and Flutter development

void main() {
  print('=== Dart Collections Demo ===\n');
  
  demonstrateLists();
  demonstrateSets();
  demonstrateMaps();
  demonstrateCollectionOperations();
}

void demonstrateLists() {
  print('--- LISTS ---');
  
  // 1. Creating lists - different ways to initialize
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  var numbers = <int>[1, 2, 3, 4, 5];  // Type inference
  List<double> prices = List.filled(3, 0.0);  // Fixed-size list
  
  print('Fruits: $fruits');
  print('Numbers: $numbers');
  print('Prices: $prices');
  
  // 2. Adding elements
  fruits.add('Orange');           // Add single element
  fruits.addAll(['Grape', 'Kiwi']); // Add multiple elements
  print('After adding: $fruits');
  
  // 3. Inserting at specific positions
  fruits.insert(1, 'Pineapple');
  print('After inserting at index 1: $fruits');
  
  // 4. Removing elements
  fruits.remove('Banana');        // Remove by value
  fruits.removeAt(0);            // Remove by index
  print('After removing: $fruits');
  
  // 5. Accessing elements
  print('First fruit: ${fruits.first}');
  print('Last fruit: ${fruits.last}');
  print('Fruit at index 1: ${fruits[1]}');
  
  // 6. List properties
  print('List length: ${fruits.length}');
  print('Is empty: ${fruits.isEmpty}');
  print('Is not empty: ${fruits.isNotEmpty}');
  
  // 7. Iterating through lists
  print('\nIterating through fruits:');
  for (int i = 0; i < fruits.length; i++) {
    print('${i + 1}. ${fruits[i]}');
  }
  
  print('Using for-in loop:');
  for (String fruit in fruits) {
    print('Fruit: $fruit');
  }
  
  print('Using forEach:');
  fruits.forEach((fruit) => print('Fruit: $fruit'));
  
  // 8. List transformations
  List<String> upperFruits = fruits.map<String>((fruit) => fruit.toUpperCase()).toList();
  print('Uppercase fruits: $upperFruits');
  
  List<String> longFruits = fruits.where((fruit) => fruit.length > 4).toList();
  print('Fruits with more than 4 letters: $longFruits');
}

void demonstrateSets() {
  print('\n--- SETS ---');
  
  // Sets store unique values - no duplicates allowed
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};
  Set<String> programmingLanguages = {'Dart', 'Flutter', 'Java', 'Python'};
  
  print('Unique numbers: $uniqueNumbers');
  print('Programming languages: $programmingLanguages');
  
  // Adding elements
  uniqueNumbers.add(6);
  uniqueNumbers.addAll({7, 8, 9});
  print('After adding: $uniqueNumbers');
  
  // Adding duplicate won't change the set
  uniqueNumbers.add(1);  // 1 already exists
  print('After adding duplicate 1: $uniqueNumbers');
  
  // Set operations
  Set<int> evenNumbers = {2, 4, 6, 8, 10};
  Set<int> oddNumbers = {1, 3, 5, 7, 9};
  
  Set<int> union = evenNumbers.union(oddNumbers);
  Set<int> intersection = evenNumbers.intersection(oddNumbers);
  Set<int> difference = evenNumbers.difference(oddNumbers);
  
  print('Even numbers: $evenNumbers');
  print('Odd numbers: $oddNumbers');
  print('Union: $union');
  print('Intersection: $intersection');
  print('Difference (even - odd): $difference');
  
  // Iterating through sets
  print('\nProgramming languages:');
  programmingLanguages.forEach((language) => print('Language: $language'));
}

void demonstrateMaps() {
  print('\n--- MAPS ---');
  
  // Maps store key-value pairs
  Map<String, String> countryCapitals = {
    'India': 'New Delhi',
    'USA': 'Washington DC',
    'France': 'Paris',
    'Japan': 'Tokyo'
  };
  
  Map<String, int> studentAges = {
    'Alice': 20,
    'Bob': 22,
    'Charlie': 19
  };
  
  print('Country capitals: $countryCapitals');
  print('Student ages: $studentAges');
  
  // Adding/updating entries
  countryCapitals['Germany'] = 'Berlin';
  countryCapitals['India'] = 'New Delhi';  // Updates existing key
  
  print('After adding Germany: $countryCapitals');
  
  // Accessing values
  print('Capital of India: ${countryCapitals['India']}');
  print('Capital of UK: ${countryCapitals['UK']}');  // Returns null
  
  // Safe access with default value
  String ukCapital = countryCapitals['UK'] ?? 'Unknown';
  print('Capital of UK (with default): $ukCapital');
  
  // Checking if key exists
  if (countryCapitals.containsKey('France')) {
    print('France is in our map');
  }
  
  // Removing entries
  countryCapitals.remove('Japan');
  print('After removing Japan: $countryCapitals');
  
  // Iterating through maps
  print('\nCountry capitals:');
  countryCapitals.forEach((country, capital) {
    print('$country -> $capital');
  });
  
  // Using entries
  print('\nUsing entries:');
  for (var entry in countryCapitals.entries) {
    print('${entry.key}: ${entry.value}');
  }
  
  // Map transformations
  Map<String, String> upperCapitals = countryCapitals.map(
    (country, capital) => MapEntry(country, capital.toUpperCase())
  );
  print('Uppercase capitals: $upperCapitals');
}

void demonstrateCollectionOperations() {
  print('\n--- COLLECTION OPERATIONS ---');
  
  // Working with different collection types together
  List<String> names = ['Alice', 'Bob', 'Charlie', 'David'];
  Set<String> uniqueNames = names.toSet();  // Convert list to set
  Map<String, int> nameLengths = Map.fromIterables(
    names, 
    names.map((name) => name.length)
  );
  
  print('Names list: $names');
  print('Unique names set: $uniqueNames');
  print('Name lengths map: $nameLengths');
  
  // Filtering and mapping
  List<String> longNames = names.where((name) => name.length > 4).cast<String>().toList();
  List<int> nameLengthsList = names.map<int>((name) => name.length).toList();
  
  print('Names longer than 4 characters: $longNames');
  print('Length of each name: $nameLengthsList');
  
  // Sorting
  List<String> sortedNames = List.from(names)..sort();
  print('Sorted names: $sortedNames');
  
  // Reversing
  List reversedNames = List.from(names).reversed.toList();
  print('Reversed names: $reversedNames');
}
