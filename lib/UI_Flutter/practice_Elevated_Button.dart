import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/Practice_of_creating_simple_hello_world_app.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context){
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

  String myText = "";
  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Thanks for clicking me";
      } else {
        myText = "Hello";
      }
    });
  }

Widget _changeTextWidget(){
    return Container(
      padding: EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(myText),
            ElevatedButton(
              child: new Text("Click me"),
              onPressed: _changeText,
            ),
          ],
        ),
      ),
    );
  }
  Widget build(BuildContext Context){
    return Scaffold(
      body: _changeTextWidget(),
      appBar: AppBar(
        title: new Text("Flutter App"),
        shape: BeveledRectangleBorder(),
        backgroundColor: Colors.blue.shade900,
      ),
    );
  }
}