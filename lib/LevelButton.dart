import 'package:flutter/material.dart';

class Levelbutton extends StatelessWidget {
 Levelbutton({this.s,this.c});
 
 final String s;
 final Color c;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200.0,
      height: 100.0,
          child: FlatButton(
        
        
        
        shape: RoundedRectangleBorder(
        side: BorderSide(width: 200.0),  
        borderRadius: new BorderRadius.circular(50.0),
       ),
        onPressed: (){
         //(c==Colors.yellowAccent && s=="Basic")? Navigator.pushNamed(context, '/le'): null;
         
        // s=="Advanced"? Navigator.pushNamed(context, '/ad'):null;

         //c==Colors.grey && s=="Advanced"
         if(c==Colors.yellowAccent && s=="Basic")
         {
           Navigator.pushNamed(context, '/le');
         }
         else if(c==Colors.grey && s=="Advanced")
         {
           null;
         }
         else if(s=="Advanced"&& c==Colors.yellowAccent)
         {
           Navigator.pushNamed(context, '/ad');
         }

        },
         child: Text(s,style: TextStyle(fontSize:25.0),), color:c),
    );
  }
}

