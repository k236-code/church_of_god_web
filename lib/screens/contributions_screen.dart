import 'package:flutter/material.dart';

class ContributionsScreen extends StatelessWidget {
  const ContributionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contributions")),
      body: Center(child: Text("Church Contributions")),
    );
  }
}

