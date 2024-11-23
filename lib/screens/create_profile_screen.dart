import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _occupationController = TextEditingController();

  void _saveProfile() {
    Navigator.pushNamed(
      context,
      '/profile',
      arguments: {
        'name': _nameController.text,
        'age': _ageController.text,
        'occupation': _occupationController.text,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF36D1DC), Color(0xFF5B86E5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Create Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _ageController,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_today),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _occupationController,
                    decoration: const InputDecoration(
                      labelText: 'Ocupation',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.work),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    label: const Text('Save Profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                    ),
                    onPressed: _saveProfile,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
