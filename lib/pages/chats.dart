import 'package:astuces/widgets/chat/newmessages.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:astuces/widgets/chat/messages.dart';
import 'package:astuces/widgets/chat/newmessages.dart';


class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 154, 9),
        elevation: 2, 
        shadowColor: Colors.white, 
         leading:
          IconButton(
            icon: const Icon(Icons.menu), 
            color:Colors.white,
            onPressed: () {/* Action à effectuer lors du clic sur l'icône*/},
            ),
          title: const Row(
            children: [
              Expanded(
                flex:1,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/whitepaw.png"), 
                  backgroundColor: Colors.transparent, 
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                flex:4,
                child: Text('Petpetni', style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                fontFamily: "GlutenB"
                ),),
              ),
              Expanded (
                flex:1,
                child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                //backgroundColor: Colors.white, 
  
                ),
              ),
            ],
          ),
      ),
      body:Container(child:Column(children: <Widget>[
              Expanded(child:Messages(),),
              NewMessages(),
            ]),),
          /*floatingActionButton: FloatingActionButton(
            child:Icon(Icons.add),
            onPressed: () {
                FirebaseFirestore.instance
                    .collection('/chat')
                    .add({"text": "what is the problem"});
            },
          ),*/
    );
  }
}