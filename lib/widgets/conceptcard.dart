import 'package:flutter/material.dart';
import  'package:url_launcher/url_launcher.dart';
class ConceptCard extends StatelessWidget {
  ConceptCard({this.s,this.l});
  final String s;
  final String l;
  //_launchURL() 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
       onTap: ()async {
        var url =l  ;
        if (await canLaunch(url)) {
        await launch(url);
        } else {
        throw 'Could not launch $url';
        }
        },
        child: Card
        (
          color: Color(0xFF76FF03),
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(12.0),
           ),
          child: Container(
                height: 275,
                width: 300,

                child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
        //  direction: Axis.vertical,
              children: <Widget>[
               Text(l),
               
              ],
          ),
                ),


              ),
          ),
      ),
    );
  }
}