import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image(
                    image: AssetImage("assets/logoPetpetni.png"),
                    width: 230,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/claudio.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                'Welcome Doctor !',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'GlutenSemiBold',
                ),
              ),
            ),
            Container(
              height: 180,
              width: 400,
              margin: const EdgeInsets.fromLTRB(00, 30, 00, 0),
              child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image(
                            image: AssetImage('assets/doctor.png'),
                            width: 170,
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Text(
                            'Let\'s check your \nlatest activities',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Gluten',
                            ),
                          ))
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 160,
                  width: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    color: Color.fromARGB(255, 237, 154, 9),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Image(
                            image: AssetImage('assets/patient.png'),
                            width: 70,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              'Patients',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 1.0,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'GlutenSemiBold',
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    color: Color.fromARGB(255, 237, 154, 9),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 26, 0, 0),
                          child: Image(
                            image: AssetImage('assets/conv.png'),
                            width: 65,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              'Conversations',
                              style: TextStyle(
                                fontSize: 19,
                                letterSpacing: 1.0,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'GlutenSemiBold',
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 160,
                  width: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    color: Color.fromARGB(255, 237, 154, 9),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Image(
                            image: AssetImage('assets/calander.png'),
                            width: 70,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              'Calender',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 1.0,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'GlutenSemiBold',
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    color: Color.fromARGB(255, 237, 154, 9),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 26, 0, 0),
                          child: Image(
                            image: AssetImage('assets/about.png'),
                            width: 65,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              'More Info',
                              style: TextStyle(
                                fontSize: 19,
                                letterSpacing: 1.0,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'GlutenSemiBold',
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}