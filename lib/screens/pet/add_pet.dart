import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projet/screens/tips.dart';

class AddPet extends StatefulWidget {
  const AddPet({Key? key}) : super(key: key);

  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  final  _nameController = TextEditingController();
  final  _ageController = TextEditingController();
  final  _heightController = TextEditingController();
  final  _weightController = TextEditingController();
  final  _descController = TextEditingController();
  @override
  
  void initState() {
    super.initState();
    
    
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 154, 9),
        elevation: 2, 
        shadowColor: Colors.white, 
         leading:
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Astuces()));
            },
          ),
          title: const Row(
            children: [
              
              Expanded(
              flex: 6,
              child: Image(
                image: AssetImage("assets/logoPetpetni.png"),
                
              ),
              ),

              SizedBox(width: 10.0,),
              
              Expanded (
                flex:1,
                child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                
  
                ),
              ),
            ],
          )
      ),
        body: SingleChildScrollView(
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
                            
                          ),
                        ),
                      ),

                      Center(
                        child: Text(
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 730,
            decoration: BoxDecoration(
              color: Color(0xffd8d4d3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 26,
                  top: 20,
                  child: Align(
                    child: SizedBox(
                      width: 120,
                      height: 30,
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
                            "assets/blacklogo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _nameController,
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
                                  "assets/birthday.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _ageController,
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
                                  "assets/height.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _heightController,
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
                                  "assets/weight.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _weightController,
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
                            controller: _descController,
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
                  left: 130,
                  top: 250,
                  child: Container(
                    width: 340,
                    height: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
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
                                      "assets/calendar.png",
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
                  top: 330,
                  child: Container(
                    width: 327,
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 90,
                          top: 4,
                          child: TextButton(
                            onPressed: () {
                              _addPet();
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 140,
                              height: 40,
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
                          bottom: 0,
                          left: 0,
                          
                          child: Align(
                            child: SizedBox(
                              width: 327,
                              height: 173,
                              child: Image.asset(
                                "assets/uplookingcat.png",
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
    )
      ),
    );
    
  }
  void _addPet() async {
		final name = _nameController.text;
    final age = _ageController.text;
    final height = _heightController.text;
    final weight = _weightController.text;
    final description = _descController.text;
  if (name.isEmpty) {
    print('title cannot be empty');
		
    return;
  }
  await FirebaseFirestore.instance.collection('Pet').add({
    "age": age,
    "description": description,
    "height": height,
    "name":name ,
    "weight":weight ,

  });
  Navigator.pushNamed(context, '/pet_list');
  }
}


  

