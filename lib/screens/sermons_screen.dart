import 'package:flutter/material.dart';
import '../services/firestore_service.dart';

class SermonsScreen extends StatefulWidget {
  @override
  _SermonsScreenState createState() => _SermonsScreenState();
}

class _SermonsScreenState extends State<SermonsScreen> {
  final firestoreService = FirestoreService();
  List<Map<String, dynamic>> sermons = [];

  @override
  void initState() {
    super.initState();
    loadSermons();
  }

  void loadSermons() async {
    var data = await firestoreService.getSermons();
    setState(() {
      sermons = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sermons")),
      body: ListView.builder(
        itemCount: sermons.length,
        itemBuilder: (context, index) {
          var sermon = sermons[index];
          return ListTile(
            title: Text(sermon['title'] ?? 'No Title'),
            subtitle: Text(sermon['date'] ?? ''),
          );
        },
      ),
    );
  }
}



