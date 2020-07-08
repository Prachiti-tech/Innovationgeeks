import 'package:commitment/levelpage.dart';
import 'package:commitment/quizhard.dart';
import 'package:flutter/material.dart';

String result;
class Result2 extends StatefulWidget {
  
  @override
  _Result2State createState() => _Result2State();
}

class _Result2State extends State<Result2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
       body: Container(
         child:Column(
           children: <Widget>[
             Center(child: Text('Your Score is $Score ',style: TextStyle(),),),
             Center(child:RaisedButton(
               color: Colors.cyan[600] ,
               child: Text('Next'),
             
             onPressed: (){
               setState(() {
                 if(Score>7){
                 result="Advanced";
               }
              else{
                result="Basic";
              }
               });
               
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LevelPage()),
               );
              

             },))
           ],
         )
       ),
        
      ),
    );
  }
}