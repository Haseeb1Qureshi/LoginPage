
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/Practice_of_creating_simple_hello_world_app.dart';
import 'package:my_dummy_app/main.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context){
    return MaterialApp(
      title: "My_StateLess_App",
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter Stateful"),
        shape: OutlineInputBorder(),
        backgroundColor: Colors.green.shade800,
      ),
      body: new Center(
        child: new Text(style: TextStyle(color: Colors.white,fontSize: 20),"Hello to the Stateful Widget"),
      ),
    );
  }
}

