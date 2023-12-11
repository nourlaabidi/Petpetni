import 'package:flutter/material.dart';

class Dogs extends StatefulWidget {
  const Dogs({super.key});

  @override
  State<Dogs> createState() => _DogsState();
}

class _DogsState extends State<Dogs> {
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
      body:   Column(
        children:<Widget> [
           Container(
            color: const Color.fromARGB(255, 237, 154, 9),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                    Column(
                      children: <Widget>[
                         BackButtonIcon(),
                         Text(
                            'your furry friend also needs to be spoiled',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                              fontFamily: "GlutenB"
                            ),),
                          Text(
                            'Discover expert tips and tricks to keep your furry friend happy and healthy',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                              fontFamily: "Gluten"
                              ),)
                      ],
                    ),
                    Image(image: AssetImage('asset/dog.png',) ,height: 20,width: 20,)
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}