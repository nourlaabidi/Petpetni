import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'sidebar.dart';

class Addpet extends StatelessWidget {
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
          drawer: Sidebar());
   
    
  }
}
