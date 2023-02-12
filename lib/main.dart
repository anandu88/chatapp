import 'package:flutter/material.dart';

import 'Homepage.dart';

void main(){
  runApp(
    MaterialApp(
      home:Homepage() ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      
    )

  );
}