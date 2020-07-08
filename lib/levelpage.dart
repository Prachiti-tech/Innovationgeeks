import 'package:commitment/widgets/result.dart';
import 'package:flutter/material.dart';
import 'package:commitment/LevelButton.dart';

class LevelPage extends StatelessWidget {
 
 final Color active = Colors.yellowAccent;
 final Color inactive =Colors.grey;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(child: Text("BOOSTERS",style: TextStyle(color: Colors.white,fontSize: 30.0,fontFamily: "jai")))
        ),
        body: SafeArea(
          child: SingleChildScrollView(
             child: Center(
              child:Expanded(
                              child: Column(
                  children: <Widget>[
                    
                    Padding(
                      padding: const EdgeInsets.only(top:25.0),
                      child: Column(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Levelbutton(s:"Basic",c:  active),
                            
                          ),


                                                  
                         Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Levelbutton(s:"Advanced",c: result=="Basic"? inactive:active),
                          )
                        ]
                      ),
                    )

                  ],
                ),
              )
              
              ),
          ),),
        
      ) ;
  }
}