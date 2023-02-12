import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Popupmenubutton1 extends StatelessWidget {
  const Popupmenubutton1({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return[
          PopupMenuItem(child: CircleAvatar(
            backgroundImage: NetworkImage("https://i.ytimg.com/vi/fBsEwGRXxF4/maxresdefault.jpg"),
          )),
          PopupMenuItem(child: ListTile(title: Text("Denji"),)),
          PopupMenuItem(child: TextButton(onPressed: (){}, child: ListTile(
            leading: Icon(Icons.group),
            title: Text("New group"),
          ))),
          PopupMenuItem(child: TextButton(onPressed: (){}, child: ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text("contacts"),
          ))),
          PopupMenuItem(child: TextButton(onPressed: (){}, child: ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),

          )))

        ];
      },
    );
  }
}