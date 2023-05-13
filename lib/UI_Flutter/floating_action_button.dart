
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/adding_images_and_creating_login_page.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: FloatButton(),
    );
  }
}
class FloatButton extends StatefulWidget {
  @override
  _FloatButtonState createState() => _FloatButtonState();
}
class _FloatButtonState extends State<FloatButton> {
  @override

  String changeText = "";
  void _floatChange(){
    setState(() {
      if(changeText.startsWith("H")){
        changeText  = "Thanks for clicking me";
      } else {
        changeText = "Hello";
      }
    });

  }


  Widget _floatingChangeText(){
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(changeText,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
    Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(
        title: new Text("FloatingActionButton"),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: _floatingChangeText(),
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _floatChange,
        backgroundColor: Colors.blueAccent.shade700,
      ),
    );

  }
}

