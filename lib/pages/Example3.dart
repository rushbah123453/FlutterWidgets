import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:

      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,


        children : [RaisedButton(child: Text("Alert button"),
            onPressed: (){
          showDialog(context: context,builder: (BuildContext context){
            return AlertDialog(

              title: Text("Alert Dialog"),
              content: Text("Are you Sure?"),
              actions: <Widget>[
                FlatButton(child: Text("Discard"),onPressed: (){

                },),
                FlatButton(child: Text("Cancel"),onPressed: (){
                  Navigator.pop(context,true);
                },)
              ],
            );
          });
          }
        ),


        RaisedButton(child: Text("ModalView"), onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context){

            return Center(child: Text("This is modal"),);
          });
        },)


        ]


    ),),);
  }
}
