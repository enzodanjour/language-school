import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: GoogleFonts.roboto(),
        ),
      ),
    );
  }
}
