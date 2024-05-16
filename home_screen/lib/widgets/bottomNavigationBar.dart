import 'package:flutter/material.dart';
import 'package:home_screen/screens/card.dart';
import 'package:home_screen/screens/home.dart';
import 'package:home_screen/screens/profile.dart';
import 'package:home_screen/screens/refferel.dart';
import 'package:home_screen/screens/send.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, size: 32),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz_sharp, size: 32),
            label: "Send",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up, size: 32),
            label: "Refferel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 32),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Home()),
              );
              break;
            case 1:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CardScreen()),
              );
              break;
            case 2:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SendScreen()),
              );
              break;
            case 3:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RefferelScreen()),
              );
              break;
            case 4:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
              break;
          }
        },
        unselectedLabelStyle: const TextStyle(fontSize: 15),
        selectedFontSize: 15,
        selectedItemColor: Colors.blueGrey[900],
      ),
    );
  }
}
