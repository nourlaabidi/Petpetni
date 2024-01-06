import 'package:astuces/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:astuces/pages/astuces.dart';
import 'package:astuces/pages/dogs.dart';
import 'package:astuces/pages/about.dart';
import 'package:astuces/pages/chats.dart';
import 'package:firebase_core/firebase_core.dart';



void  main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute:'/Astuces',
    routes: {
      '/Dogs':(context)=>const Dogs(),
      '/Astuces':(context)=>const Astuces(),
      '/About':(context)=>const About(),
      '/chats':(context)=>const Chats(),
    },
   );
  }
}