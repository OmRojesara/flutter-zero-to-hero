import 'package:flutter/material.dart';

// STEP 1: Import Flutter Material package (gives access to ready UI widgets)

// STEP 2: Create root widget of the app
// StatelessWidget = UI does not change during runtime (no internal state)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // STEP 3: build() returns the widget tree to show on screen
  @override
  Widget build(BuildContext context) {
    // Text to show on the screen
    final Text helloText = const Text(
      'Hello World!',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );

    // A button that prints a message to the console when pressed
    final ElevatedButton elevatedButton = ElevatedButton(
      onPressed: () {
        // Action when button is tapped
        print('Button Pressed');
      },
      child: const Text('Click Me'),
    );

    // Center the text widget in the middle of the screen
    final Center centeredText = Center(child: helloText);

    // Add vertical space between text and button
    const SizedBox space = SizedBox(height: 20);

    // Arrange widgets vertically
    final Column column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        centeredText, // 1) Hello text
        space,        // 2) Space
        elevatedButton, // 3) Button
      ],
    );

    // App bar at the top
    final AppBar appBar = AppBar(
      title: const Text('Hello Appbar'),
    );

    // Page layout: app bar + body
    final Scaffold firstScreen = Scaffold(
      appBar: appBar,
      body: column,
    );

    // Root of the app that uses Material Design styling
    final MaterialApp myApp = MaterialApp(
      title: 'Hello World App',
      home: firstScreen,
      debugShowCheckedModeBanner: false,
    );

    return myApp; // return the app to show
  }
}

// STEP 4: main() is the entry point (program starts here)
void main() {
  runApp(const MyApp()); // Run the app by passing the root widget
}
