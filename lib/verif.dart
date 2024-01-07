import 'package:flutter/material.dart';

void main() {
  runApp(VerifScreen());
}

class VerifScreen extends StatelessWidget {
  final String verificationCode;

  VerifScreen(this.verificationCode);

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
            "Verify your Email",
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
                'assets/background_lock.png',
                width: 300,
                height: 300,
              ),
              Positioned(
                bottom: 40,
                left: 25,
                right: 25,
                top: 25,
                child: Image.asset(
                  'assets/emailverif.png',
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
                  text: 'Please Enter ',
                ),
                TextSpan(
                  text: '4 digit code ',
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 237, 154, 9),
                  ),
                ),
                TextSpan(
                  text: 'sent to you. ',
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
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          width: 42,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          width: 42,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          width: 42,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          width: 42,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Resent code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 0, 0, 0),
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
                        'Verify',
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
