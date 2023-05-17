import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/practice_Elevated_Button.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override

  String text = "";
  void _changeText(){
    setState(() {
      if(text.startsWith("H")){
        text = "Thanks for Clicking me";
      } else {
        text = "Hello";
      }
    });
  }

  Widget _buttonWidget(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 280,horizontal: 5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(text, style: TextStyle(fontSize: 18)),
            ElevatedButton(
              child: new Text(style: TextStyle(color: Colors.white),"Click Me"),
              onPressed: _changeText,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade900,shape: StadiumBorder()),

            ),
          ],
        ),

      ),
    );
  }

  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(
        title: new Text("My AppBar"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buttonWidget(),
            ElevatedButton(
              child: new Text("Go back"),
              onPressed: (){
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40),
                shape: StadiumBorder(),
                backgroundColor: Colors.red.shade900,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: new Text(style: TextStyle(fontSize: 20),"<= Swipe left to close the drawer"),
        ),
        semanticLabel: "Drawer",backgroundColor: Colors.blue.shade900,
      ),
    );
  }
}
