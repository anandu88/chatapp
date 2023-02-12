import 'package:chatapp/screens.dart/chats.dart';
import 'package:chatapp/screens.dart/contacts.dart';
import 'package:chatapp/screens.dart/favaruite.dart';
import 'package:chatapp/widgets/popupmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading:Popupmenubutton1(),
            title:Text("funchat"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            ],
            bottom: const TabBar(tabs: [
              Tab(text: "chats",
      
              ),
              Tab(
                text: "favourite",
              ),
              Tab(
                text: "contacts",
              )
            ],
            
            ),
      
          ),
          body: const TabBarView(children: [
           Chats(),
           Fav(),
           Contacts(),

            
          ]),
        ),
      ),
    );
  }
}