import 'package:commitment/advanced.dart';
import 'package:commitment/levelpage.dart';
import 'package:commitment/bk.dart';
import 'package:commitment/ana.dart';
import 'package:commitment/quizhard.dart';
import 'package:commitment/start.dart';
import 'package:commitment/widgets/Register.dart';
import 'package:commitment/widgets/result.dart';
import 'package:flutter/material.dart';
import 'package:commitment/dic.dart';
import 'package:commitment/pdf.dart';
import 'package:commitment/pre.dart';
import 'basicpage.dart';
import 'package:commitment/quiz.dart';
import 'package:commitment/login.dart';






  void main() {

  runApp(MyApp());


}

String user;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Start(),
      routes: {
        '/le':(context)=>Lear(),
        '/ad':(context)=>Advpage(),
        '/sh':(context)=>Shivaji(),
        '/bk':(context)=>Bk(),
        '/an':(context)=>Sambhaji(),
        '/pdf':(context)=>Pdf(),
        '/dic':(context)=>Dic(),
        '/pre':(context)=>Pre(),
        '/login':(context)=>LoginScreen(),
        '/qu':(context)=>Quiz(),
        //'/re':(context)=>Result(s:Score)
      },
      /*home: LevelPage(a: "Advanced",)//Lear()*/
      
    );
  } 
}

  


