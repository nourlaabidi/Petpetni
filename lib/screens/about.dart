import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 154, 9),
        elevation: 2, 
        shadowColor: Colors.white, 
         leading:
          IconButton(
            icon: const Icon(Icons.menu), 
            color:Colors.white,
            onPressed: () {/* Action à effectuer lors du clic sur l'icône*/},
            ),
          title: const Row(
            children: [
              Expanded(
                flex:1,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/whitepaw.png"), 
                  backgroundColor: Colors.transparent, 
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                flex:4,
                child: Text('Petpetni', style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                fontFamily: "GlutenB"
                ),),
              ),
              Expanded (
                flex:1,
                child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                //backgroundColor: Colors.white, 
  
                ),
              ),
            ],
          ),
      ),
      body:  Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding:const EdgeInsets.fromLTRB(30,0,30,15),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    TextButton(
                    onPressed: () {Navigator.pushNamed(context, '/Astuces'); },
                    style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    //disabledForegroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      //side: BorderSide(color: Colors.blue), 
                    ),),
                    child:const Text(
                          'Astuces',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: "Gluten",
                          ),
                        ),
                    ),
                    const SizedBox(height:20) ,
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, '/chats');},
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      disabledForegroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        //side: BorderSide(color: Colors.blue), 
                      ),),
                      child:const Text(
                            'Conversations',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontFamily: "Gluten",
                            ),
                          ),
                      ),
                    const SizedBox(height:20) ,
                    TextButton(
                    onPressed: () {Navigator.pushNamed(context, '/About'); },
                    style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    disabledForegroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      //side: BorderSide(color: Colors.blue), 
                    ),),
                    child:const Text(
                          'About',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: "Gluten",
                          ),
                        ),
                    ),
                  ],),
                const SizedBox(height:10) ,
                Container(
                  margin: const EdgeInsets.all(30),
                  child:const Text(
                    'Petpetni', 
                    style: TextStyle(
                    color:Color.fromARGB(255, 237, 154, 9),
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0,
                    fontFamily: "GlutenB"),
                  ),
                ),
                const SizedBox(height:10) ,
                const Center(
                   child: Text(
                      'is a mobile application developed by 5 students of the high school of communication of tunis in th context of a study project . ', 
                      style: TextStyle(
                      //color:Color.fromARGB(255, 237, 154, 9),
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      wordSpacing: 4,
                      fontFamily: "GlutenB"),
                       textAlign: TextAlign.center,
                    ),
                 ),
                const SizedBox(height:30) ,
                const Center(
                  child:Text.rich(TextSpan(
                    children:<TextSpan>[
                      TextSpan(
                          text:'the app aims ',
                          style: TextStyle(
                          //color:Color.fromARGB(255, 237, 154, 9),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          wordSpacing: 4,
                          fontFamily: "GlutenB"),
                      ),
                      TextSpan(
                           text:'to solve pet awners problems , facilitate their tasks ',
                          style: TextStyle(
                          color:Color.fromARGB(255, 237, 154, 9),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          wordSpacing: 4,
                          fontFamily: "GlutenB"),
                      ),
                      TextSpan(
                           text:'and ',
                          style: TextStyle(
                          //color:Color.fromARGB(255, 237, 154, 9),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          wordSpacing: 4,
                          fontFamily: "GlutenB"),
                      ),
                      TextSpan(
                           text:'follow their pets health. ',
                          style: TextStyle(
                          color:Color.fromARGB(255, 237, 154, 9),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          wordSpacing: 4,
                          fontFamily: "GlutenB"),
                      ),
                    ],
                  ),
                  ),
                ),
                const SizedBox(height:30) ,
                const Center(
                  child:Text(
                    'Follow us on social media to get more information and updates about the application.',
                     textAlign: TextAlign.center,
                    style: TextStyle(
                    //color:Color.fromARGB(255, 237, 154, 9),
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    wordSpacing: 4,
                    fontFamily: "GlutenB"),
                  ),
                ),
                const SizedBox(height:30) ,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget> [
                  Column(
                    children:<Widget> [
                    Center(
                      child: IconButton(
                        onPressed: (){},
                        icon:const Image(image: AssetImage('assets/fcb.png'),width: 80,height: 80),  
                    ),
                    ),
                    const SizedBox(height:5),
                    const Text(
                    'petpetni.tn',
                    style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                    wordSpacing: 4,
                    fontFamily: "Gluten"),),
                    ],),
                  const SizedBox(height:15),
                  Column(
                    children:<Widget> [
                    Center(
                      child: IconButton(
                        onPressed: (){},
                        icon:const Image(image: AssetImage("assets/insta.png"),width: 80,height: 80),
                    ),),
                    const SizedBox(height: 5),
                    const Text(
                    'petpeta.petn',
                    style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                    wordSpacing: 4,
                    fontFamily: "Gluten"),),
                    ],)
                    ],),
                ],),
            ),
      ),
    );
  }
}