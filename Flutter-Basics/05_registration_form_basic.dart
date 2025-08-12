import 'package:flutter/material.dart';

// Basic registration form: First name, Last name, Gender
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // STEP 1: Controllers to read user input
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  // STEP 2: Dropdown value for Gender
  String selectedGender = 'Male';

  // STEP 3: Output text shown at bottom
  String result = '';

  // STEP 4: On Register button click
  void _register() {
    final String fname = firstNameController.text.trim();
    final String lname = lastNameController.text.trim();

    // Simple validation
    if (fname.isEmpty || lname.isEmpty) {
      setState(() {
        result = 'Please enter both first and last name';
      });
      return;
    }

    // Create output string
    setState(() {
      result = 'First Name: $fname\nLast Name: $lname\nGender: $selectedGender';
    });
  }

  @override
  Widget build(BuildContext context) {
    // STEP 5: Input fields
    final TextField firstNameField = TextField(
      controller: firstNameController,
      decoration: const InputDecoration(labelText: 'Enter First Name', border: OutlineInputBorder()),
    );

    final TextField lastNameField = TextField(
      controller: lastNameController,
      decoration: const InputDecoration(labelText: 'Enter Last Name', border: OutlineInputBorder()),
    );

    // STEP 6: Gender dropdown
    final List<DropdownMenuItem<String>> genderItems = const [
      DropdownMenuItem(value: 'Male', child: Text('Male')),
      DropdownMenuItem(value: 'Female', child: Text('Female')),
      DropdownMenuItem(value: 'Other', child: Text('Other')),
    ];

    final DropdownButton<String> genderDropdown = DropdownButton<String>(
      value: selectedGender,
      items: genderItems,
      onChanged: (String? newValue) {
        setState(() {
          if (newValue != null) selectedGender = newValue;
        });
      },
    );

    // STEP 7: Register Button
    final ElevatedButton registerButton = ElevatedButton(
      onPressed: _register,
      child: const Text('Register'),
    );

    // STEP 8: Result Text
    final Text resultText = Text(
      result,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );

    // STEP 9: Layout
    const SizedBox space = SizedBox(height: 20);

    final Column column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        firstNameField,
        space,
        lastNameField,
        space,
        genderDropdown,
        space,
        registerButton,
        space,
        resultText,
      ],
    );

    final AppBar appBar = AppBar(
      title: const Text('Registration Form'),
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