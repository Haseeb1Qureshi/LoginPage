
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/Practice_of_creating_simple_hello_world_app.dart';
import 'package:my_dummy_app/UI_Flutter/stateful.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
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

  String myText ="";
  void _changeText(){
    setState(() {
      if(myText.startsWith("H")){
        myText = "Thanks for clicking me";
      } else {
        myText = "Hello";
      }
  });
  }
  Widget _bodyWidget(){
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
              new Text(myText),
            ElevatedButton(
              child: new Text("Click me"),
              onPressed: _changeText ,
            ),
          ],

        ) ,
      ),
    );
  }
  @override
  Widget build(BuildContext Context){
   return Scaffold(
     appBar: AppBar(
       title: new Text("Flutter App"),
        backgroundColor: Colors.blue.shade900,
     ),
     body: _bodyWidget(),
   );
  }
}
