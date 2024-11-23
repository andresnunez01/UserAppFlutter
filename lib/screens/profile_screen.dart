import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF2575FC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: const Icon(Icons.person, size: 40, color: Colors.blue),
                title: Text('Name: ${args['name']}'),
                subtitle: Text('Age: ${args['age']}'),
              ),
            ),
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: const Icon(Icons.work, size: 40, color: Colors.blue),
                title: const Text('Ocupation'),
                subtitle: Text('${args['occupation']}'),
              ),
            ),
            const Spacer(),
            ElevatedButton.icon(
              icon: const Icon(Icons.home),
              label: const Text('Go back'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
