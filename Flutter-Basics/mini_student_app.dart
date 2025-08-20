import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Form',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const StudentFormScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StudentFormScreen extends StatefulWidget {
  const StudentFormScreen({super.key});
  @override
  State<StudentFormScreen> createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends State<StudentFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();

  final _departments = ['CS', 'ECE', 'ME', 'CE'];
  String? _dept;

  String _gender = 'Male';

  bool _hobbyReading = false;
  bool _hobbySports = false;

  DateTime? _dob;
  final _fmt = DateFormat('dd MMM yyyy');

  String _summary = '';

  static const kName = 'name';
  static const kEmail = 'email';
  static const kDept = 'dept';
  static const kGender = 'gender';
  static const kDob = 'dob';
  static const kHRead = 'h_read';
  static const kHSport = 'h_sport';

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _dob ?? DateTime(now.year - 20, now.month, now.day),
      firstDate: DateTime(now.year - 60),
      lastDate: DateTime(now.year - 15),
      helpText: 'Select Date of Birth',
    );
    if (picked != null) {
      setState(() => _dob = picked);
    }
  }

  String _makeSummary() {
    if (_nameCtrl.text.trim().isEmpty ||
        _emailCtrl.text.trim().isEmpty ||
        _dept == null ||
        _dob == null) {
      return '';
    }
    final hobbies = [
      if (_hobbyReading) 'Reading',
      if (_hobbySports) 'Sports',
    ];
    final hobbyStr = hobbies.isEmpty ? 'None' : hobbies.join(', ');
    return 'Name: ${_nameCtrl.text.trim()}\n'
        'Email: ${_emailCtrl.text.trim()}\n'
        'Department: $_dept\n'
        'Gender: $_gender\n'
        'DOB: ${_fmt.format(_dob!)}\n'
        'Hobbies: $hobbyStr';
  }

  void _snack(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_dept == null) {
      _snack('Select Department');
      return;
    }
    if (_dob == null) {
      _snack('Select Date of Birth');
      return;
    }
    final p = await SharedPreferences.getInstance();
    await p.setString(kName, _nameCtrl.text.trim());
    await p.setString(kEmail, _emailCtrl.text.trim());
    await p.setString(kDept, _dept!);
    await p.setString(kGender, _gender);
    await p.setString(kDob, _dob!.toIso8601String());
    await p.setBool(kHRead, _hobbyReading);
    await p.setBool(kHSport, _hobbySports);
    setState(() => _summary = _makeSummary());
    _snack('Saved');
  }

  Future<void> _load() async {
    final p = await SharedPreferences.getInstance();
    setState(() {
      _nameCtrl.text = p.getString(kName) ?? '';
      _emailCtrl.text = p.getString(kEmail) ?? '';
      _dept = p.getString(kDept);
      _gender = p.getString(kGender) ?? 'Male';
      final dobStr = p.getString(kDob);
      _dob = dobStr != null ? DateTime.tryParse(dobStr) : null;
      _hobbyReading = p.getBool(kHRead) ?? false;
      _hobbySports = p.getBool(kHSport) ?? false;
      _summary = _makeSummary();
    });
  }

  Future<void> _clear() async {
    final p = await SharedPreferences.getInstance();
    await p.remove(kName);
    await p.remove(kEmail);
    await p.remove(kDept);
    await p.remove(kGender);
    await p.remove(kDob);
    await p.remove(kHRead);
    await p.remove(kHSport);
    setState(() {
      _nameCtrl.clear();
      _emailCtrl.clear();
      _dept = null;
      _gender = 'Male';
      _dob = null;
      _hobbyReading = false;
      _hobbySports = false;
      _summary = '';
    });
    _snack('Cleared');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Form')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Form card (inline; no _buildForm method)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) return 'Enter name';
                          if (v.trim().length < 3) return 'Too short';
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _emailCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) return 'Enter email';
                          final ok = RegExp(r'^[\w\.\-]+@[\w\.\-]+\.\w+$').hasMatch(v.trim());
                          if (!ok) return 'Invalid email';
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        value: _dept,
                        decoration: const InputDecoration(
                          labelText: 'Department',
                          prefixIcon: Icon(Icons.school),
                        ),
                        items: _departments
                            .map((d) => DropdownMenuItem(value: d, child: Text(d)))
                            .toList(),
                        onChanged: (v) => setState(() => _dept = v),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Gender:', style: TextStyle(fontWeight: FontWeight.w600)),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<String>(
                              value: 'Male',
                              groupValue: _gender,
                              onChanged: (v) => setState(() => _gender = v!),
                              title: const Text('Male'),
                              dense: true,
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<String>(
                              value: 'Female',
                              groupValue: _gender,
                              onChanged: (v) => setState(() => _gender = v!),
                              title: const Text('Female'),
                              dense: true,
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<String>(
                              value: 'Other',
                              groupValue: _gender,
                              onChanged: (v) => setState(() => _gender = v!),
                              title: const Text('Other'),
                              dense: true,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: _pickDate,
                        child: InputDecorator(
                          decoration: const InputDecoration(
                            labelText: 'Date of Birth',
                            prefixIcon: Icon(Icons.cake),
                          ),
                          child: Text(_dob == null ? 'Select date' : _fmt.format(_dob!)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Hobbies:', style: TextStyle(fontWeight: FontWeight.w600)),
                      ),
                      CheckboxListTile(
                        value: _hobbyReading,
                        onChanged: (v) => setState(() => _hobbyReading = v ?? false),
                        title: const Text('Reading'),
                        controlAffinity: ListTileControlAffinity.leading,
                        dense: true,
                      ),
                      CheckboxListTile(
                        value: _hobbySports,
                        onChanged: (v) => setState(() => _hobbySports = v ?? false),
                        title: const Text('Sports'),
                        controlAffinity: ListTileControlAffinity.leading,
                        dense: true,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: FilledButton.icon(
                              onPressed: _save,
                              icon: const Icon(Icons.save),
                              label: const Text('Save'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: _clear,
                              icon: const Icon(Icons.delete),
                              label: const Text('Clear'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Summary card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info, color: Theme.of(context).colorScheme.primary),
                        const SizedBox(width: 6),
                        const Text('Summary', style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    if (_summary.isEmpty)
                      const Text('Fill and Save to see summary here.')
                    else
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.4),
                        child: Text(_summary, style: const TextStyle(fontFamily: 'monospace')),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
