import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_dummy_app/UI_Flutter/Scaffold.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My_Practice_App",
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: new Scaffold(
        body: new Center(
          child: new Text(style: TextStyle(color: Colors.white,fontSize: 25),"Hello to the Flutter Application"),
        ),
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.red.shade700,
          title: new Text(style: TextStyle(color: Colors.white),"My New Flutter App"),
        ),
        drawer: Drawer(
          backgroundColor: Colors.red.shade700,
          width: 250,
        ),
      ),
    );
  }
}