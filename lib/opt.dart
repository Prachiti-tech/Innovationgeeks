import 'package:commitment/levelpage.dart';
import 'package:flutter/material.dart';

class Opt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children:[
            FlatButton(child: Text("Take a Quiz"),color: Colors.tealAccent[400],
          onPressed: (){
            Navigator.pushNamed(context, '/qu');

          },),
          FlatButton(child: Text("Skip the Quiz"),color: Colors.tealAccent[400],onPressed: (){
            Navigator.push(  context,  MaterialPageRoute(    fullscreenDialog: true,    builder: (context) => LevelPage(a:"Basic"),  ), );

          },)


          ]
                  ),
        
      ),
    );
  }
}