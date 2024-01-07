import 'package:flutter/material.dart';
import 'package:projet/screens/calendar/calendar.dart';
import 'package:projet/screens/pet/add_pet.dart';
import 'package:projet/screens/tips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PetList extends StatefulWidget {
  @override
  State<PetList> createState() => _PetListState();
}

class _PetListState extends State<PetList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 237, 154, 9),
          elevation: 2,
          shadowColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Astuces()),
              );
            },
          ),
          title: Row(
            children: [
              Expanded(
                flex: 6,
                child: Image(
                  image: AssetImage("assets/logoPetpetni.png"),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/claudio.png"),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
             Container(
                height: 60,
                padding: EdgeInsets.fromLTRB(21, 16, 17, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          size: 32,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Ajoutez ici l'action que vous souhaitez effectuer lors de l'appui sur l'icône
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EventCalendarScreen()), // Remplacez CalendarPage() par la page à laquelle vous souhaitez rediriger
                          );
                        },
                      ),

      SizedBox(width: 10), // Espace entre l'icône et le texte
      Expanded(
        flex: 6,
        child: Text(
          'Pet List',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Gluten',
            fontSize: 30,
            fontWeight: FontWeight.w600,
            height: 0.8825,
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPet()),
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: 32,
          height: 32,
          child: Image.asset(
            "assets/addanimal.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  ),
),


              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('Pet').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  final pets = snapshot.data!.docs;

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: pets.length,
                    itemBuilder: (context, index) {
                      final pet = pets[index].data() as Map<String, dynamic>;

                      return buildPetCard(pet); // Fonction pour construire la carte du pet
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildPetCard(Map<String, dynamic> petData) {
    return Container(
      
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),color:Color.fromARGB(255, 237, 224, 201),border: Border.all(color: Color(0xfffcb946)),
      ),
      
      margin: EdgeInsets.fromLTRB(0, 0, 17, 34),
      
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 17, 34),
              width: 350,
              height: 120,
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
                    (petData['description'] == "dog")
                        ? "assets/dogy.png"
                        : (petData['description'] == "cat")
                            ? "assets/cat1.png"
                            : (petData['description'] == "rabbit")
                                ? "assets/rabbit1.png"
                                : (petData['description'] == "turtle")
                                    ? "assets/turtle.png"
                                    : "assets/animalshape.png",
                    width: 167,
                    height: 111,
                  ),

                  Positioned(
                    left: 283,
                    top: 46,
                    child: IconButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour supprimer la carte de l'interface et de Firestore
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                    /*child: Image.asset(
                      "assets/calendar.png",
                      width: 44,
                      height: 39,
                    ),*/
                  ),
                  Positioned(
                    left: 158,
                    top: 52,
                    child: Text(
                      petData['name'],
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
                    left: 161,
                    top: 75,
                    child: Text(
                      petData['description'],
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
                    left: 220,
                    top: 75,
                    child: Text(
                      petData['age'],
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
                    left: 161,
                    top: 90,
                    child: Text(
                    "H: ${petData['height']}",
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
                    left: 220,
                    top: 90,
                    child: Text(
                    "W: ${petData['weight']}",
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
    );
  }
}
