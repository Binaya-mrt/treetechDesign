import 'package:design/buttomAppbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffFF9900),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Tree tech Design',
      home: const ButtomAppBar(),
    );
  }
}
