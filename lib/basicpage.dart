import 'package:commitment/main.dart';
import 'package:flutter/material.dart';
import 'package:commitment/widgets/conceptcard.dart';
//import 'drawer.dart';
class Lear extends StatelessWidget {
  
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
           child: ListTile(title:Text("Today's Word"),leading: Image.asset("lib/images/w.png"),onTap: (){
             Navigator.pushNamed(context, '/wd');
           },),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Today's phrase"),leading: Image.asset("lib/images/p.png"),onTap: (){
             Navigator.pushNamed(context, '/pd');
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
               SliverFixedExtentList(
                itemExtent:150.0,
                delegate:SliverChildListDelegate(
                  
                  [
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                    ConceptCard(l:"https://alison.com/course/speaking-and-writing-english-effectively"),
                    ConceptCard(l:"https://www.learnnow.com/find?q=online%20english%20learning%20free%20course&caid=lradus00301&poalq=11712373&gclid=Cj0KCQjw0Mb3BRCaARIsAPSNGpVjKHrW1s6Jm48VTha3XnF0lKMHj94H4sdV7RTtsI5EX06wOR6TVGMaAjY-EALw_wcB"),
                    ConceptCard(l:"https://www.talkenglish.com/"),
                    ConceptCard(l:"https://www.oxfordonlineenglish.com/free-spoken-english-lessons"),
                   ConceptCard(l:"https://www.oxfordonlineenglish.com/free-spoken-english-lessons"),
                   ConceptCard(l:"https://www.oxfordonlineenglish.com/free-spoken-english-lessons"),
                   ConceptCard(l:"https://www.oxfordonlineenglish.com/free-spoken-english-lessons"),
                ]
                ),
              ),
            ],
        ),
      ),
          ),
    );
  }
}