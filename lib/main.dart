import 'package:flutter/material.dart';
import 'package:language_school/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "Language School",
      debugShowCheckedModeBanner: false,
    );
  }
}
