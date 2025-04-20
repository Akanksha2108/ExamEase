import 'package:flutter/material.dart';
import 'Exams/bsc/bsc.dart';
import 'Exams/tenth/tenth.dart';
import 'Exams/twelfth/twelfth.dart';
import 'Exams/twelfth/stream.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
centerTitle: true,
        title: Text('ExamEase Papers'),
      ),
      body: Container(
        decoration: BoxDecoration(
           gradient: LinearGradient(colors:[const Color.fromARGB(255, 154, 189, 202), Color.fromARGB(255, 29, 221, 163)],)
        ),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2, // Number of columns
            padding: EdgeInsets.all(16.0),
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: [
              _buildEducationLevelButton(context, '10th (SSC)', TenthPage()),
              _buildEducationLevelButton(context, '12th (HSC)', StreamPage()),
              _buildEducationLevelButton(context, 'Bachelor of Science', BscPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationLevelButton(
      BuildContext context, String title, Widget nextPage) {
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
