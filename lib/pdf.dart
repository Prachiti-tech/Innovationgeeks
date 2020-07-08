import 'package:commitment/constants.dart';
import 'package:commitment/widgets/bookcard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class PdfLinks{
  PdfLinks(this.des, this.lin);
  String des;
  String lin;
}

class Pdf extends StatefulWidget {
  
  @override
  _PdfState createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  List l=[];

  Future<List> getData()async{
    http.Response response=await http.get("https://a1eb4123d827.ngrok.io/more");
   // print(response.body);
    Map jso =jsonDecode(response.body);
    //print(jso);
   setState(() {
     jso.entries.forEach((e) => l.add([e.key, e.value]));
   });
    return [jso];
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: SafeArea(
                      child: Scaffold(
                  
            
        body: CustomScrollView(
            slivers: <Widget>[
               SliverAppBar(
               
                
                 backgroundColor: Colors.cyanAccent[400],
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  
                  title: Text("More about English",style: TextStyle(fontFamily:"Daddy",fontSize: 33.3),),
                ),
              ),

              

              FutureBuilder(

                 future: getData(),
                 builder: (context,snapshot){
                   if(snapshot.data==null){
                     return SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 200.0,
                        width: 200.0,
                         child: spinkit
                   ),
                    )
                   ],
                  ),
                  
                  );
                   }
                   else{
                     return SliverList(
                  
                  delegate:SliverChildBuilderDelegate(
                    
                    (BuildContext context,int index){
                      
                       return BookCard(l: l[index],);
                       
                       },
                       childCount: 5
                       
                  )
                  );
                   }
                 }
                    
                    
                    /* SliverList(
                  
                  delegate:SliverChildBuilderDelegate(
                    (BuildContext context,int index){
                     return ConceptCard(l: l[index],);
                    }
                  )
              ),*/
               ),
            ],
        ),
      ),
          ),
    );
  }
}