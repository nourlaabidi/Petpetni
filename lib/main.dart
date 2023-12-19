import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet/screens/map.dart';
import 'package:projet/screens/tips.dart';
import 'screens/calendar/calendar.dart';

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
      
      initialRoute: '/map',
     //initialRoute: '/tips',
      routes: { 
      //'/calendar': (context) => const EventCalendarScreen(),
      //'/tips': (context) => const Astuces(),
      '/map': (context) => const CurrentLocationScreen(),
      },
      
    );
  }
}
