import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 237, 154, 9),
            elevation: 2,
            shadowColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {/* Action à effectuer lors du clic sur l'icône*/},
            ),
            title: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("asset/images/whitepaw.png"),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'PetPetni',
                    style: TextStyle(
                      fontFamily: 'Gluten',
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      height: 0.8825,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("asset/images/claudio.png"),
                  ),
                ),
              ],
            )),
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 92),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(21, 0, 17, 32),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 77, 3),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 20,
                            height: 20,
                            child: Image.asset('asset/images/back-arrow.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Mr. Bobby',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          height: 0.8825,
                          color: Color(0xffe4a66c),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 265,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
