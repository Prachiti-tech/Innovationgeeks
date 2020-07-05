import 'package:flutter/material.dart';

class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     child:ListView(children: <Widget>[
       ListTile(title:Text("Books"),leading: Image.asset("lib/images/Books.png")),
       ListTile(title:Text("Today's Word"),leading: Image.asset("lib/images/w.png")),
       ListTile(title:Text("Today's phrase"),leading: Image.asset("lib/images/p.png")),
       ListTile(title:Text("Dictionary"),leading: Image.asset("lib/images/Dictionary.png") ),
       ListTile(title:Text("More about English (Pdf)"),leading: Image.asset("lib/images/pdf.png") ),
       ListTile(title:Text("Premium"),leading: Image.asset("lib/images/crown.png") )

     ],)
    );
  }
}