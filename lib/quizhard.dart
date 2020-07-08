import 'package:commitment/widgets/result.dart';
import 'package:flutter/material.dart';

int Score =0;

class Question{
  String Q,op1,op2,op3,op4;
  int ca;
  Question({this.Q,this.op1,this.op2,this.op3,this.op4,this.ca});
  
}

class Shivaji extends StatefulWidget {


  @override
  _ShivajiState createState() => _ShivajiState();
}

class _ShivajiState extends State<Shivaji> {
  

  List<Icon> a=[];

  
  static List<Question> q = [
    Question(Q: "_____ they the first customers of the day?",op1: "Who",op2: "Were",op3:"Was",op4:"What",ca: 2),
    Question(Q: "Thomas can't get out of bed because he _____ his leg.",op1: "breakable",op2: "break",op3:"broke",op4:"broken",ca: 3),
    Question(Q: "You can have ice cream _____ you finish your dinner.",op1: "when",op2: "but",op3:"and",op4:"or",ca:1 ),
    Question(Q: "I have never _____ such a boring book!",op1: "saw",op2: "read",op3:"readed",op4:"red",ca: 2),
    Question(Q: "Success in this examination depends _____ hard work alone.",op1: "at ",op2: "on",op3:"for",op4:"over",ca: 2),
    Question(Q: "Rohan and Rohit are twin brothers, but they do not look _____.",op1: "unique",op2: "different",op3:"alike",op4:"likely",ca: 3),
    Question(Q: "The four sides of a room that hold up the ceiling.",op1: "land",op2: "soil",op3:"ribbon",op4:"wall",ca: 4),
    Question(Q: "Discover:",op1: "To drive fast",op2: "To find unexpectedly",op3:"To dream",op4:"To start something",ca: 2),
    Question(Q: "In which of the following places do people 'deposit' money?",op1: "with a friend",op2: "at a store",op3:"at work",op4:"at a bank",ca: 4),
    Question(Q: "Which of the following best describes a 'wealthy' person?",op1: "an accountant",op2: "a millionaire",op3:"a teacher",op4:"a cashier",ca: 2)
  ]; 


  int qc=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
                appBar: AppBar(title: Padding(
                  padding: const EdgeInsets.only(left:95.0),
                  child: Text("Quiz"),
                ),
                backgroundColor: Colors.orangeAccent,),
                body: SingleChildScrollView(
                                  child: Center(
      child: Column(
            children: <Widget>[

              Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(q[qc].Q),
              ),

              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
        color: Colors.yellowAccent,
        onPressed: (){
        setState(() {
          if(q[qc].ca==1)
          {
           a.add(Icon(Icons.check,color: Colors.green,)); 
           
          }
          else
          {
            a.add(Icon(Icons.clear,color: Colors.red,));   

          }
          if(qc<9)
         { qc++;
         }
          
        });
        if(qc==9){
                {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result()),
                     );
          }
        
                  }
                  },
                   child: Text(q[qc].op1)),
              ),

              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
        color: Colors.yellowAccent,
        onPressed: (){
        setState(() {
          if(q[qc].ca==2)
        {
          a.add(Icon(Icons.check,color: Colors.green,));   
          Score++;
        }
        else
        {
          a.add(Icon(Icons.clear,color: Colors.red,));

        }
        
         if(qc<9)
         { qc++;
         }
        
        });
        if(qc==9){
                {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result()),
                     );
          }
        
                  }
        }, 
                  child: Text(q[qc].op2)),
      ),





              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
        color: Colors.yellowAccent,
        onPressed: (){
        setState(() {
          if(q[qc].ca==3)
          {
            Score++;
           a.add(Icon(Icons.check,color: Colors.green,));
           
          }
          else
          {
            a.add(Icon(Icons.clear,color: Colors.red,));   

          }

          if(qc<9)
         { qc++;
         }
        
         });

              if(qc==9){
                {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result()),
                     );
          }
              }
                  },
                   child: Text(q[qc].op3)),
              ),


             

              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
        color: Colors.yellowAccent,
        onPressed: (){
        setState(() {
          if(q[qc].ca==4)
          {
           a.add(Icon(Icons.check,color: Colors.green,));   
           Score++;
          }
          else
          {
            a.add(Icon(Icons.clear,color: Colors.red,));   

          }
          if(qc<9)
         { qc++;
         }
          
        });
      if(qc==9){
                {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result()),
                     );
          }
        
                  }
                  },
                   child: Text(q[qc].op4)),
              ),





                 Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                      children :a
                  ),
              ),

              
              


            ],
      ),
      ),
                ) 
              ),
        );
  }
}