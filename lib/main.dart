import 'package:flutter/material.dart';
import 'screens/tips.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Correction de la syntaxe du constructeur

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/tips',
      routes: {
        '/tips': (context) => const Tips(),
      },
    );
  }
}
