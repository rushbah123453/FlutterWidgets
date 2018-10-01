import 'package:flutter/material.dart';
import 'Tab1.dart';
import 'Tab2.dart';


class Example2 extends StatefulWidget {
  @override
  _Example2State createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,child: Scaffold(
      appBar: AppBar(title: Text("Tab Bar Example"),
      bottom: TabBar(tabs: <Widget>[

        Tab(text: "Tab 1",
        icon: Icon(Icons.create),),
        Tab(text: "Tab 2",
        icon: Icon(Icons.list),),
      ]),
      ),


    body: TabBarView(children: <Widget>[

      Tab1(),Tab2()
    ]),
    ),

    );
  }
}
