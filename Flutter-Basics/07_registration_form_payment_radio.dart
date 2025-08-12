import 'package:flutter/material.dart';

// Registration with gender dropdown and payment method (radio buttons)
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // STEP 1: Controllers for first and last name
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  // STEP 2: Dropdown + payment values
  String selectedGender = 'Male';
  String selectedPaymentMethod = 'Cash on Delivery'; // Default selection
  String result = '';

  // STEP 3: Handle register button
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
      result = 'First Name: $fname\nLast Name: $lname\nGender: $selectedGender\nPayment Method: $selectedPaymentMethod';
    });
  }

  @override
  Widget build(BuildContext context) {
    // STEP 4: Text fields
    final TextField firstNameField = TextField(
      controller: firstNameController,
      decoration: const InputDecoration(labelText: 'Enter First Name', border: OutlineInputBorder()),
    );

    final TextField lastNameField = TextField(
      controller: lastNameController,
      decoration: const InputDecoration(labelText: 'Enter Last Name', border: OutlineInputBorder()),
    );

    // STEP 5: Gender dropdown
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

    // STEP 6: Payment radio options
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

    // STEP 7: Register button and result text
    final ElevatedButton registerButton = ElevatedButton(
      onPressed: _register,
      child: const Text('Register'),
    );

    final Text resultText = Text(
      result,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );

    // STEP 8: Page layout
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
        registerButton,
        space,
        resultText,
      ],
    );

    final AppBar appBar = AppBar(
      title: const Text('Registration Form with Payment'),
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