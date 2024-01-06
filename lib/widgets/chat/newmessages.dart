import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewMessages extends StatefulWidget {
  const NewMessages({super.key});

  @override
  State<NewMessages> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessages> {
  var _enteredMessage = '';
  void _sendMessage(){
    FocusScope.of(context).unfocus();
    FirebaseFirestore.instance.collection('chat').add({
      'text':_enteredMessage,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:8),
      padding:EdgeInsets.all(8),
      child:Row(children: <Widget>[
        Expanded(child: TextField(
          decoration:InputDecoration(labelText: "Send a message... ") ,
          onChanged: (value){
             setState(() {
              _enteredMessage = value;
            });
          },
        )),
        IconButton(
          color: const Color.fromARGB(255, 237, 154, 9),
          icon: Icon(Icons.send,),
          onPressed:_enteredMessage.trim().isEmpty ? null:_sendMessage ,
          )
      ],)
    );
  }
}