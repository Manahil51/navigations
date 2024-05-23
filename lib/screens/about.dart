import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  final Map studentData;
  const AboutView({super.key, required this.studentData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back to home screen"),
          ),
          Text(
            studentData['name'],
            style: TextStyle(fontSize: 30),
          ),
          Text(
            studentData['course'],
            style: TextStyle(fontSize: 30),
          ),
          Text(
            studentData['section'],
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
