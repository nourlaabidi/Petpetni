import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet/screens/map.dart';
import 'package:projet/screens/pet/add_pet.dart';
import 'package:projet/screens/tips.dart';
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
      //initialRoute: '/calendar',
      //initialRoute: '/map',
      //initialRoute: '/tips',
      //initialRoute: '/add_pet',
      initialRoute: '/pet_list',

      routes: { 
      //'/calendar': (context) => const EventCalendarScreen(),
      //'/tips': (context) => const Astuces(),
      //'/add_pet': (context) => const AddPet(),
      '/pet_list': (context) =>  PetList(),
      //'/map': (context) => const CurrentLocationScreen(),
      },
      
    );
  }
}
