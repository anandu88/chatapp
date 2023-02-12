import 'package:chatapp/screens.dart/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:chatapp/model/chatmodel.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: chats.length,itemBuilder: (BuildContext context, int index) { 
      final Message chat=chats[index];
      return
      GestureDetector(
        onTap: () => Navigator.push(context, 
        MaterialPageRoute(builder: (context) => Chatscreeen(user: chat.sender),)),
        child: ListTile(isThreeLine: true,
          leading:CircleAvatar(
            backgroundImage: NetworkImage(chat.sender.imageUrl),
            
            
          ) ,
          title: Text(chat.sender.name),
          subtitle: Text(chat.text),
          trailing: Text(chat.time),
        ),
      );

     },shrinkWrap: true,
     addRepaintBoundaries: true,
     addAutomaticKeepAlives: true,
     addSemanticIndexes: true,
     

    );
  }
}