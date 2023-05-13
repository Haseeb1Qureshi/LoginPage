
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/adding_images_and_creating_login_page.dart';
import 'package:my_dummy_app/UI_Flutter/creating_button_with_alignment.dart';
import 'package:my_dummy_app/UI_Flutter/routes.dart';

import 'Practicing_login_page2.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyLoginPage",
      debugShowCheckedModeBanner: false,
      home: Login_Page(),
      routes: {
        MyRoutes.loginRoute: (context) => Login_Page(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
      );
  }
}


