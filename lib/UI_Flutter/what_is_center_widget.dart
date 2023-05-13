/* What is Center Widget?
   - As the Widget explained itself, it aligns child widgets to the center of the available space on the screen.

 */


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/creating_button_with_alignment.dart';

void main(){

  /* What is Center widget?
  - It aligns its child widgets to the center of the available space on the screen. */

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Center Widget"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.teal,
          child: Center(child: new Text(style: TextStyle(color: Colors.white,fontSize: 18),"My Container in Center"),
        ),
      ),
    ),
      drawer: Drawer(
        child: Center(
          child: new Text("<= Swipe left to close the drawer", style: TextStyle(color: Colors.white,fontSize: 20)),
        ),
        semanticLabel: "Drawer", backgroundColor: Colors.teal,
      ),

    );
  }
}

