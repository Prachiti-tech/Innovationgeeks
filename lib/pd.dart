import 'package:flutter/material.dart';
//final String p;
class Pd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(title: Text("Phrase of the Day"),),
      body: Column(
        children:[
          Container(child:Text("Phrase:-"))
        ]
      )
    );
  }
}