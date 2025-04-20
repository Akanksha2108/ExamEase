import 'package:exam_explorer/pdf_viewer_page.dart';
import 'package:exam_explorer/urls.dart';
import 'package:flutter/material.dart';

class SSCPage2022 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('SSC 2022'),
        centerTitle: true,
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
            _buildEducationLevelButton(context, 'English', ssc2022EnglishUrl),
            _buildEducationLevelButton(context, 'Hindi', ssc2022HindiUrl),
            _buildEducationLevelButton(context, 'Marathi', ssc2022MarathiUrl),
            _buildEducationLevelButton(context, 'Maths (Algebra)', ssc2022MathsAlgebraUrl),
            _buildEducationLevelButton(context, 'Maths (Geometry)', ssc2022MathsGeometryUrl),
            _buildEducationLevelButton(context, 'Science 1', ssc2022Science1Url),
            _buildEducationLevelButton(context, 'Science 2', ssc2022Science2Url),
            _buildEducationLevelButton(context, 'History & Political Science (S.S Paper I)', ssc2022HistoryPoliticalScienceUrl),
            _buildEducationLevelButton(context, 'Geography (S.S Paper II)', ssc2022GeographyUrl),
          ],
        ),
    )  ),
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
