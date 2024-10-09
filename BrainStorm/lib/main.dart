import 'package:flutter/material.dart';
import 'package:flutter_app/pages/feed4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Feed(),
      debugShowCheckedModeBanner: false,
    );
  }
}






