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
              Text('payement',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'GlutenBold',
                  )),
              SizedBox(
                width: 35,
              ),
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/claudio.png"),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          )),
          body: Center(
  child: Container(
   
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage("assets/successpay.png"),
          width: 150,
        ),
        SizedBox(height: 20),
        Text(
          'Successful Payment',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'GlutenBold',
          ),
        ),
        SizedBox(height: 40),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Astuces(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
          label: Text(
            'Back to Home',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GlutenBold',
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 237, 154, 9),
          ),
        )
      ],
    ),
  ),
),

    );
  }
}