import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('/chat').snapshots() ,
      builder: (ctx,chatSnapshot){
        if(chatSnapshot.connectionState == ConnectionState.waiting){
          return Center(child:CircularProgressIndicator(),);
        }
        final document=chatSnapshot.data!.docs;
        return ListView.builder(
          reverse:true,
          itemCount:document.length,
          itemBuilder:(ctx,index)=>Text(document[index].data()['text'])
          );
      },
    );
  }
}
