// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Discussions extends StatefulWidget {
  const Discussions({super.key});

  @override
  State<Discussions> createState() => _Discussions();
}

class _Discussions extends State<Discussions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 237, 154, 9),
          elevation: 0,
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
        body: Column(children: <Widget>[
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  //disabledForegroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    //side: BorderSide(color: Colors.blue),
                  ),
                ),
                child: const Text(
                  'Astuces',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: "Gluten",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Discussions');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  disabledForegroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Conversations',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: "Gluten",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/About');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  disabledForegroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: "Gluten",
                  ),
                ),
              ),
            ],
          )),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/user2.png"),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text('Nour Laabidi',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "Gluten",
                        ))),
              ],
            )
          ]),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/user1.png"),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text('Elyes Besbes',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "Gluten",
                        ))),
              ],
            )
          ]),
        ]));
  }
}
