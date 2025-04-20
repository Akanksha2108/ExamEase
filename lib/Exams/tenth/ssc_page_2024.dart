import 'package:exam_explorer/pdf_viewer_page.dart';
import 'package:exam_explorer/urls.dart';
import 'package:flutter/material.dart';

class SSCPage2024 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('SSC 2024'),
      ),
      body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(colors:[const Color.fromARGB(255, 154, 189, 202), Color.fromARGB(255, 29, 221, 163)],)
    ),
        child: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            _buildEducationLevelButton(context, 'English', ssc2024EnglishUrl),
            _buildEducationLevelButton(context, 'Hindi', ssc2024HindiUrl),
            _buildEducationLevelButton(context, 'Marathi', ssc2024MarathiUrl),
            _buildEducationLevelButton(context, 'Maths (Algebra)', ssc2024MathsAlgebraUrl),
            _buildEducationLevelButton(context, 'Maths (Geometry)', ssc2024MathsGeometryUrl),
            _buildEducationLevelButton(context, 'Science 1', ssc2024Science1Url),
            _buildEducationLevelButton(context, 'Science 2', ssc2024Science2Url),
            _buildEducationLevelButton(context, 'History & Political Science (S.S Paper I)', ssc2024HistoryPoliticalScienceUrl),
            _buildEducationLevelButton(context, 'Geography (S.S Paper II)', ssc2024GeographyUrl),
          ],
        ),
      ),
    ));
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
