import 'package:flutter/material.dart';
import 'package:projet/screens/side_bar.dart';

class Astuces extends StatefulWidget {
  const Astuces({super.key});

  @override
  State<Astuces> createState() => _AstucesState();
}

class _AstucesState extends State<Astuces> {
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget> [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                     
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                         
                      ),),
                      child:
                      
                      const Text(
                            'Astuces',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              fontFamily: "Gluten",
                            ),
                          ),
                      ),
                      //const SizedBox(height:20) ,
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        disabledForegroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),),
                        child:const Text(
                              'Conversations',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                fontFamily: "Gluten",
                              ),
                            ),
                        ),
                      const SizedBox(height:20) ,
                      TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      disabledForegroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),),
                      child:const Text(
                            'About',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              fontFamily: "Gluten",
                            ),
                          ),
                      ),
                    ],),
                  const SizedBox(height:10) ,
                  Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 17, 20),
                  width: 343,
                  height: 112,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 25,
                        child: SizedBox(
                          width: 325,
                          height: 85,
                          child: TextButton(
                            onPressed: () {Navigator.pushNamed(context, '/Dogs');},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: const Color(0xfffcb946)),
                                color: const Color(0xffd9d9d9),
                                boxShadow: const [
                                   BoxShadow(
                                    color: Color(0x3f000000),
                                    blurRadius:4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 215,
                        top: 2,
                        child: Image.asset(
                          "assets/dog.png",
                          //width: 110,
                          height: 120,
                        ),
                      ),
                      const Positioned(
                        left: 100,
                        top: 57,
                        child: Text(
                          'Dogs',
                          style: TextStyle(
                            fontFamily: 'GlutenBold',
                            fontSize: 20,
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
                margin: const EdgeInsets.fromLTRB(0, 0, 17, 20),
                width: 343,
                height: 112,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 25,
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
                              border: Border.all(color: const Color(0xfffcb946)),
                              color: const Color(0xffd9d9d9),
                              boxShadow: const [
                                  BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius:4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      top: 10,
                      child: Image.asset(
                        "assets/cat.png",
                        //width: 110,
                        height: 100,
                      ),
                    ),
                    const Positioned(
                      left: 100,
                      top: 57,
                      child: Text(
                        'Cats',
                        style: TextStyle(
                          fontFamily: 'GlutenBold',
                          fontSize: 20,
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
                margin: const EdgeInsets.fromLTRB(0, 0, 17, 20),
                width: 343,
                height: 112,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 25,
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
                              border: Border.all(color: const Color(0xfffcb946)),
                              color: const Color(0xffd9d9d9),
                              boxShadow: const [
                                  BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius:4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      top: 10,
                      child: Image.asset(
                        "assets/rabbit.png",
                        //width: 110,
                        height: 100,
                      ),
                    ),
                    const Positioned(
                      left: 100,
                      top: 57,
                      child: Text(
                        'Rabbits',
                        style: TextStyle(
                          fontFamily: 'GlutenBold',
                          fontSize: 20,
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
                margin: const EdgeInsets.fromLTRB(0, 0, 17, 20),
                width: 343,
                height: 112,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 25,
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
                              border: Border.all(color: const Color(0xfffcb946)),
                              color: const Color(0xffd9d9d9),
                              boxShadow: const [
                                  BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius:4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      top: 10,
                      child: Image.asset(
                        "assets/hamester.png",
                        //width: 110,
                        height: 100,
                      ),
                    ),
                    const Positioned(
                      left: 100,
                      top: 57,
                      child: Text(
                        'Hamesters',
                        style: TextStyle(
                          fontFamily: 'GlutenBold',
                          fontSize: 20,
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
                margin: const EdgeInsets.fromLTRB(0, 0, 17, 20),
                width: 343,
                height: 112,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 25,
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
                              border: Border.all(color: const Color(0xfffcb946)),
                              color: const Color(0xffd9d9d9),
                              boxShadow: const [
                                  BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius:4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 165,
                      top: 10,
                      child: Image.asset(
                        "assets/sheep.png",
                        //width: 110,
                        height: 100,
                      ),
                    ),
                    const Positioned(
                      left: 100,
                      top: 57,
                      child: Text(
                        'Sheeps',
                        style: TextStyle(
                          fontFamily: 'GlutenBold',
                          fontSize: 20,
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
      ),
      drawer: Sidebar());
  }
}