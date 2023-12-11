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
                  height: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 33.24, 0.99),
                        padding: EdgeInsets.fromLTRB(0, 14.39, 0, 14.39),
                        width: 13.76,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12.39),
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xfffcb946),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                              child: Text(
                                'Weight',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                              child: Text(
                                '10 kg',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xff737373),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: Text(
                                'Height',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                              child: Text(
                                '30 cm',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xff737373),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8825,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontFamily: 'Gluten',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 0.8825,
                                color: Color(0xff737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Container(
                          width: 194,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                top: 90,
                                child: Align(
                                  child: SizedBox(
                                    width: 171,
                                    height: 157,
                                    child: Image.asset(
                                      'asset/images/background_lock.png',
                                      width: 171,
                                      height: 157,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 6,
                                child: Align(
                                  child: SizedBox(
                                    width: 194,
                                    height: 265,
                                    child: Image.asset(
                                      "asset/images/mrbobby.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(18, 26, 16, 37),
                  width: double.infinity,
                  height: 335,
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 23.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About',
                              style: TextStyle(
                                fontFamily: 'Gluten',
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                height: 0.8825,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: 380,
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.720875,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Bobby, a ',
                              ),
                              TextSpan(
                                text: 'c',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 1.720875,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                              TextSpan(
                                text: 'harming',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  height: 1.720875,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' mixed-breed with a caramel and white coat, expressive brown eyes, and boundless energy. An ',
                              ),
                              TextSpan(
                                text: 'intelligent',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  height: 1.720875,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                              ),
                              TextSpan(
                                text: 'gentle',
                                style: TextStyle(
                                  fontFamily: 'Gluten',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  height: 1.720875,
                                  color: Color(0xffe4a66c),
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' companion, perfect for playtime or cuddles. ',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 5, 0, 0),
                        child: Text(
                          'Hobbies',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 94,
                                  height: 62,
                                  child: Image.asset(
                                    'asset/images/sleepingdog.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Sleeping',
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 0.8825,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 38,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 55,
                                  height: 50,
                                  child: Image.asset(
                                    "asset/images/eatingdog.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Eating',
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 0.8825,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 38,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 87,
                                  height: 55,
                                  child: Image.asset(
                                      "asset/images/walkingdog.png"),
                                ),
                                Text(
                                  'Walking',
                                  style: TextStyle(
                                    fontFamily: 'Gluten',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 0.8825,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
