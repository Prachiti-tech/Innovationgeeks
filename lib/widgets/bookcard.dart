import 'package:flutter/material.dart';
import  'package:url_launcher/url_launcher.dart';
class BookCard extends StatelessWidget {
  BookCard({this.l});
  final List l;
  //_launchURL() 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
       onTap: ()async {
        var url =l[0];
        if (await canLaunch(url)) {
        await launch(url);
        } else {
        throw 'Could not launch $url';
        }
        },
        child: Card
        (
          color: Colors.orangeAccent,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(12.0),
           ),
          child: Container(
                height: 125,
                width: 300,

                child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
        //  direction: Axis.vertical,
              children: <Widget>[
               Text(l[1]),
              ],
                 ),
                ),
              ),
          ),
      ),
    );
  }
}
