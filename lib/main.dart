import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:petpetni/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signInAnonymously() async {
    try {
      await _auth.signInAnonymously();
      print('Anonymous user signed in');
    } catch (e) {
      print('Error signing in anonymously: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Authentication'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _signInAnonymously,
          child: Text('Sign In Anonymously'),
        ),
      ),
    );
  }
}
