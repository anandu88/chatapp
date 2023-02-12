import 'package:chatapp/model/chatmodel.dart';
import 'package:chatapp/screens.dart/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:(context, index) {
      final Message chat=chats[index];
      return
      GestureDetector(
        onTap: () => Navigator.push(context, 
        MaterialPageRoute(builder:(context) => Chatscreeen(user: chat.sender),)),
        child: ListTile(
          title: Text(chat.sender.name),
          leading: CircleAvatar(backgroundImage: NetworkImage(chat.sender.imageUrl),),
        ),
      );
      
    }, itemCount: chats.length,);
  }
}