import 'package:chatapp/screens.dart/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/chatmodel.dart';

class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:  favorites.length,
    itemBuilder: (context, index) {
      user:favorites[index];
      return
       GestureDetector(
        onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => Chatscreeen(user: favorites[index]),)),
         child: ListTile(
          leading:CircleAvatar(
            backgroundImage: NetworkImage(favorites[index].imageUrl),
          ) ,
          title: Text(favorites[index].name),
          
         ),
       );

      
    });
  }
}