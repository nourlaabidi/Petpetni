import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _Health();
}

class _Health extends State<Health> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              'Health',
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
                      'Brushing',
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
                      image: AssetImage('assets/brushing.webp'),
                      width: 150,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    child: Text(
                      'Regularly brush your dog to remove dead hair, prevent tangles, and stimulate skin circulation',
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
                      'Bathing',
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
                      image: AssetImage('assets/bathing.webp'),
                      width: 130,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    child: Text(
                      'Give your dog baths using dog-specific shampoo every 4 to 6 weeks, depending on their activity level and dirt accumulation',
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
                      'Nail Trimming',
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
                      image: AssetImage('assets/nail.jpg'),
                      width: 180,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    child: Text(
                      'Trim your dog\'s nails as needed using dog-specific nail clippers to avoid harming the quick',
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