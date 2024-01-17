import 'package:flutter/material.dart';
import 'package:projet/screens/premium.dart';

class Payme extends StatefulWidget {
  @override
  State<Payme> createState() => _PaymeState();
}

class _PaymeState extends State<Payme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 237, 154, 9),
            elevation: 2,
            shadowColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                SizedBox(
                  width: 25.0,
                ),
                Text('payement',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'GlutenBold',
                    )),
                SizedBox(
                  width: 25.0,
                ),
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/claudio.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: Text(
                  'Choose your plan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'GlutenBold',
                  ),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
              constraints: BoxConstraints(
                maxWidth: 289,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.4781874418,
                    letterSpacing: 0.32,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Start with ',
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 2.09375,
                        letterSpacing: 0.32,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: '7 days free trail ',
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Color(0xffe4a66c),
                      ),
                    ),
                    TextSpan(
                      text: 'Upgrade or downgrade anytime',
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 2.09375,
                        letterSpacing: 0.32,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              width: 300,
              child: Stack(
                children: [
                  Positioned(
                    top: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Container(
                        height: 120,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border(
                            right:
                                BorderSide(width: 300.0, color: Colors.orange),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 70,
                      left: 100,
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Gluten',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1.4781874418,
                                letterSpacing: 0.32,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Premium \n',
                                  style: TextStyle(
                                    fontFamily: 'GlutenBold',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: 2.09375,
                                    letterSpacing: 0.32,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ]))),
                  Positioned(
                      left: 80,
                      top: 85,
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Gluten',
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                height: 1.4781874418,
                                letterSpacing: 0.32,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '40',
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold,
                                    height: 2.09375,
                                    letterSpacing: 0.32,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Dt',
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    height: 2.09375,
                                    letterSpacing: 0.32,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '/ Month',
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    height: 2.09375,
                                    letterSpacing: 0.32,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ]))),
                  Positioned(
                    left: 115,
                    top: 12,
                    child: SizedBox(
                        child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/paypremium.png'),
                      backgroundColor: Color.fromARGB(255, 214, 214, 214),
                    )),
                  ),
                  Positioned(
                    top: 150,
                    child: Container(
                      height: 230,
                      width: 300,
                      color: Color.fromARGB(255, 227, 225, 222),
                      child: ListView(children: [
                        ListTile(
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.orangeAccent,
                            size: 35,
                          ),
                          title: Text('Virtual Consultation',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 2.0,
                                  color: Colors.black,
                                  fontFamily: 'GlutenBold')),
                          onTap: () => null,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.orangeAccent,
                            size: 35,
                          ),
                          title: Text('Get unlimited information',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 2.0,
                                  color: Colors.black,
                                  fontFamily: 'GlutenBold')),
                          onTap: () => null,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.orangeAccent,
                            size: 35,
                          ),
                          title: Text('Calender notification',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 2.0,
                                  color: Colors.black,
                                  fontFamily: 'GlutenBold')),
                          onTap: () => null,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.orangeAccent,
                            size: 35,
                          ),
                          title: Text('GPS Tracking',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 2.0,
                                  color: Colors.black,
                                  fontFamily: 'GlutenBold')),
                          onTap: () => null,
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Container(
                child: SizedBox(
                    width: 300, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Premium()),
                              );},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent, // Background color
                        onPrimary:
                            Colors.white, // Text Color (Foreground color)
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 20,fontFamily: 'GlutenBold'),
                      ),
                    )))
          ],
        ));
  }
}