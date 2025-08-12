import 'package:flutter/material.dart';

// Simple calculator: +, -, ×, ÷ with safe number parsing
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // STEP 1: Controllers read numbers from input boxes
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  // STEP 2: Result text to display
  String result = '';

  // STEP 3: Calculate based on operation
  void _calculate(String operation) {
    // Try to convert text to integers; if invalid -> null
    final int? num1 = int.tryParse(controller1.text.trim());
    final int? num2 = int.tryParse(controller2.text.trim());

    if (num1 == null || num2 == null) {
      setState(() {
        result = 'Please enter valid whole numbers in both boxes';
      });
      return;
    }

    setState(() {
      switch (operation) {
        case '+':
          result = (num1 + num2).toString();
          break;
        case '-':
          result = (num1 - num2).toString();
          break;
        case '×':
          result = (num1 * num2).toString();
          break;
        case '÷':
          if (num2 == 0) {
            result = 'Cannot divide by 0';
          } else {
            result = (num1 / num2).toString();
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // STEP 4: Number input fields
    final TextField textField1 = TextField(
      controller: controller1,
      decoration: const InputDecoration(
        labelText: 'Enter first number',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number, // show number keyboard
    );

    final TextField textField2 = TextField(
      controller: controller2,
      decoration: const InputDecoration(
        labelText: 'Enter second number',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );

    // STEP 5: Result text
    final Text resultText = Text(
      'Result: $result',
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );

    // Spacing
    const SizedBox space = SizedBox(height: 16);

    // STEP 6: Operation buttons
    final ElevatedButton addButton = ElevatedButton(
      onPressed: () => _calculate('+'),
      child: const Text('+'),
    );

    final ElevatedButton subButton = ElevatedButton(
      onPressed: () => _calculate('-'),
      child: const Text('-'),
    );

    final ElevatedButton mulButton = ElevatedButton(
      onPressed: () => _calculate('×'),
      child: const Text('×'),
    );

    final ElevatedButton divButton = ElevatedButton(
      onPressed: () => _calculate('÷'),
      child: const Text('÷'),
    );

    // STEP 7: Buttons row
    final Row buttonsRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [addButton, subButton, mulButton, divButton],
    );

    // STEP 8: Page layout
    final Column column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textField1,
        space,
        textField2,
        space,
        buttonsRow,
        space,
        resultText,
      ],
    );

    final AppBar appBar = AppBar(
      title: const Text('Simple Calculator'),
    );

    final Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: column,
      ),
    );

    final MaterialApp materialApp = MaterialApp(
      home: scaffold,
      debugShowCheckedModeBanner: false,
    );

    return materialApp;
  }
}

// Entry point
void main() {
  runApp(const MyApp());
}