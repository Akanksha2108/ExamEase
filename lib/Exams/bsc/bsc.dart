import 'package:exam_explorer/Exams/bsc/IT.dart';
import 'package:exam_explorer/Exams/bsc/Comp.dart';
import 'package:flutter/material.dart';

class BscPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bachelor of Science'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            _buildEducationLevelButton(context, 'Information Technology (IT)', ITPage()),
            _buildEducationLevelButton(context, 'Computer Science (CS)', CompPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationLevelButton(BuildContext context, String title, Widget nextPage) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
