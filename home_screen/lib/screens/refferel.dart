import 'package:flutter/material.dart';
import 'package:home_screen/widgets/bottomNavigationBar.dart';

class RefferelScreen extends StatelessWidget {
  const RefferelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RefferelScreen AppBar"),
      ),
      body: const Center(
        child: Text("This is RefferelScreen"),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
