import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    MyAppState myAppState = MyAppState();
    return myAppState;
  }
}

class MyAppState extends State<MyApp> {
  // Controllers
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  // Dropdown and other values
  String selectedGender = 'Male';
  String selectedPaymentMethod = 'Cash on Delivery'; // default
  String result = '';

  // Hobbies checkboxes
  bool isReading = false;
  bool isCricket = false;
  bool isRunning = false;

  // NEW: Date of Birth
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    // TextFields
    TextField firstNameField = TextField(
      controller: firstNameController,
      decoration: InputDecoration(labelText: 'Enter First Name'),
    );

    TextField lastNameField = TextField(
      controller: lastNameController,
      decoration: InputDecoration(labelText: 'Enter Last Name'),
    );

    // Dropdown for gender
    List<DropdownMenuItem<String>> genderItems = [
      DropdownMenuItem(value: 'Male', child: Text('Male')),
      DropdownMenuItem(value: 'Female', child: Text('Female')),
      DropdownMenuItem(value: 'Other', child: Text('Other')),
    ];

    DropdownButton<String> genderDropdown = DropdownButton<String>(
      value: selectedGender,
      items: genderItems,
      onChanged: (String? newValue) {
        setState(() {
          if (newValue != null) selectedGender = newValue;
        });
      },
    );

    // RadioListTiles for payment method
    RadioListTile<String> codTile = RadioListTile<String>(
      value: 'Cash on Delivery',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: Text('Cash on Delivery'),
    );

    RadioListTile<String> creditCardTile = RadioListTile<String>(
      value: 'Credit Card',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: Text('Credit Card'),
    );

    RadioListTile<String> onlineBankingTile = RadioListTile<String>(
      value: 'Online Banking',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: Text('Online Banking'),
    );

    RadioListTile<String> upiTile = RadioListTile<String>(
      value: 'UPI',
      groupValue: selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          if (value != null) selectedPaymentMethod = value;
        });
      },
      title: Text('UPI'),
    );

    // CheckboxListTiles for hobbies
    CheckboxListTile readingCheckbox = CheckboxListTile(
      title: Text('Reading'),
      value: isReading,
      onChanged: (bool? value) {
        setState(() {
          if (value != null) isReading = value;
        });
      },
    );

    CheckboxListTile cricketCheckbox = CheckboxListTile(
      title: Text('Cricket'),
      value: isCricket,
      onChanged: (bool? value) {
        setState(() {
          if (value != null) isCricket = value;
        });
      },
    );

    CheckboxListTile runningCheckbox = CheckboxListTile(
      title: Text('Running'),
      value: isRunning,
      onChanged: (bool? value) {
        setState(() {
          if (value != null) isRunning = value;
        });
      },
    );

    // NEW: Date Picker button
    ElevatedButton dobButton = ElevatedButton(
      onPressed: () async {

        DateTime initial = selectedDate ?? DateTime(2000, 1, 1);
        DateTime first = DateTime(1900, 1, 1);
        DateTime last = DateTime.now();

        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initial,
          firstDate: first,
          lastDate: last,
        );

        if (pickedDate != null) {
          setState(() {
            selectedDate = pickedDate;
          });
        }
      },
      child: Text(
        selectedDate == null
            ? 'Select Date of Birth'
            : 'DOB: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
      ),
    );

    // Register Button
    ElevatedButton registerButton = ElevatedButton(
      onPressed: () {
        String fname = firstNameController.text;
        String lname = lastNameController.text;

        // Collect hobbies
        List<String> selectedHobbies = [];
        if (isReading) selectedHobbies.add("Reading");
        if (isCricket) selectedHobbies.add("Cricket");
        if (isRunning) selectedHobbies.add("Running");

        String hobbiesStr =
            selectedHobbies.isEmpty ? "None" : selectedHobbies.join(', ');

        // NEW: include DOB in result
        String dobStr = selectedDate == null
            ? "Not Selected"
            : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}";

        setState(() {
          result =
              'First Name: $fname\n'
              'Last Name: $lname\n'
              'Gender: $selectedGender\n'
              'Payment Method: $selectedPaymentMethod\n'
              'Hobbies: $hobbiesStr\n'
              'DOB: $dobStr';
        });
      },
      child: Text('Register'),
    );

    // Result Text
    Text resultText = Text(
      result,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );

    // SizedBox
    SizedBox space = SizedBox(height: 20);

    // Column
    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        firstNameField,
        space,
        lastNameField,
        space,
        genderDropdown,
        space,
        Text('Select Payment Method:', style: TextStyle(fontSize: 16)),
        codTile,
        creditCardTile,
        onlineBankingTile,
        upiTile,
        space,
        Text('Select Hobbies:', style: TextStyle(fontSize: 16)),
        readingCheckbox,
        cricketCheckbox,
        runningCheckbox,
        space,
        // NEW: Date picker button placed before Register
        dobButton,
        space,
        registerButton,
        space,
        resultText,
      ],
    );

    AppBar appBar = AppBar(
      title: Text('Registration Form + Date Picker'),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: column,
      ),
    );

    MaterialApp materialApp = MaterialApp(
      home: scaffold,
    );

    return materialApp;
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),  //  Wrap your widget in MaterialApp
  ));
}