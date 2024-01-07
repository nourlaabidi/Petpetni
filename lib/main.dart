import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/profile.dart';
import 'package:flutterapp/premium.dart';
import 'package:flutterapp/successpay.dart';
import 'package:flutterapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: UniqueKey(),

      debugShowCheckedModeBanner: false,
      initialRoute: '/Profile',
      routes: {
        '/Profile': (context) => Profile(),
        '/Premium':(context)=> Premium(),
        '/SuccessPay': (context) => SuccessPay(),
      },
    );
  }
}
