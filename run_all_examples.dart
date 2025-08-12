// Run All Dart Examples - Simple Runner for Beginners
// This file runs all the example programs one by one

void main() {
  print('=== Welcome to Dart Basics Learning! ===\n');
  print('This will run all the example programs to help you learn Dart.\n');
  
  // List of all example files
  List<String> examples = [
    '01_basic_data_types.dart',
    '02_functions.dart', 
    '03_collections.dart',
    '04_classes_objects.dart',
    '05_enums_null_safety.dart',
    '06_control_flow.dart'
  ];
  
  // Run each example
  for (int i = 0; i < examples.length; i++) {
    print('${'=' * 50}');
    print('Running Example ${i + 1}: ${examples[i]}');
    print('${'=' * 50}');
    
    try {
      // Import and run each file
      switch (examples[i]) {
        case '01_basic_data_types.dart':
          runBasicDataTypes();
          break;
        case '02_functions.dart':
          runFunctions();
          break;
        case '03_collections.dart':
          runCollections();
          break;
        case '04_classes_objects.dart':
          runClassesObjects();
          break;
        case '05_enums_null_safety.dart':
          runEnumsNullSafety();
          break;
        case '06_control_flow.dart':
          runControlFlow();
          break;
      }
    } catch (e) {
      print('Error running ${examples[i]}: $e');
    }
    
    print('\n${'=' * 50}');
    print('Completed Example ${i + 1}');
    print('${'=' * 50}\n');
    
    // Small pause between examples
    if (i < examples.length - 1) {
      print('Press Enter to continue to next example...');
      // In a real console app, you'd wait for user input
      print('(Continuing automatically...)\n');
    }
  }
  
  print('🎉 Congratulations! You have completed all Dart examples!');
  print('You now have a solid foundation in Dart programming.');
  print('Next step: Try Flutter for mobile app development!');
}

// Import and run functions from each file
void runBasicDataTypes() {
  // This would normally import and run the file
  // For now, we'll just show what it would do
  print('Running Basic Data Types Example...');
  print('This shows: int, double, String, bool, var, final, const');
}

void runFunctions() {
  print('Running Functions Example...');
  print('This shows: function definition, parameters, return values');
}

void runCollections() {
  print('Running Collections Example...');
  print('This shows: Lists, Sets, Maps');
}

void runClassesObjects() {
  print('Running Classes and Objects Example...');
  print('This shows: class definition, constructors, methods');
}

void runEnumsNullSafety() {
  print('Running Enums and Null Safety Example...');
  print('This shows: enums, null safety, late variables');
}

void runControlFlow() {
  print('Running Control Flow Example...');
  print('This shows: if-else, switch, loops, break, continue');
}
