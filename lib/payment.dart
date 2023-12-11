import 'package:flutter/material.dart';
class Home extends StatelessWidget {
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  color: Colors.white,
                ),
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
                    backgroundImage: AssetImage("Assets/claudio.png"),
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
                        fontFamily: 'GlutenRegular',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 2.09375,
                        letterSpacing: 0.32,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: '7 days free trail',
                      style: TextStyle(
                        fontFamily: 'GlutenRegular',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Color(0xffe4a66c),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        fontFamily: 'GlutenRegular',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 2.09375,
                        letterSpacing: 0.32,
                        color: Color(0xfffcb946),
                      ),
                    ),
                    TextSpan(
                      text: 'Upgrade or downgrade anytime',
                      style: TextStyle(
                        fontFamily: 'GlutenRegular',
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
              height: 430,
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
                        width:
                            300, // Set a width to ensure the container is centered
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
                    left: 115,
                    top: 12,
                    child: SizedBox(
                        child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('Assets/paypremium.png'),
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
                            leading: Text('Profile',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0,
                                    color:
                                        const Color.fromARGB(0, 255, 255, 255),
                                    fontFamily: 'GlutenBold')),
                            onTap: () => null,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.orangeAccent,
                            size: 35,
                          )
                        ])),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
