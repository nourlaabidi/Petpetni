// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projet/global.dart';
import 'package:projet/screens/HomePage.dart';
import 'package:projet/screens/chats.dart';


class DiscussionsVet extends StatefulWidget {
  @override
  _DiscussionsVetState createState() => _DiscussionsVetState();
}

class _DiscussionsVetState extends State<DiscussionsVet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 237, 154, 9),
          elevation: 2,
          shadowColor: Colors.white,
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()), // Remplacez CalendarPage() par la page à laquelle vous souhaitez rediriger
                          );
          },
        ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Image(
                  image: AssetImage("assets/logoPetpetni.png"),
                  width: 230,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/claudio.png"),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          )),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          var users = snapshot.data?.docs;

          return ListView.builder(
            itemCount: users?.length,
            itemBuilder: (context, index) {
              var userData = users?[index].data() as Map<String, dynamic>;
              if (userData['email'] == Email.email) {
                return SizedBox.shrink();
              }
              return ListTile(
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Chats()),
                      );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 237, 224, 201),
                        ),
                        margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/user2.png"),
                                backgroundColor: Colors.white,
                                radius: 30.0,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Text(
                                    userData['username'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "Gluten",
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

