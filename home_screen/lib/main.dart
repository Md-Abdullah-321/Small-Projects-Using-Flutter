import 'package:flutter/material.dart';
import 'package:home_screen/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Home Screen",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
