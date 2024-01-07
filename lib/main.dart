import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet/screens/authentification/signup.dart';
import 'package:projet/screens/map.dart';
import 'package:projet/screens/pet/add_pet.dart';
import 'package:projet/screens/tips.dart';
import 'package:projet/screens/welcom.dart';
import 'screens/calendar/calendar.dart';
import 'package:projet/screens/pet/pet_list.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Correction de la syntaxe du constructeur

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/calendar',
      //initialRoute: '/map',
      //initialRoute: '/tips',
      //initialRoute: '/add_pet',
      //initialRoute: '/pet_list',
      //initialRoute: '/welcom',
      //initialRoute: '/signup',

      routes: { 
      '/calendar': (context) => const EventCalendarScreen(),
      //'/tips': (context) => const Astuces(),
      //'/add_pet': (context) => const AddPet(),
      //'/pet_list': (context) =>  PetList(),
      //'/welcom': (context) =>  Welcome(),
      //'/signup': (context) =>  SingUpScreen(),
      //'/map': (context) => const CurrentLocationScreen(),
      },
      
    );
  }
}
