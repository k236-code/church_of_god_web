import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  // Add the key parameter in the constructor
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'), // const is fine here
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Settings'), // const is fine here
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  () {}, // Removing const here as ElevatedButton is dynamic
              child: const Text('Save'), // const is fine here
            ),
          ],
        ),
      ),
    );
  }
}
