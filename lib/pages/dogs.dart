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
      body: SingleChildScrollView(
        child: Column(
            children:<Widget> [
               Container(
                color: const Color.fromARGB(255, 237, 154, 9),
                  child: Padding(
                    // alignment: Alignment.centerLeft, // Adjust alignment as needed
                    padding: const EdgeInsets.fromLTRB(25, 10,0,0),
                    child: Row(
                      children:<Widget> [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             GestureDetector(
                              onTap: (){Navigator.pushNamed(context, '/Astuces');},
                              child: const BackButtonIcon()),
                             const SizedBox(height:40,),
                             const SizedBox(
                              width: 180,
                               child: Text(
                                  'your furry friend also needs to be spoiled',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    fontFamily: "GlutenB1"
                                  ),),
                             ),
                             const SizedBox(height: 10,),
                              const SizedBox(
                                width: 180,
                                child: Text(
                                  'Discover expert tips and tricks to keep your furry friend happy and healthy',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: "Gluten"
                                    ),),
                              ),
                              const SizedBox(height:100,)
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top:70.0, left: 52.0), // Adjust padding as needed
                          child: Image(
                            image: AssetImage('assets/dog1.png'),
                            height: 190,
                            width: 150,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.fromLTRB(15, 45, 15, 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget> [
                          Column(
                          children: <Widget>[
                              GestureDetector(
                                onTap: (){Navigator.pushNamed(context, '/Astuces');},
                                child: Column(children:<Widget> [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.grey[300],
                                    ),
                                      child:const Image(
                                        image: AssetImage('assets/health.png'),
                                        width: 10,
                                        height: 10,
                                        fit: BoxFit.contain 
                                      ),
                                  ),
                                  const SizedBox(height: 5,),
                                  Text(
                                    'health',
                                    style: TextStyle(
                                        color: Colors.orange[900],
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16,
                                        fontFamily: "GlutenB"
                                      ),
                                    )],),
                              ),
                                    const SizedBox(height: 10,),
                                   GestureDetector(
                                    onTap: (){Navigator.pushNamed(context, '/Astuces');},
                                     child: Column(children:<Widget> [
                                       Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.grey[300],
                                      ),
                                        child:const Image(
                                          image: AssetImage('assets/health.png'),
                                          width: 10,
                                          height: 10,
                                          fit: BoxFit.contain 
                                        ),
                                      ),
                                      const SizedBox(height: 4,),
                                      Text(
                                      'health',
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          fontFamily: "GlutenB"
                                        ),
                                      )],),
                                   ),
                                    const SizedBox(height: 10,),
                                    GestureDetector(
                                      onTap: (){Navigator.pushNamed(context, '/Astuces');},
                                      child: Column(children:<Widget> [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24),
                                          color: Colors.grey[300],
                                        ),
                                          child:const Image(
                                            image: AssetImage('assets/health.png'),
                                            width: 10,
                                            height: 10,
                                            fit: BoxFit.contain 
                                          ),
                                      ),
                                      const SizedBox(height: 4,),
                                      Text(
                                        'health',
                                        style: TextStyle(
                                            color: Colors.orange[900],
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            fontFamily: "GlutenB"
                                          ),
                                        )],),
                                    ),
                          ],
                        ),
                      Column(
                        children: <Widget>[
                            GestureDetector(
                              onTap: (){Navigator.pushNamed(context, '/Astuces');},
                              child: Column(children:<Widget> [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.grey[300],
                                  ),
                                    child:const Image(
                                      image: AssetImage('assets/health.png'),
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.contain 
                                    ),
                                ),
                                const SizedBox(height: 4,),
                                Text(
                                  'health',
                                  style: TextStyle(
                                      color: Colors.orange[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontFamily: "GlutenB"
                                    ),
                                  )],),
                            ),
                                const SizedBox(height: 10,),
                                 GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, '/Astuces');},
                                   child: Column(children:<Widget> [
                                                               Container(
                                                                 width: 100,
                                                                 height: 100,
                                                                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.grey[300],
                                                                 ),
                                    child:const Image(
                                      image: AssetImage('assets/health.png'),
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.contain 
                                    ),
                                                               ),
                                                               const SizedBox(height: 4,),
                                                               Text(
                                                                 'health',
                                                                 style: TextStyle(
                                      color: Colors.orange[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontFamily: "GlutenB"
                                    ),
                                                                 )],),
                                 ),
                                const SizedBox(height: 10,),
                                 GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, '/Astuces');},
                                   child: Column(children:<Widget> [
                                                               Container(
                                                                 width: 100,
                                                                 height: 100,
                                                                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.grey[300],
                                                                 ),
                                    child:const Image(
                                      image: AssetImage('assets/health.png'),
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.contain 
                                    ),
                                                               ),
                                                               const SizedBox(height: 4,),
                                                               Text(
                                                                 'health',
                                                                 style: TextStyle(
                                      color: Colors.orange[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontFamily: "GlutenB"
                                    ),
                                                                 )],),
                                 ),
                        ],
                      )
                    ],
                  ),
                )
            ],
        ),
      ),
    );
  }
}