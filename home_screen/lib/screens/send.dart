import 'package:flutter/material.dart';
import 'package:home_screen/widgets/bottomNavigationBar.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send AppBar"),
      ),
      body: const Center(
        child: Text("This is SendScreen"),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
