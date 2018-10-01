import 'package:flutter/material.dart';
import './pages/Example1.dart';
import './pages/Example2.dart';
import './pages/Example3.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        '/example1': (BuildContext context) => Example1(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:Center(child:


      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Example 1"),
              onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Example1()))
                  //  Navigator.pushReplacementNamed(context, '/example1')
                  ,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Example 2"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Example2()));
                print("Example 2 pressed");
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Example 3"),
              onPressed: () {
                print("Example 3 pressed");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Example3()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Example 4"),
              onPressed: () {
                print("Example 4 pressed");
              },
            ),
          )
        ],
      ),),
    );
    }
}
// To make customize page appear when we press back button
//Material app will by default lead to last page when we press back button
//to make customize page open on back button use WillPopScope before scafold and use a method onWillPop:() { pass your custom page here }

