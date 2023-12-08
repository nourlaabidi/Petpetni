import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text(
            "Forget Password",
            style: TextStyle(
              fontFamily: 'Gluten',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 0.8825,
              color: Color(0xff000000),
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
            ),
          ],
        ),
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(
                'asset/images/background_lock.png',
                width: 300,
                height: 300,
              ),
              Positioned(
                bottom: 40,
                left: 25,
                right: 25,
                top: 25,
                child: Image.asset(
                  'asset/images/lock.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Gluten',
                fontSize: 18,
                fontWeight: FontWeight.w300,
                height: 0.8825,
                color: Color(0xff000000),
              ),
              children: [
                TextSpan(
                  text: 'Please Enter  your email adress\nto receive a ',
                ),
                TextSpan(
                  text: 'verification code.',
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 237, 154, 9),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffd8d4d3),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 30),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Gluten',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 0.8825,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Petpetou@gmail.com'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Send',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
