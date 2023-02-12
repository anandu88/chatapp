import 'package:chatapp/model/chatmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Chatscreeen extends StatefulWidget {
  final User user;
  
  const Chatscreeen({super.key, required this.user});

  @override
  State<Chatscreeen> createState() => _ChatscreeenState();
}

class _ChatscreeenState extends State<Chatscreeen> {
  buildmessage(Message message,bool isMe){
    return Container(
      
      margin:isMe? const EdgeInsets.only(
        top: 8,bottom: 8,left: 80
      ):const EdgeInsets.only(
        top: 8,bottom: 8,right: 80
      ), 
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      decoration: BoxDecoration(
        borderRadius: isMe? const BorderRadius.only(topLeft: Radius.circular(15),
        bottomRight: Radius.circular(15)
        ):const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)
        ),
        color: Colors.blue[200]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time,style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w600),),
          SizedBox(height: 8,),
          Text(message.text),
        
          
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.user.name),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_rounded))
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
              topRight: Radius.circular(30))
            ),
            child: ClipRRect(
              
              child: ListView.builder(itemBuilder: (context, index) {

                final Message message=messages[index];
                final bool isMe=message.sender.id==currentUser.id;
                return buildmessage(message,isMe);
              },
              itemCount: messages.length,reverse: true,
              padding: const EdgeInsets.only(top: 15),),
              
            ),
             
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 70,
            color: Colors.white,

            child: Row(
              children: [IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
                Expanded(
                  child: TextField(autocorrect: true,
                  decoration: InputDecoration.collapsed(hintText: "send a message")
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}