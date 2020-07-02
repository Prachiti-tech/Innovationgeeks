import 'package:commitment/widgets/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List li=["option1","option2"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: SingleChildScrollView(
                      child: Container(
        child: Column(
            children:[
              Question(i:1,q:"What is ?",l:li),
              Question(i:1,q:"What is ?",l:li),
              Question(i:1,q:"What is ?",l:li),
              Question(i:1,q:"What is ?",l:li),
            ]
        ),

        
      ),
          ),
    );
  }
}