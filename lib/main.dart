import 'package:flutter/material.dart';
import 'package:portfolio/Project.dart';
import 'package:portfolio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home_page",
      routes: {
        'home_page': (context) => const HomePage(),
        'project_page': (context) => const ProjectPage(),
      },
    );
  }
}
