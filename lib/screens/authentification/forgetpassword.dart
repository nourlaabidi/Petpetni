import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String verificationCode = '';
String email = '';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Forget Password",
            style: TextStyle(
              fontFamily: 'Gluten',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 0.8825,
              color: Color(0xff000000),
            ),
          ),
          centerTitle: true,
        ),
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatefulWidget {
  @override
  _MyColumnState createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  final TextEditingController _emailController = TextEditingController();

  Future<void> _sendVerificationCode() async {
    try {
      // Generate a random 6-digit verification code
      verificationCode = _generateVerificationCode();
      email = _emailController.text;
      // Call your custom sendEmail method to send the verification code via email
      await sendEmail(
          email: _emailController.text, verificationCode: verificationCode);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VerifScreen()),
      );

      // Now, you can navigate to the next interface or perform other actions
    } catch (e) {
      // Handle errors, such as invalid email, user not found, etc.
      print("Error sending verification code: $e");
    }
  }

  String _generateVerificationCode() {
    // Generate a random 6-digit code
    return (100000 + (DateTime.now().millisecondsSinceEpoch % 900000))
        .toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(
                'assets/background_lock.png',
                width: 300,
                height: 300,
              ),
              Positioned(
                bottom: 40,
                left: 25,
                right: 25,
                top: 25,
                child: Image.asset(
                  'assets/lock.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Gluten',
                fontSize: 18,
                fontWeight: FontWeight.w300,
                height: 0.8825,
                color: Color(0xff000000),
              ),
              children: [
                TextSpan(
                  text: 'Please Enter  your email adress\nto receive a ',
                ),
                TextSpan(
                  text: 'verification code.',
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 237, 154, 9),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffd8d4d3),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 30),
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
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Petpetou@gmail.com'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: _sendVerificationCode,
                      child: const Text(
                        'Send',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future sendEmail(
    {required String email, required String verificationCode}) async {
  final serviceId = 'service_lx9rlof';
  final templateId = 'template_ql2gehl';
  final userId = 'x4jSQ0oFTxBgBVDuc';
  final Url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    Url,
    headers: {
      'origin': 'http://localhost',
      'Content-Type': 'application/json',
    },
    body: json.encode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'email': email,
        'code': verificationCode,
      }
    }),
  );
  // Handle the response if needed
  print('Email.js Response: ${response.statusCode}');
  print(verificationCode);
}

class VerifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Verify your Email",
            style: TextStyle(
              fontFamily: 'Gluten',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 0.8825,
              color: Color(0xff000000),
            ),
          ),
          centerTitle: true,
        ),
        body: verifColumn(),
      ),
    );
  }
}

class verifColumn extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();

  void _onVerifyButtonPressed(BuildContext context) {
    print("Entering _onVerifyButtonPressed function");

    String enteredCode = _textFieldController.text.trim();
    print("Entered Code: $enteredCode");
    print("Verification Code: $verificationCode");

    if (enteredCode == verificationCode) {
      // Verification successful, navigate to the NewPasswordScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => newpasswordScreen()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Verification Error'),
            content: Text('The entered code is incorrect. Please try again.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(
                'assets/background_lock.png',
                width: 300,
                height: 300,
              ),
              Positioned(
                bottom: 40,
                left: 25,
                right: 25,
                top: 25,
                child: Image.asset(
                  'assets/emailverif.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Gluten',
                fontSize: 18,
                fontWeight: FontWeight.w300,
                height: 0.8825,
                color: Color(0xff000000),
              ),
              children: [
                TextSpan(
                  text: 'Please Enter ',
                ),
                TextSpan(
                  text: '6 digit code ',
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 237, 154, 9),
                  ),
                ),
                TextSpan(
                  text: 'sent to you. ',
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffd8d4d3),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Container(
                      height: 47,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                          child: TextField(
                            controller: _textFieldController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '6-digit code',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Resent code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () => _onVerifyButtonPressed(context),
                      child: const Text(
                        'Verify',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class newpasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Create new password",
            style: TextStyle(
              fontFamily: 'Gluten',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 0.8825,
              color: Color(0xff000000),
            ),
          ),
          centerTitle: true,
        ),
        body: newpwdColumn(),
      ),
    );
  }
}

class newpwdColumn extends StatelessWidget {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(
                'assets/background_lock.png',
                width: 250,
                height: 250,
              ),
              Positioned(
                bottom: 40,
                left: 25,
                right: 25,
                top: 25,
                child: Image.asset(
                  'assets/correct.png',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Gluten',
                fontSize: 18,
                fontWeight: FontWeight.w300,
                height: 0.8825,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              children: [
                TextSpan(
                  text: 'Your new password must be\n ',
                ),
                TextSpan(
                  text: 'different',
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    height: 0.8825,
                    color: Color.fromARGB(255, 237, 154, 9),
                  ),
                ),
                TextSpan(
                  text: ' from different user\npassword',
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffd8d4d3),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                  child: Text(
                    'New Password',
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
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                  child: Text(
                    'Confirm Password',
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
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
                  child: TextField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _updatePassword(context);
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _updatePassword(BuildContext context) async {
    String newPassword = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
    Future<String?> getAccountpwd(String email) async {
      print('test1: $email');
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: email)
          .get();
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
      print('test2');
      print('Document Data: ${documentSnapshot.data()}');
      return documentSnapshot['password'] as String?;
    }

    ;
    if (newPassword == confirmPassword) {
      try {
        String? password = await getAccountpwd(email);
        if (password != null) {
          try {
            UserCredential userCredential =
                await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: email,
              password: password,
            );

            // User signed in successfully
            print('User signed in: ${userCredential.user?.email}');
            await userCredential.user?.updatePassword(newPassword);
            // Show a success message or navigate to another screen
            print("Password updated successfully");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SingInScreen()),
            );
          } catch (e) {
            // Handle sign-in errors
            print('Error signing in: $e');
          }
        } else {
          // Handle the case where the password is null (optional)
          print('Password is null for the given email');
        }
      } catch (error) {
        // Handle password update failure
        print("Error updating password: $error");
      }
    } else {
      // Passwords do not match, show an alert dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Passwords do not match"),
            content: Text("Please make sure the passwords match."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }
}