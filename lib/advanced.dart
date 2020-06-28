import 'package:commitment/main.dart';
import 'package:commitment/wd.dart';
import 'package:flutter/material.dart';
import 'package:commitment/widgets/conceptcard.dart';
//import 'drawer.dart';
class Advpage extends StatelessWidget {
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
             Navigator.pushNamed(context,'/wd');
           },),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Today's phrase"),leading: Image.asset("lib/images/p.png"),onTap: (){
             Navigator.pushNamed(context,'/pd');
           },),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Dictionary"),leading: Image.asset("lib/images/Dictionary.png"),onTap: (){
             Navigator.pushNamed(context, '/dic');
           }, ),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:7.6),
           child: ListTile(title:Text("Analyse Yourself"),leading: Image.asset("lib/images/analyse.png"),onTap: (){
             Navigator.pushNamed(context, '/an');
           }, ),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("More about English (Pdf)"),leading: Image.asset("lib/images/pdf.png"),onTap: (){
             Navigator.pushNamed(context, '/pdf');
           }, ),
         ),
         Divider(),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:12.0),
           child: ListTile(title:Text("Premium"),leading: Image.asset("lib/images/crown.png"),onTap: (){
             Navigator.pushNamed(context, '/pre');
           },),
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
                  title: Text("Advanced",style: TextStyle(fontFamily:"Daddy",fontSize: 33.3)),
                ),
              ),
               SliverFixedExtentList(
                itemExtent: 150.0,
                delegate:SliverChildListDelegate(
                  
                  [
                    ConceptCard(l:"https://www.britishcouncil.in/english/online/classes/myenglish"),
                    ConceptCard(l:"https://www.talkenglish.com/"),
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                    ConceptCard(l:"https://perfectlyspoken.com/"),
                   


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