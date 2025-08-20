/*
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.15   # (latest stable as of now)
*/


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final TextEditingController ageController = TextEditingController();

  // Gender
  String gender = "Male";

  // Result
  String result = "";

  // Save data
  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("firstName", firstNameController.text);
    await prefs.setString("lastName", lastNameController.text);
    await prefs.setString("age", ageController.text);
    await prefs.setString("gender", gender);

    setState(() {
      result = "Data Saved Successfully!";
    });
  }

  // Load data
  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? fname = prefs.getString("firstName");
    String? lname = prefs.getString("lastName");
    String? age = prefs.getString("age");
    String? gen = prefs.getString("gender");

    setState(() {
      result =
          "First Name: ${fname ?? ''}\n"
          "Last Name: ${lname ?? ''}\n"
          "Age: ${age ?? ''}\n"
          "Gender: ${gen ?? ''}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TextFields
    TextField firstNameField = TextField(
      controller: firstNameController,
      decoration: InputDecoration(labelText: "Enter First Name"),
    );

    TextField lastNameField = TextField(
      controller: lastNameController,
      decoration: InputDecoration(labelText: "Enter Last Name"),
    );

    TextField ageField = TextField(
      controller: ageController,
      decoration: InputDecoration(labelText: "Enter Age"),
      keyboardType: TextInputType.number,
    );

    // Gender Radios
    RadioListTile<String> maleRadio = RadioListTile<String>(
      title: Text("Male"),
      value: "Male",
      groupValue: gender,
      onChanged: (value) {
        setState(() {
          gender = value!;
        });
      },
    );

    RadioListTile<String> femaleRadio = RadioListTile<String>(
      title: Text("Female"),
      value: "Female",
      groupValue: gender,
      onChanged: (value) {
        setState(() {
          gender = value!;
        });
      },
    );

    RadioListTile<String> otherRadio = RadioListTile<String>(
      title: Text("Other"),
      value: "Other",
      groupValue: gender,
      onChanged: (value) {
        setState(() {
          gender = value!;
        });
      },
    );

    Column genderRadios = Column(
      children: [maleRadio, femaleRadio, otherRadio],
    );

    // Buttons
    ElevatedButton registerButton = ElevatedButton(
      onPressed: saveData,
      child: Text("Register"),
    );

    ElevatedButton loadButton = ElevatedButton(
      onPressed: loadData,
      child: Text("Load Data"),
    );

    // Result text
    Text resultText = Text(
      result,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );

    // Spacing
    SizedBox space = SizedBox(height: 20);

    // Column
    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        firstNameField,
        space,
        lastNameField,
        space,
        ageField,
        space,
        Text("Select Gender:", style: TextStyle(fontSize: 16)),
        genderRadios,
        space,
        registerButton,
        space,
        loadButton,
        space,
        resultText,
      ],
    );

    AppBar appBar = AppBar(
      title: Text("Registration with SharedPreferences"),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: column,
      ),
    );

    MaterialApp materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scaffold,
    );

    return materialApp;
  }
}

void main() {
  runApp(MyApp());
}