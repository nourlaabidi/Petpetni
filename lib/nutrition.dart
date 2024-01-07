// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({super.key});

  @override
  State<Nutrition> createState() => _Nutrition();
}

class _Nutrition extends State<Nutrition> {
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
                image: AssetImage("assets/logo.png"),
                width: 230,
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              'Nutrition',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Color.fromARGB(255, 237, 154, 9),
                fontFamily: 'GlutenSemiBold',
              ),
            ),
          ),
          Container(
            height: 200,
            width: 350,
            margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 237, 154, 9),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Balanced Diet',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Color.fromARGB(255, 237, 154, 9),
                        fontFamily: 'GlutenSemiBold',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/firstphoto.png'),
                      width: 200,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    child: Text(
                      'Ensure a balanced diet that includes proteins, fats, carbohydrates, vitamins, and minerals',
                      style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'GlutenSemiBold',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            width: 350,
            margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 237, 154, 9),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'High-Quality Dog Food',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Color.fromARGB(255, 237, 154, 9),
                        fontFamily: 'GlutenSemiBold',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/goodqual.jpg'),
                      width: 140,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    child: Text(
                      'Select a commercial dog food that meets the standards set by organizations like the AAFCO',
                      style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'GlutenSemiBold',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            width: 350,
            margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 237, 154, 9),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Control Portions',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Color.fromARGB(255, 237, 154, 9),
                        fontFamily: 'GlutenSemiBold',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/portion.jpg'),
                      width: 150,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    child: Text(
                      'Follow the feeding guidelines on the dog food packaging or as recommended by your veterinarian',
                      style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'GlutenSemiBold',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}