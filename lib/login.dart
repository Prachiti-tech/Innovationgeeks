import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:commitment/constants.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;



Future<List> signup(String username,String password) async {
  String url="https://a4b093956541.ngrok.io/login";
  final http.Response response = await http.post(
    '$url',
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
    body: jsonEncode(<String, String>{
      
      'username': username,
      'password': password,
      
    }),
  );

  //print('Here is response\n');
  print(response.body);
  dynamic jso =jsonDecode(response.body)['status'];
  print(jso);
  return [jso['type'],jso['message']];
}

class LoginScreen extends StatefulWidget {
  
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _signupKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  List _response;
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: Builder(
                         builder:(context)=> SingleChildScrollView(
                            child: Container(
          child:Padding(
                padding: const EdgeInsets.only(top:200.0,right: 40.0,left: 40.0),
                child: Container(
                  height: 400.0,
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
                          child: Center(child: Text("Login",style:TextStyle(fontFamily:"open",fontSize: 35.5,color: Colors.white)))),
                        
                        
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Form(
                                      key: _signupKey,
                                      child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                           'Username',
                                            style: kLabelStyle,
                                             ),
                                            SizedBox(height: 10.0),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              decoration: kBoxDecorationStyle,
                                              height: 60.0,
                                              child: TextFormField(
                                                validator: (u){
                                                 if (u.isEmpty) {
                                                 return 'Please enter Username';
                                                  }
                                                return null;
                                               },
                                              controller:_username,
                                              cursorColor: Colors.white,
                                              keyboardType: TextInputType.text,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Open',
                                              ),
                                             decoration: InputDecoration(
                                             border: InputBorder.none,
                                             contentPadding: EdgeInsets.only(top: 14.0),
                                              prefixIcon: Icon(
                                               Icons.person,
                                               color: Colors.white,
                                              ),
                                               hintText: 'Enter your Username',
                                               hintStyle: kHintTextStyle,
                                             ),
                                           ),
                                          ),
                                        ],
                                      ),
                          ),
                                   ),

                           
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           Text(
                           "Password",
                            style: kLabelStyle,
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: kBoxDecorationStyle,
                              height: 60.0,
                                child: TextFormField(
                                  validator: (u){
                                   if (u.isEmpty) {
                                     return 'Please enter Password';
                                       }
                                   return null;
                                  },
                                  controller: _pass,
                                  cursorColor: Colors.white,
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: TextStyle(
                                  color: Colors.white,
                                   fontFamily: 'Open',
                                  ),
                                 decoration: InputDecoration(
                                 border: InputBorder.none,
                                 contentPadding: EdgeInsets.only(top: 14.0),
                                 prefixIcon: Icon(
                                 Icons.lock,
                                 color: Colors.white,
                                 ),
                                hintText: 'Enter the Password',
                                hintStyle: kHintTextStyle,
                              ),
                             ),
                            ),
                          ],

                             )
                        ),
                       
                         Padding(
                           padding: const EdgeInsets.only(top:12.0),
                           child: RaisedButton(
                             color: Colors.cyan[600],
                            child: Text("Login",style:TextStyle(fontFamily:"open",fontSize: 20.0,color: Colors.white)),
                            onPressed: ()async{
                               if(_signupKey.currentState.validate()){ 
                              _response = await signup(_username.text,_pass.text);
                               String text;
                                 bool flag = false;
                                    if(_response[0] == "success"){
                                        text = _response[1];
                                        print("done");
                                        flag = true;
                                        }
                                    else text =_response[0] =="failure" ? _response[1]: 'Error. Please try again.';

                                    Scaffold.of(context).showSnackBar(SnackBar(content: Text(text),));
                                    if(flag==true){
                                      Navigator.pushNamed(context,'/wd');
                                    }

                               }
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
      ),
    );
  }
 }


