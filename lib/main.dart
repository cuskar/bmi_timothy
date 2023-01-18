import 'package:flutter/material.dart';
import 'layar/input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 0, 0, 255),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: InputPage(),
    );
  }
}
