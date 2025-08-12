import 'package:flutter/material.dart';

// Registration with gender dropdown, payment method (radios), and hobbies (checkboxes)
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // STEP 1: Controllers for first and last name
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  // STEP 2: Dropdown and other values
  String selectedGender = 'Male';
  String selectedPaymentMethod = 'Cash on Delivery'; // default
  String result = '';

  // STEP 3: Hobbies checkboxes (booleans)
  bool isReading = false;
  bool isCricket = false;
  bool isRunning = false;

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

    // Collect selected hobbies into a list
    final List<String> selectedHobbies = [];
    if (isReading) selectedHobbies.add('Reading');
    if (isCricket) selectedHobbies.add('Cricket');
    if (isRunning) selectedHobbies.add('Running');
    final String hobbiesStr = selectedHobbies.isEmpty ? 'None' : selectedHobbies.join(', ');

    setState(() {
      result = 'First Name: $fname\nLast Name: $lname\nGender: $selectedGender\nPayment Method: $selectedPaymentMethod\nHobbies: $hobbiesStr';
    });
  }

  @override
  Widget build(BuildContext context) {
    // STEP 5: Text fields
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

    // STEP 7: Payment method radios
    final RadioListTile<String> codTile = RadioListTile<String>(
      value: 'Cash on Delivery',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: const Text('Cash on Delivery'),
    );

    final RadioListTile<String> creditCardTile = RadioListTile<String>(
      value: 'Credit Card',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: const Text('Credit Card'),
    );

    final RadioListTile<String> onlineBankingTile = RadioListTile<String>(
      value: 'Online Banking',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: const Text('Online Banking'),
    );

    final RadioListTile<String> upiTile = RadioListTile<String>(
      value: 'UPI',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: const Text('UPI'),
    );

    // STEP 8: Hobbies checkboxes
    final CheckboxListTile readingCheckbox = CheckboxListTile(
      title: const Text('Reading'),
      value: isReading,
      onChanged: (bool? value) {
        setState(() {
          if (value != null) isReading = value;
        });
      },
    );

    final CheckboxListTile cricketCheckbox = CheckboxListTile(
      title: const Text('Cricket'),
      value: isCricket,
      onChanged: (bool? value) {
        setState(() {
          if (value != null) isCricket = value;
        });
      },
    );

    final CheckboxListTile runningCheckbox = CheckboxListTile(
      title: const Text('Running'),
      value: isRunning,
      onChanged: (bool? value) {
        setState(() {
          if (value != null) isRunning = value;
        });
      },
    );

    // STEP 9: Register button and result text
    final ElevatedButton registerButton = ElevatedButton(
      onPressed: _register,
      child: const Text('Register'),
    );

    final Text resultText = Text(
      result,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );

    // STEP 10: Page layout
    const SizedBox space = SizedBox(height: 20);

    final Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        firstNameField,
        space,
        lastNameField,
        space,
        genderDropdown,
        space,
        const Text('Select Payment Method:', style: TextStyle(fontSize: 16)),
        codTile,
        creditCardTile,
        onlineBankingTile,
        upiTile,
        space,
        const Text('Select Hobbies:', style: TextStyle(fontSize: 16)),
        readingCheckbox,
        cricketCheckbox,
        runningCheckbox,
        space,
        registerButton,
        space,
        resultText,
      ],
    );

    final AppBar appBar = AppBar(
      title: const Text('Registration Form with Hobbies'),
    );

    final Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
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