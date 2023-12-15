import 'package:flutter/material.dart';
import 'package:projet/screens/side_bar.dart';
import 'pet/add_pet.dart';
import 'pet/pet_list.dart';
import 'premium.dart';
class Tips extends StatefulWidget {
  const Tips({super.key});
  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
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
       body: Center(
          child: Container(
            color:const Color.fromARGB(255, 237, 154, 9),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/claudio.png'),
                            //backgroundColor: Colors.white,
                            radius: 50, // Ajustez la taille du cercle ici
                          ),
                          SizedBox(width: 10), // Espace entre l'image et le texte
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Claudio Dorevez',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, fontFamily: "Gluten"),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'ClaudioDorevez@gmail.com',
                                style: TextStyle(fontSize: 16, fontFamily: "Gluten", fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white, // Couleur du cadre
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: 
                        ListView(
                          children: <Widget>[
                            const SizedBox(height: 50),
                            _buildListItem('assets/blackPaw.png', 'Pet list', context, const PetList()),
                            _buildListItem('assets/addpet.png', 'Add pet', context, const AddPet()),
                            _buildListItem('assets/Premium.png', 'Upgrade to premium', context, const Premium()),
                            const SizedBox(height: 190),
                            _buildListItem('assets/signout.png', 'Sign Out', context, const Premium()),// a modifier
                          ],
                        ),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

    drawer: Sidebar());
  }
 Widget _buildListItem(String imagePath, String name, BuildContext context, Widget destination) {
    return ListTile(
      leading:  Image.asset(
    imagePath,
    width: 50, 
    height: 50, 
  ),
      title: Text(name ,style: const TextStyle( fontFamily: "Gluten",fontWeight: FontWeight.bold),),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }
}