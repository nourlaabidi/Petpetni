// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

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
        backgroundColor: Color.fromARGB(255, 237, 154, 9),
        elevation: 0,
        shadowColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Image(
                image: AssetImage("assets/logo.png"),
                width: 230,
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                backgroundColor: Colors.white,
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
                                  'Your furry friend also needs to be spoiled',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    fontFamily: "GlutenSemiBold"
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
                                    fontSize: 18,
                                    fontFamily: "Gluten"
                                    ),),
                              ),
                              const SizedBox(height:100,)
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
                          child: Image(
                            image: AssetImage('assets/dog1.png'),
                            height: 200,
                            width: 160,
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
                                onTap: (){Navigator.pushNamed(context, '/Health');},
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
                                    'Health',
                                    style: TextStyle(
                                        color: Colors.orange[900],
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16,
                                        fontFamily: "GlutenSemiBold"
                                      ),
                                    )],),
                              ),
                                    const SizedBox(height: 10,),
                                   GestureDetector(
                                    onTap: (){Navigator.pushNamed(context, '/Health');},
                                     child: Column(children:<Widget> [
                                       Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.grey[300],
                                      ),
                                        child:const Image(
                                          image: AssetImage('assets/hygiene.png'),
                                          width: 10,
                                          height: 10,
                                          fit: BoxFit.contain 
                                        ),
                                      ),
                                      const SizedBox(height: 4,),
                                      Text(
                                      'Hygiene',
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          fontFamily: "GlutenSemiBold"
                                        ),
                                      )],),
                                   ),
                                    const SizedBox(height: 10,),
                                    GestureDetector(
                                      onTap: (){Navigator.pushNamed(context, '/Health');},
                                      child: Column(children:<Widget> [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24),
                                          color: Colors.grey[300],
                                        ),
                                          child:const Image(
                                            image: AssetImage('assets/psy.png'),
                                            width: 10,
                                            height: 10,
                                            fit: BoxFit.contain 
                                          ),
                                      ),
                                      const SizedBox(height: 4,),
                                      Text(
                                        'Psychology',
                                        style: TextStyle(
                                            color: Colors.orange[900],
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            fontFamily: "GlutenSemiBold"
                                          ),
                                        )],),
                                    ),
                          ],
                        ),
                      Column(
                        children: <Widget>[
                            GestureDetector(
                              onTap: (){Navigator.pushNamed(context, '/Health');},
                              child: Column(children:<Widget> [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.grey[300],
                                  ),
                                    child:const Image(
                                      image: AssetImage('assets/socialbeh.png'),
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.contain 
                                    ),
                                ),
                                const SizedBox(height: 4,),
                                Text(
                                  'Behaviour',
                                  style: TextStyle(
                                      color: Colors.orange[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontFamily: "GlutenSemiBold"
                                    ),
                                  )],),
                            ),
                                const SizedBox(height: 10,),
                                 GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, '/Nutrition');},
                                   child: Column(children:<Widget> [
                                                               Container(
                                                                 width: 100,
                                                                 height: 100,
                                                                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.grey[300],
                                                                 ),
                                    child:const Image(
                                      image: AssetImage('assets/food.png'),
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.contain 
                                    ),
                                                               ),
                                                               const SizedBox(height: 4,),
                                                               Text(
                                                                 'Nutrition',
                                                                 style: TextStyle(
                                      color: Colors.orange[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontFamily: "GlutenSemiBold"
                                    ),
                                                                 )],),
                                 ),
                                const SizedBox(height: 10,),
                                 GestureDetector(
                                  onTap: (){Navigator.pushNamed(context, '/Health');},
                                   child: Column(children:<Widget> [
                                                               Container(
                                                                 width: 100,
                                                                 height: 100,
                                                                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.grey[300],
                                                                 ),
                                    child:const Image(
                                      image: AssetImage('assets/train.png'),
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.contain 
                                    ),
                                                               ),
                                                               const SizedBox(height: 4,),
                                                               Text(
                                                                 'Training',
                                                                 style: TextStyle(
                                      color: Colors.orange[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontFamily: "GlutenSemiBold"
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