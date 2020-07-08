import 'package:commitment/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constants.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List l=[];

  Future<List> getQuestions() async{
    http.Response response = await http.get('https://90067c3710db.ngrok.io/quiz');
    Map jso=jsonDecode(response.body);
   // print(response.body);
    setState(() {
      jso.entries.forEach((e) => l.add([e.key,e.value]));
      print(l);
    });
    return [jso];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
             body: Container(
               child: FutureBuilder(future: getQuestions(),
                 builder: (context,snapshot){
                 if(snapshot.data==null){
                  return Padding(
                    padding: const EdgeInsets.only(top:200.0),
                    child: spinkit,
                  );
                 }
                 else{
                 return ListView.separated(

                  itemBuilder: (BuildContext context,int index)=>Question(l: l[index],),
                  separatorBuilder:(BuildContext context,int index)=>SizedBox(height: 20.0,),
                  itemCount: 10
                  );
               }
             },
             ),
             
        ),
          ),
    );
  }
}