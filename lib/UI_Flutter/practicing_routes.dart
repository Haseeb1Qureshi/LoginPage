
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    ),
  );
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
              child: new Text("GotoFirstScreen"),
              onPressed: (){
                Navigator.pushNamed(Context, '/second');
              },
            ),
        ),
      );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Second Screen"),
        backgroundColor: Colors.red.shade700,
      ),
      body: Center(
        child: ElevatedButton(
              child: new Text("GoBack"),
              onPressed: (){
                // Navigator.pop(dfgvcvXxCVcXFD vcv/fvcContext);
              },
            ),
        ),
      );
  }
}