import 'package:flutter/material.dart';
import 'package:navigation/screens/about.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List studentsinfo = [
    {"name": "bilial", "course": "flutter", "section": "a"},
    {"name": "ali", "course": "Ai", "section": "b"},
    {"name": "sara", "course": "web", "section": "c"},
    {"name": "wahaj", "course": "graphic", "section": "a"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home page"),
      ),
      body: ListView.builder(
          itemCount: studentsinfo.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(bottom: 10),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AboutView(studentData: studentsinfo[index]),
                    ),
                  );
                },
                tileColor: Colors.grey,
                title: Text(studentsinfo[index]['name']),
              ),
            );
          }),
    );
  }
}
