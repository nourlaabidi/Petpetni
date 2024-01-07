import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:astuces/widgets/chat/messageBubble.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
          future: FirebaseAuth.instance.authStateChanges().first,
          builder:(ctx,futureSnapshot){
             if(futureSnapshot.connectionState == ConnectionState.waiting){
              return const Center(child:CircularProgressIndicator(),);
            }
    final currentUser = futureSnapshot.data;
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('/chat').orderBy('createdAt',descending:true).snapshots() ,
      builder: (ctx,chatSnapshot){
        if(chatSnapshot.connectionState == ConnectionState.waiting){
          return const Center(child:CircularProgressIndicator(),);
        }
        final document=chatSnapshot.data!.docs;
            return ListView.builder(
            reverse:true,
            itemCount:document.length,
            itemBuilder:(ctx,index)=>Bubble(document[index].data()['text'],document[index].data()['userId'] == currentUser?.uid,key:ValueKey(document[index].id)
            ),
            );}
        );
      },
    );
  }
}
