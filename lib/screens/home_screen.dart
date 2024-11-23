import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle, size: 100, color: Colors.white),
              const SizedBox(height: 20),
              Text(
                '¡Welcome!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Create Profile',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                icon: const Icon(Icons.person_add, size: 24),
                label: const Text(
                  'Create Profile',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  shadowColor: Colors.black.withOpacity(0.3),
                  elevation: 8,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/create-profile');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
