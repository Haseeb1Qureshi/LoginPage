
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/main.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My New App",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.indigo,
            title: new Text("HOMEPAGE"),
        ),
        body: new Center(child: new Text("Hello to the newely created Flutter Application")),
      ),
    );
  }
}