import 'package:exam_explorer/Exams/twelfth/hsc_page_2022.dart';
import 'package:exam_explorer/Exams/twelfth/hsc_page_2023.dart';
import 'package:exam_explorer/Exams/twelfth/hsc_page_2024.dart';
import 'package:flutter/material.dart';

class TwelfthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('12th (HSC)'),
      ),
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(colors:[const Color.fromARGB(255, 154, 189, 202), Color.fromARGB(255, 29, 221, 163)],)
    ),child: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            _buildEducationLevelButton(context, 'HSC 2022', HSCPage2022()),
            _buildEducationLevelButton(context, 'HSC 2023', HSCPage2023()),
            _buildEducationLevelButton(context, 'HSC 2024', HSCPage2024()),
          ],
        ),
      ),
    ));
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
