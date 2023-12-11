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
            backgroundColor: Color.fromARGB(255, 237, 154, 9),
            elevation: 2,
            shadowColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    iconSize: 35,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image(
                    image: AssetImage("asset/images/whitelogo.png"),
                    width: 230,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("asset/images/claudio.png"),
                    backgroundColor: Colors.white,
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
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(21, 0, 17, 0),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 77, 0),
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
                        'add pet',
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
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 557,
            decoration: BoxDecoration(
              color: Color(0xffd8d4d3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 26,
                  top: 20,
                  child: Align(
                    child: SizedBox(
                      width: 120,
                      height: 14,
                      child: Text(
                        'Your pet’s name',
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          height: 0.8825,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 40,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8, 6, 0, 7),
                    width: 370,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                          width: 21,
                          height: 21,
                          child: Image.asset(
                            "asset/images/blacklogo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mr.Mouse',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 0.8825,
                              color: Color(0xff737373),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 85,
                  child: Container(
                    width: 370,
                    height: 14,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 115, 0),
                          child: Text(
                            'Age',
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              height: 0.8825,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text(
                            'Height',
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              height: 0.8825,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 105,
                  child: Container(
                    width: 370,
                    height: 34,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 6, 7, 7),
                          margin: EdgeInsets.fromLTRB(0, 0, 60, 0),
                          width: 80,
                          height: 34,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                width: 18,
                                height: 22,
                                child: Image.asset(
                                  "asset/images/birthday.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '1 year',
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 0.8825,
                                    color: Color(0xff737373),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 1, 12, 1),
                          margin: EdgeInsets.fromLTRB(0, 0, 65, 0),
                          width: 80,
                          height: 34,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                child: Image.asset(
                                  "asset/images/height.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '60cm',
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 0.8825,
                                    color: Color(0xff737373),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
                          width: 80,
                          height: 34,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                width: 21,
                                height: 21,
                                child: Image.asset(
                                  "asset/images/weight.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '10kg',
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 0.8825,
                                    color: Color(0xff737373),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 150,
                  child: Align(
                    child: SizedBox(
                      width: 88,
                      height: 14,
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 0.8825,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 170,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8, 6, 0, 7),
                    width: 370,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Exemple: a lovely.',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 0.8825,
                              color: Color(0xff737373),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 235,
                  child: Align(
                    child: SizedBox(
                      width: 139,
                      height: 14,
                      child: Text(
                        'Your pet’s hobbies',
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 0.8825,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 255,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 13, 3),
                    width: 370,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Playing',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 0.8825,
                              color: Color(0xff737373),
                            ),
                          ),
                        ),
                        Container(
                          width: 19,
                          height: 19,
                          child: Image.asset(
                            'asset/images/horizontalarrow.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 300,
                  child: Container(
                    width: 370,
                    height: 67,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 100, 0),
                          width: 127,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Your pet is ',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(12, 0, 0, 3),
                                      width: 101,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'tap to choose',
                                          style: TextStyle(
                                            fontFamily: 'Gluten',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            height: 0.8825,
                                            color: Color(0xff737373),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(1, 0, 0, 6),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 44,
                                    height: 39,
                                    child: Image.asset(
                                      "asset/images/calendar.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Your pet’s calender',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 384,
                  child: Container(
                    width: 327,
                    height: 173,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 112,
                          top: 4,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  'Save',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    height: 0.8825,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 327,
                              height: 173,
                              child: Image.asset(
                                "asset/images/uplookingcat.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
