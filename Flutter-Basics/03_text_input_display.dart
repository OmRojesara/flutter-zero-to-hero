import 'package:flutter/material.dart';

// App that takes text input and shows it when you press the button
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // STEP 1: Controller reads text from TextField
  final TextEditingController textEditingController = TextEditingController();

  // STEP 2: Variable to hold submitted text (shown below)
  String displayedText = '';
  
  @override
  Widget build(BuildContext context) {
    // STEP 3: Text UI that shows the latest submitted value
    final Text helloText = Text(
      'Hello: $displayedText',
      style: const TextStyle(fontSize: 22),
    );

    // STEP 4: Button to copy TextField value into displayedText
    final ElevatedButton submitButton = ElevatedButton(
      onPressed: () {
        setState(() {
          displayedText = textEditingController.text; // update from input
        });
      },
      child: const Text('Show Text'),
    );

    // STEP 5: Text input box where user types
    final TextField textField = TextField(
      controller: textEditingController,
      decoration: const InputDecoration(
        labelText: 'Type something here',
        border: OutlineInputBorder(),
      ),
    );

    // Space between widgets
    const SizedBox space = SizedBox(height: 16);

    // Arrange input, button, and result vertically
    final Column column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        textField,
        space,
        submitButton,
        space,
        Center(child: helloText),
      ],
    );

    // Top bar
    final AppBar appBar = AppBar(
      title: const Text('Text Input Display'),
    );

    // Page with padding
    final Scaffold firstScreen = Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: column,
      ),
    );

    // Root app
    final MaterialApp myApp = MaterialApp(
      title: 'Text Input App',
      home: firstScreen,
      debugShowCheckedModeBanner: false,
    );

    return myApp;
  }
}

// Entry point
void main() {
  runApp(const MyApp());
}