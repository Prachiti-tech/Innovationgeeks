import 'package:flutter/material.dart';
import 'package:commitment/widgets/Password.dart';
import 'package:commitment/widgets/Username.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:commitment/constants.dart';

import 'Email.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
                          child: Container(
          child:Padding(
              padding: const EdgeInsets.only(top:80.0,right: 40.0,left: 40.0),
              child: Container(
                height: 650.0,
                child: Card(
                  shape: RoundedRectangleBorder(  
                    borderRadius: new BorderRadius.circular(20.0),
                    ),
                            child: Column(
                    children:[
                      Card(
                        color: Colors.yellowAccent[700],
                        shape: RoundedRectangleBorder(  
                    borderRadius: new BorderRadius.only(topLeft:Radius.circular(20.0),topRight:Radius.circular(20.0)),
                    ),
                        child: Center(child: Text("Register",style:TextStyle(fontFamily:"open",fontSize: 35.5,color: Colors.white)))),
                      
                      
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Username(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Email(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Password(p:"Password"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Password(p:"Confirm Password")
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top:12.0),
                         child: RaisedButton(
                           color: Colors.cyan[600],
                          child: Text("Register",style:TextStyle(fontFamily:"open",fontSize: 20.0,color: Colors.white)),
                          onPressed: (){
                            
                          }),
                       )

                      

                    ]
                  ),
                ),
              ),
          ) ,
          
        ),
            ),
      ),
    );
  }
}
