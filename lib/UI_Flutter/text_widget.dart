/* What is Text Widget?
   - The tex widget displays a String of text with single style.
   - The string might break across multiple lines or might all be displayed on the same line
     depending on the layout constrainst.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  /* What is Text widget?
   - The text widget displayes a String of text with single style.
   - The String might break across multiple lines or might all be displayed on the same line depending on the layout  connstraints.

   */
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.light()),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("Text Widget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
          backgroundColor: Colors.teal.shade500,
          titleTextStyle: TextStyle(color: Colors.orange,fontSize: 20.5),
        ),
          body: Center(
            child: new Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),"Hello to the Text Widget"),
          ),
      ),
    );
  }
}
