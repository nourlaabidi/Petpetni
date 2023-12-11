import 'package:flutter/material.dart';
import 'Sidebar.dart';


class Search extends StatelessWidget {
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
                    image: AssetImage("Assets/logo.png"),
                    width: 230,
                  ),
                ),
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
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(70, 40, 0, 0),
                child: Text(
                  'What are you looking for ?',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'GlutenBold',
                  ),
                )),
            Container(
                height: 120,
                width: 300,
                child: Card(
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 237, 154, 9),
                    margin: const EdgeInsets.fromLTRB(20, 55, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                          child: ListTile(
                            leading: Image.asset('Assets/vet.png'),
                            title: Text('Veterinarian',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'GlutenRegular')),
                            onTap: () => null,
                          ),
                        ),
                      ],
                    ))),
            Container(
                height: 120,
                width: 300,
                child: Card(
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 237, 154, 9),
                    margin: const EdgeInsets.fromLTRB(20, 55, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                          child: ListTile(
                            leading: Image.asset('Assets/sitter.png'),
                            title: Text('Pet Sitter',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'GlutenRegular')),
                            onTap: () => null,
                          ),
                        ),
                      ],
                    ))),
            Container(
              margin: EdgeInsets.fromLTRB(60, 80, 0, 0),
              child: Image(
                image: AssetImage('Assets/dogg.png'),
              ),
            )
          ],
        ),
        drawer: Sidebar());
  }
}
