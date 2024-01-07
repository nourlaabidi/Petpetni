import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bubble extends StatelessWidget {
  final String message;
  final bool isMe;
  var key;
  Bubble(
    this.message,
    this.isMe,
    {this.key}
  ); 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end:MainAxisAlignment.start,
      children:<Widget> [
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[300] : const Color.fromARGB(255, 237, 154, 9),
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft: ! isMe ? const Radius.circular(0):const Radius.circular(12),
              bottomRight: isMe ? const Radius.circular(0):const Radius.circular(12),
            ),
          ),
          width:240,
          padding: const EdgeInsets.symmetric(
            vertical:10,
            horizontal: 16
             ),
             margin:const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
             ),
             child:Text(message, style: TextStyle(
              color: isMe ? Colors.black : Colors.white,
            ),)
             ),
      ],
    );
  }
}