import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 65, 0),
                        child: Text(
                          'Pet List',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xffe4a66c),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 32,
                            height: 32,
                            child: Image.asset(
                              "asset/images/addanimal.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 17, 34),
                  width: 343,
                  height: 112,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 18,
                        top: 27,
                        child: SizedBox(
                          width: 325,
                          height: 85,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Color(0xfffcb946)),
                                color: Color(0xffd9d9d9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "asset/images/dog.png",
                        width: 167,
                        height: 111,
                      ),
                      Positioned(
                        left: 283,
                        top: 46,
                        child: Image.asset(
                          "asset/images/calendar.png",
                          width: 44,
                          height: 39,
                        ),
                      ),
                      Positioned(
                        left: 148,
                        top: 52,
                        child: Text(
                          'Mr. Bobby',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 151,
                        top: 75,
                        child: Text(
                          'Doggy',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 213,
                        top: 75,
                        child: Text(
                          '1 year',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 17, 34),
                  width: 343,
                  height: 112,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 18,
                        top: 27,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: SizedBox(
                            width: 325,
                            height: 85,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Color(0xfffcb946)),
                                color: Color(0xffd9d9d9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -70,
                        child: SizedBox(
                          width: 300,
                          height: 108,
                          child: Image.asset(
                            "asset/images/cat.png",
                            width: 167,
                            height: 111,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 46,
                        child: Image.asset(
                          "asset/images/calendar.png",
                          width: 44,
                          height: 39,
                        ),
                      ),
                      Positioned(
                        left: 148,
                        top: 52,
                        child: Text(
                          'Mrs. Lala',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 151,
                        top: 75,
                        child: Text(
                          'Kitten',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 213,
                        top: 75,
                        child: Text(
                          '2 years',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 17, 34),
                  width: 343,
                  height: 112,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 18,
                        top: 27,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: SizedBox(
                            width: 325,
                            height: 85,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Color(0xfffcb946)),
                                color: Color(0xffd9d9d9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "asset/images/rabbit.png",
                        width: 167,
                        height: 111,
                      ),
                      Positioned(
                        left: 283,
                        top: 46,
                        child: Image.asset(
                          "asset/images/calendar.png",
                          width: 44,
                          height: 39,
                        ),
                      ),
                      Positioned(
                        left: 148,
                        top: 52,
                        child: Text(
                          'Mrs. Belly',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 151,
                        top: 75,
                        child: Text(
                          'Rabbit',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 213,
                        top: 75,
                        child: Text(
                          '1.5 year',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 17, 34),
                  width: 343,
                  height: 112,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 18,
                        top: 27,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: SizedBox(
                            width: 325,
                            height: 85,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Color(0xfffcb946)),
                                color: Color(0xffd9d9d9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        child: Image.asset(
                          "asset/images/turtle2.png",
                          width: 167,
                          height: 110,
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 46,
                        child: Image.asset(
                          "asset/images/calendar.png",
                          width: 44,
                          height: 39,
                        ),
                      ),
                      Positioned(
                        left: 148,
                        top: 52,
                        child: Text(
                          'Mr. Bobby',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 151,
                        top: 75,
                        child: Text(
                          'Doggy',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 213,
                        top: 75,
                        child: Text(
                          '1 year',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
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
