import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  Question({this.i,this.q,this.l});
  final String q;
  final int i;
  final List l;

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int a;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              
              children:[
                Text("${widget.i}"),
                Text(widget.q)
            ] ),
          ),
          
            RadioListTile(
              title: Text(widget.l[0]),
              value: 1,
              groupValue: a,
            onChanged: (val){
              setState(() {
                a=val;
                
              });
            },
            ),
            

            RadioListTile(
              title: Text(widget.l[1]),
              value: 2,
              groupValue: a,
            onChanged: (val){
              setState(() {
                a=val;
              });
            },
            ),
            RadioListTile(
              title: Text(widget.l[1]),
              value: 3,
              groupValue: a,
            onChanged: (val){
              setState(() {
                a=val;
              });
            },
            ),
            RadioListTile(
              title: Text(widget.l[1]),
              value: 4,
              groupValue: a,
            onChanged: (val){
              setState(() {
                a=val;
              });
            },
            ),
            
            

          
          
          
        ]
      )
      
    );
  }
}