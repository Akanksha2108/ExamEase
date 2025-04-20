import 'package:exam_explorer/pdf_viewer_page.dart';
import 'package:exam_explorer/urls.dart';
import 'package:flutter/material.dart';

class HSCPage2023 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('2023'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:[const Color.fromARGB(255, 154, 189, 202), Color.fromARGB(255, 29, 221, 163)],)
        ),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            _buildEducationLevelButton(context, 'English', hsc2023EnglishUrl),
            _buildEducationLevelButton(context, 'Physics', hsc2023PhysicsUrl),
            _buildEducationLevelButton(context, 'Chemistry', hsc2023ChemistryUrl),
            _buildEducationLevelButton(context, 'Mathematics', hsc2023MathematicsUrl),
            _buildEducationLevelButton(context, 'Biology', hsc2023BiologyUrl),

          ],
        ),
      ),
    );
  }

  Widget _buildEducationLevelButton(BuildContext context, String title, String pdfUrl) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PDFViewerPage(
                pdfUrl: pdfUrl,
                title: title,
              ),
            ),
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
