import 'package:commitment/widgets/Email.dart';
import 'package:commitment/widgets/Password.dart';
import 'package:commitment/widgets/Username.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:commitment/constants.dart';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
                          child: Container(
          child:Padding(
              padding: const EdgeInsets.only(top:130.0,right: 40.0,left: 40.0),
              child: Container(
                height: 350.0,
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
                        child: Center(child: Text("LOGIN",style:TextStyle(fontFamily:"open",fontSize: 35.5,color: Colors.white)))),
                      
                      
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Username(),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Password(p: "Password",),
                      ),
                      RaisedButton(
                        child: Text("Login",style:TextStyle(fontFamily:"open",fontSize: 20.0,color: Colors.white)),
                        onPressed: (){
                          
                        })

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

/*class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Open',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
*/
 /* import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}*/

