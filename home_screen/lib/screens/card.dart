import 'package:flutter/material.dart';
import 'package:home_screen/widgets/bottomNavigationBar.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card AppBar"),
      ),
      body: const Center(
        child: Text("This is CardScreen"),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
