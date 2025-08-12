import 'package:flutter/material.dart';

// Registration form with a dropdown for gender (simple and clear)
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // STEP 1: Controllers for text inputs
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  // STEP 2: Selected value for dropdown
  String selectedGender = 'Male';

  // STEP 3: Result text
  String result = '';

  // STEP 4: Register button action
  void _register() {
    final String fname = firstNameController.text.trim();
    final String lname = lastNameController.text.trim();

    if (fname.isEmpty || lname.isEmpty) {
      setState(() {
        result = 'Please enter both first and last name';
      });
      return;
    }

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
    final DropdownButton<String> genderDropdown = DropdownButton<String>(
      value: selectedGender,
      items: <String>['Male', 'Female', 'Other']
          .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
          .toList(),
      onChanged: (String? newValue) {
        setState(() {
          if (newValue != null) selectedGender = newValue;
        });
      },
    );

    // STEP 7: Register button
    final ElevatedButton registerButton = ElevatedButton(
      onPressed: _register,
      child: const Text('Register'),
    );

    // STEP 8: Output text
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