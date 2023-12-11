import 'package:flutter/material.dart';


class HomePay extends StatelessWidget {
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
                Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 50.0,),
                
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("Assets/claudio.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            )));
  }
}
