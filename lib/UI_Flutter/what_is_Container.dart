/* What is Container?
  - It is an invisible box. We can store multiple widgets in this box.
  - Container is a widget that combines common painting, positioning and sizing of the child widgets.
  - It is also a class to store one or more widgets and positon them on the screen according to our needs.
  - Generally, it is similar to box for stroring contents.
  - It allows many attributes to the user for decorating its child widget such as using margin, which separates the container
    with other contents.           */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/practice_Elevated_Button.dart';
import 'package:my_dummy_app/main.dart';

void main(){
  /* What is Container?
   - It is a widget that combines common painting, positioning, and sizing of the child widgets.
   - It is also a class to store one or more widgets and position them on the screen according to our needs.
   - Generally, it is similar to a box for storing contents.
   - It allows many attributes to the user for decorating its child widgets such as using marin, which separates the container wuth
     other contents.  */

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(
        title: new Text("Container"),

      ),
      body: new Center(
       child: Container(
         width: 100,
         height: 100,
         child: new Text("My Container"),
         color: Colors.red,
       ),
      ),
    );
  }
}
