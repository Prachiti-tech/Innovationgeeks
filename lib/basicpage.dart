import 'package:commitment/main.dart';
import 'package:flutter/material.dart';
import 'package:commitment/widgets/conceptcard.dart';
import 'package:http/http.dart' as http;
//import 'drawer.dart';
class Lear extends StatefulWidget {
  
  @override
  _LearState createState() => _LearState();
}

class _LearState extends State<Lear> {
  List l;

  void getData()async{
    http.Response response=await http.get("https://a4b093956541.ngrok.io/basic");
    print(response.body);
    setState(() {
      l= [response.body];
    });

  }
  @override
  void initState() {
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: SafeArea(
                      child: Scaffold(
                  
            drawer: Drawer(
              
     child:ListView(children: <Widget>[
       //DrawerHeader(child: Text("Hello, $user")),
        Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Center(child: Text("Hello, $user",style: TextStyle(fontSize:25.0),))),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Books"),leading: Image.asset("lib/images/Books.png"),onTap: (){
             Navigator.pushNamed(context, '/bk');
           },),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Dictionary"),leading: Image.asset("lib/images/Dictionary.png"),onTap: (){
             Navigator.pushNamed(context, '/dic');
           },),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:7.6),
           child: ListTile(title:Text("Analyse Yourself"),leading: Image.asset("lib/images/analyse.png"),onTap:(){
            Navigator.pushNamed(context, '/an');
           } ),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("More about English (Pdf)"),leading: Image.asset("lib/images/pdf.png"),onTap:(){
              Navigator.pushNamed(context, '/pdf');
           }, ),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Premium"),leading: Image.asset("lib/images/crown.png"),onTap:(){
               Navigator.pushNamed(context,'/pre' );
           }, ),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Logout"),leading: Image.asset("lib/images/logout.png"),onTap:(){
               Navigator.pushNamed(context,'/logout' );
           }, ),
         )


       ],)
    ),
        body: CustomScrollView(
            slivers: <Widget>[
               SliverAppBar(
               
                
                 backgroundColor: Colors.pinkAccent[100],
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  
                  title: Text("Basic",style: TextStyle(fontFamily:"Daddy",fontSize: 33.3),),
                ),
              ),
               SliverList(
                
                delegate:SliverChildBuilderDelegate(
                  (BuildContext context,int index){
                    return ConceptCard(l: l[index],);
                  }
                )
              ),
            ],
        ),
      ),
          ),
    );
  }
}