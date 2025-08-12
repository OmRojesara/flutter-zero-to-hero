// Dart Examples Runner
// This script runs all the Dart example files in sequence
// to demonstrate the complete learning path

import 'dart:io';

void main() async {
  print('🚀 Dart Basics - Complete Learning Repository');
  print('=' * 50);
  print('');
  
  // List of example files in learning order
  List<String> examples = [
    '01_basic_data_types.dart',
    '02_functions.dart',
    '03_collections.dart',
    '04_classes_objects.dart',
    '05_enums_null_safety.dart',
    '06_control_flow.dart',
  ];
  
  print('📚 Running all examples in sequence...\n');
  
  for (int i = 0; i < examples.length; i++) {
    String file = examples[i];
    print('${'=' * 60}');
    print('📖 Example ${i + 1}/${examples.length}: $file');
    print('${'=' * 60}');
    
    try {
      // Check if file exists
      if (await File(file).exists()) {
        // Run the Dart file
        ProcessResult result = await Process.run('dart', [file]);
        
        if (result.exitCode == 0) {
          print(result.stdout);
          if (result.stderr.isNotEmpty) {
            print('⚠️  Warnings/Info:');
            print(result.stderr);
          }
        } else {
          print('❌ Error running $file:');
          print(result.stderr);
        }
      } else {
        print('❌ File not found: $file');
      }
    } catch (e) {
      print('❌ Exception running $file: $e');
    }
    
    print('\n');
    
    // Small delay between examples for readability
    await Future.delayed(Duration(milliseconds: 500));
  }
  
  print('${'=' * 60}');
  print('🎉 All examples completed!');
  print('💡 Review the output above to learn Dart concepts.');
  print('📖 Check the README.md for detailed explanations.');
  print('🚀 Ready to build amazing Flutter apps!');
  print('${'=' * 60}');
}
