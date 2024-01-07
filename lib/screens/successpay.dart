import 'package:flutter/material.dart';
import 'package:projet/screens/tips.dart';

class SuccessPay extends StatelessWidget {
  const SuccessPay({super.key});

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
              Text('Subscription Plan',
                  style: TextStyle(
                    fontSize: 20,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Image(
              image: AssetImage("assets/successpay.png"),
              width: 150,),
              ),
              Container(
            margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
            child: Text(
                   'Payement Completed Succesfully',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'GlutenBold',
                    ),
            )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(60, 40, 0, 0),
            child: ElevatedButton.icon(
      onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Astuces()),
                              );}, // Add home page 
      icon: Icon(Icons.arrow_back),
      label: Text('Back to Home'),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 237, 154, 9), 
        onPrimary: Colors.white,
      ),
    )
          )
          
            ],
          ),
    );
  }
}