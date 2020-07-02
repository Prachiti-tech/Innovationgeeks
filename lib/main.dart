import 'package:commitment/advanced.dart';
import 'package:commitment/levelpage.dart';
import 'package:commitment/wd.dart';
import 'package:commitment/pd.dart';
import 'package:commitment/bk.dart';
import 'package:commitment/ana.dart';
import 'package:commitment/widgets/Register.dart';
import 'package:flutter/material.dart';
import 'package:commitment/dic.dart';
import 'package:commitment/pdf.dart';
import 'package:commitment/pre.dart';
import 'basicpage.dart';
import 'package:commitment/quiz.dart';
import 'package:commitment/login.dart';
import 'package:http/http.dart';
  void main() {

  runApp(MyApp());


}

String user;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
      routes: {
        '/le':(context)=>Lear(),
        '/ad':(context)=>Advpage(),
        '/wd':(context)=>Wd(),
        '/pd':(context)=>Pd(),
        '/bk':(context)=>Bk(),
        '/an':(context)=>Ana(),
        '/pdf':(context)=>Pdf(),
        '/dic':(context)=>Dic(),
        '/pre':(context)=>Pre(),
        '/qu':(context)=>Quiz(),
      },
      /*home: LevelPage(a: "Advanced",)//Lear()*/
      
    );
  } 
}

  


