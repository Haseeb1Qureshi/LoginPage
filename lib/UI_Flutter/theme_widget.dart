import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),
        primarySwatch: Colors.green,
        brightness: Brightness.light,

      ),

      home: Scaffold(
        appBar: AppBar(
          title: new Text("Theme Widget"),

        ),
        body: Center(
          child: new Text("Hello theme widget"),
        ),
      ),

    );
  }
}
