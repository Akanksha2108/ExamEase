import 'package:flutter/material.dart';
import 'package:exam_explorer/Exams/twelfth/hsc_page_2022.dart';
import 'package:exam_explorer/Exams/twelfth/hsc_page_2023.dart';
import 'package:exam_explorer/Exams/twelfth/hsc_page_2024.dart';

class StreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(centerTitle:true,title: Text('Select Stream')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9ABDCB), Color(0xFF1DDEA3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStreamButton(context, 'Science', SciencePage()),
              SizedBox(height: 20),
              _buildStreamButton(context, 'Commerce', CommerceYearPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStreamButton(BuildContext context, String title, Widget nextPage) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class SciencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Science Section')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9ABDCB), Color(0xFF1DDEA3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
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
      ),
    );
  }
}

class CommerceYearPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Commerce Year Selection')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9ABDCB), Color(0xFF1DDEA3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: [
              _buildEducationLevelButton(context, 'HSC 2022', CommercePage(year: '2022')),
              _buildEducationLevelButton(context, 'HSC 2023', CommercePage(year: '2023')),
              _buildEducationLevelButton(context, 'HSC 2024', CommercePage(year: '2024')),
            ],
          ),
        ),
      ),
    );
  }
}

class CommercePage extends StatelessWidget {
  final String year;
  CommercePage({required this.year});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Commerce Section - $year')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9ABDCB), Color(0xFF1DDEA3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: [
              _buildEducationLevelButton(context, 'Accountancy', CommerceSubjectsPage(subject: 'Accountancy')),
              _buildEducationLevelButton(context, 'Business Studies', CommerceSubjectsPage(subject: 'Business Studies')),
              _buildEducationLevelButton(context, 'Economics', CommerceSubjectsPage(subject: 'Economics')),
              _buildEducationLevelButton(context, 'Mathematics', CommerceSubjectsPage(subject: 'Mathematics')),
            ],
          ),
        ),
      ),
    );
  }
}

class CommerceSubjectsPage extends StatelessWidget {
  final String subject;
  CommerceSubjectsPage({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9ABDCB), Color(0xFF1DDEA3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(child: Text('Welcome to $subject Section!')),
      ),
    );
  }
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
