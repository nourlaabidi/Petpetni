import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projet/widgets/chat/messageBubble.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../global.dart';

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
    return Column (
      children: [
        Expanded(
  child: StreamBuilder(
    stream: FirebaseFirestore.instance.collection('/chat').orderBy('createdAt', descending: true).snapshots(),
    builder: (ctx, chatSnapshot) {
      if (chatSnapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      final chatDocs = chatSnapshot.data!.docs;
      return ListView.builder(
        reverse: true,
        itemCount: chatDocs.length,
        itemBuilder: (ctx, index) {
          final messageText = chatDocs[index].data()['text'];
          final isMe = chatDocs[index].data()['userId'] == Email.email;
          final imageUrl =chatDocs[index].data()['imageUrl'];
          return Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              if (imageUrl != null && imageUrl.isNotEmpty)
                Container(
                  width: 240, // Adjust image container size
                  height: 240, // Adjust image container size
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              if (messageText != null && messageText.isNotEmpty)
                Bubble(
                  messageText,
                  isMe,
                  key: ValueKey(chatDocs[index].id),
                ),
            ],
          );
        },
      );
    },
  ),
)],);
      },
    );
  }
}