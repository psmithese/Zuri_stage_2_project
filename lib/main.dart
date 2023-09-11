import 'package:curriculum_vitae/model/cv_data.dart';
import 'package:curriculum_vitae/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initialCVData = CVData(
      fullName: 'Ese Smith Echanomi',
      slackUsername: 'Ese Smith',
      githubHandle: 'https://github.com/psmithese',
      personalBio:
          " I'm a lifelong learner and an enthusiast for all things creative and innovative. With a background in Mobile Development using Flutter, I've had the privilege of working with a team to create an app called jinja while i was interning with Isidore Agric Tech Ltd.Beyond my professional life, I have a deep passion for helping others to rise.I believe in commitment, team work, honesty and discipline, and I'm always looking for opportunities to improve on myself. I'm excited to be currently interning with Zuri and I'm looking forward to connecting with others who share my interests and passions.Feel free to reach out, and let's connect!",
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curriculum Vitae',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CVView(cvData: initialCVData),
    );
  }
}
