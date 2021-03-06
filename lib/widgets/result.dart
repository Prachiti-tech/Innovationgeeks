import 'package:commitment/levelpage.dart';
import 'package:commitment/quizhard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String result;

         /* Widget decide(){
          Future<SharedPreferences> prefs = SharedPreferences.getInstance();
                  Future<bool> o = prefs.getBoolValuesSF('quizTaken');
                  if(o == true){
                    return LevelPage();
                  }
                  else{
                    return Shivaji();
                  }

                }

void addBoolToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('quizTaken', true);
}*/

class Result extends StatefulWidget {
  
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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