import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'profile.dart';

class Sidebar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 237, 154, 9),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 30, 20, 0),
            child: const Text('Menu',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'GlutenBold',
                )),
          ),
          const Divider(
            height: 30.0,
            color: Colors.white,
            thickness: 6,
            endIndent: 150,
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white, size: 30),
            title: Text('Profile',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'GlutenBold')),
            onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.white, size: 30),
            title: Text('Locate Vets',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'GlutenBold')),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white, size: 30),
            title: Text('Sign Out',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'GlutenBold')),
            onTap: () => null,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 10, 140, 0),
              child: Image(
                image: AssetImage('assets/dogside.png'),
                width: 50,
                height: 320,
              ))
        ],
      ),
    );
  }
}