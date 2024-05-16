import 'package:flutter/material.dart';
import 'package:home_screen/widgets/bottomNavigationBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.only(
                  left: 13.5, right: 13.5, top: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blueGrey[900],
              ),
              child: const Text(
                "USD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.75, color: Colors.blueGrey))),
              margin: const EdgeInsets.all(0), // Remove unnecessary margin
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Account Balance",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$0.00',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                  // Add margin top to the Row
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0), // Adjust margin as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 12, bottom: 12),
                            backgroundColor: Colors.blueGrey[900],
                          ),
                          child: const Row(
                            crossAxisAlignment:
                                CrossAxisAlignment.center, // Center vertically
                            children: [
                              Icon(
                                Icons.account_balance,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Account Details",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 12, bottom: 12),
                            backgroundColor: Colors.blueGrey[900],
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.send,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Send Money",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          padding: const EdgeInsets.all(0),
                          width: 40,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child:
                    // Add some padding around the image (optional)
                    Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/wallet.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: Column(
                children: [
                  Text(
                    "Let's fund your account",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                  Text(
                    "You can fund your account by making a transfer",
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 12, bottom: 12),
                backgroundColor: Colors.blueGrey[900],
                fixedSize: Size(MediaQuery.of(context).size.width / 1.75, 60),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_outlined,
                    size: 24.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Fund Account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const MyBottomNavigationBar());
  }
}
