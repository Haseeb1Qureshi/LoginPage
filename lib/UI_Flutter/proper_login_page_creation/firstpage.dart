
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';

class firstpage extends StatefulWidget {
  @override
  State<firstpage> createState() => _firstpageState();
}
class _firstpageState extends State<firstpage> {
  @override
  bool touch = false;

  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () async {
          setState(() {
            touch = true;
          });
          await Future.delayed(
              Duration(seconds: 1));
          await Navigator.pushNamed(context, MyAppRoutes.loginRoute);
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: touch?Colors.blue.shade900 : Colors.red.shade900,
          child: Center(
              child: touch?new Text("Woohoo! You're good to go...",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ) : new Text("Touch anywhere on the screen to go forward",

                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
          ),
        ),
      ),

    );
  }
}
