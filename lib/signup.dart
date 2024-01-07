import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:petpetni/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'HomePage.dart';
import 'login.dart';

String accounttype = '';
String username = '';
String email = '';
String password = '';
String confirmPassword = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(SingUpScreen());
}

class SingUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset('assets/paw.png'),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffd8d4d3),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      'Create your account',
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        height: 0.8825,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          onChanged: (value) {
                            username = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Your username'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Petpetou@gmail.com'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
                        child: TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Your password'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                        child: Text(
                          'Confirm password',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 0.8825,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 15.0),
                        child: TextField(
                          onChanged: (value) {
                            confirmPassword = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Confirm your password'),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        try {
                          if (password == confirmPassword) {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .createUserWithEmailAndPassword(
                              email: email,
                              password: password,
                            );

                            // Set the display name (username) for the user
                            await userCredential.user!
                                .updateDisplayName(username);

                            // Store additional user data in Cloud Firestore
                            await FirebaseFirestore.instance
                                .collection('users')
                                .doc(userCredential.user!.uid)
                                .set({
                              'username': username,
                              'email': email,
                              'password': password,
                            });

                            print("Registered: ${userCredential.user!.uid}");
                            print("Username: $username");

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => YouareScreen()),
                            );
                          } else {
                            print("Error: Passwords do not match");
                          }
                        } catch (e) {
                          print("Error: $e");
                        }
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => SingInScreen()),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YouareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: YouareCol(),
      ),
    );
  }
}

class YouareCol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 120,
            child: Image.asset('assets/paw.png'),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffd8d4d3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'You are ?',
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          height: 0.8825,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageAndText(
                        imagePath: 'assets/animow.png',
                        description: 'A pet lover',
                        onPressed: () async {
                          print('Pet lover pressed');
                          accounttype = 'Pet lover';
                          print(accounttype);
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .signInWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                          await FirebaseFirestore.instance
                              .collection('users')
                              .doc(userCredential.user!.uid)
                              .update({
                            'accounttype': accounttype,
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageAndText(
                        imagePath: 'assets/vet.png',
                        description: 'A vet',
                        onPressed: () async {
                          print('Vet pressed');
                          accounttype = 'vet';
                          print(accounttype);
                          print(email);
                          print(password);
                          print(username);
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .signInWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                          await FirebaseFirestore.instance
                              .collection('users')
                              .doc(userCredential.user!.uid)
                              .update({
                            'accounttype': accounttype,
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ImageAndText extends StatelessWidget {
  final String imagePath;
  final String description;
  final VoidCallback? onPressed;

  ImageAndText({
    required this.imagePath,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // Add any additional styling here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 90, height: 90),
            SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}
