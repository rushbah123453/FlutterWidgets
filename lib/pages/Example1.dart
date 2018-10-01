import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  @override
  _Example1State createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  String titleValue='';
  String description;
  double price;

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      
      appBar: AppBar(title: Text("Example 1"),
       ),
      
      body:Container(
        
        margin: EdgeInsets.all(10.0),
        
        child:

      ListView(


        children: <Widget>[

          TextField(
            decoration: InputDecoration(labelText: 'Name'),
            onChanged: (String value){
              setState(() {
                titleValue=value;

              });
            },
          ),

          TextField(

            decoration: InputDecoration(labelText: 'Descripton'),
            maxLines: 3,
            onChanged: (String value){
              setState(() {
                description=value;

              });
            },
          ),
          TextField(

            decoration: InputDecoration(labelText: 'Rate'),
            keyboardType: TextInputType.number,
            onChanged: (String value){
              setState(() {
                price=double.parse(value);

              });
            },
          ),




          /*Text(titleValue)*/

        ],

      ),
      ),);
    }
}
