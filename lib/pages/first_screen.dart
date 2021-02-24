import 'package:flutter/material.dart';

import 'package:library_on/pages/second_screen.dart';

String text1 =
    'This is the app that allows you to discover and\nread ebooks and magazines';
String text2 =
    'Borrow and read free books,\naudio books, and magazines from\nyour library using your phone\nor table. its easy to get';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/logo.png',
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/img1.png',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Hello',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    text1,
                    style: TextStyle(height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Hero(
                    tag: 'button',
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()));
                      },
                      color: Color(0xff2c2d37),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 110),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
