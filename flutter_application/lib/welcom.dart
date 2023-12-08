import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(6, 100, 0, 0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    height: 0.8825,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Welcome to ',
                    ),
                    TextSpan(
                      text: 'PetPetni !',
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        height: 0.8825,
                        color: Color(0xfffcb946),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Stack(
                  children: [
                    Image.asset(
                      'asset/images/cloud.png',
                      width: 338,
                      height: 245,
                    ),
                    Image.asset(
                      'asset/images/animals.png',
                      width: 338,
                      height: 245,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                },
                child: const Text(
                  'Lets get started',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
