
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/adding_images_and_creating_login_page.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/HomePageflutter.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/LoginPageflutter.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/firstpage.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/signupflutter.dart';
import 'app_routes.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "MyLoginPage",
      home: firstpage(),
      routes: {
        MyAppRoutes.firstpageRoute: (context) => firstpage(),
        MyAppRoutes.loginRoute: (context) => LoginPageflutter(),
        MyAppRoutes.homeRoute: (context) => HomePageflutter(),
        MyAppRoutes.signupRoute: (context) => signupflutter(),
      },

    );
  }
}
