import 'package:projet/discussions.dart';
import 'package:projet/widgets/chat/newmessages.dart';
import 'package:flutter/material.dart';
import 'package:projet/widgets/chat/messages.dart';


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
            icon: const Icon(Icons.arrow_back), 
            color:Colors.white,
            onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Discussions()),
                              );},
            ),
          title:  Row(
            children: [
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
          ),
      ),
      body:Container(child:Column(children: <Widget>[
              Expanded(child:Messages(),),
              NewMessages(),
            ]),),
    );
  }
}