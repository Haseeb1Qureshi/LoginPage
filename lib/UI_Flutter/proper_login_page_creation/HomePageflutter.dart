

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';

class HomePageflutter extends StatefulWidget {
  @override
  State<HomePageflutter> createState() => _HomePageflutterState();
}
class _HomePageflutterState extends State<HomePageflutter> {
  @override

  bool backAnimate = false;
  backButtonAnimation(BuildContext context) async{
    setState(() {
      backAnimate = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyAppRoutes.loginRoute);
    setState(() {
      backAnimate = false;
    });
  }

  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: new Text("HomePage"),
          backgroundColor: Colors.pink.shade900,
        ),
        drawer: Drawer(
          backgroundColor: Colors.pink.shade900,
          shape: BeveledRectangleBorder(),
          width: 240,
          child: Center(
            child: new Text("<= Swipe Left to close the drawer!",style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ),
          ),
        body: Column(
          children: [
            SizedBox(
              height: 580,
            ),
            Center(
              child: Material(
                
                color: Colors.pink.shade900,
                borderRadius: backAnimate?BorderRadius.circular(50) : BorderRadius.circular(30),

                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () => backButtonAnimation(context),

                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: backAnimate?50 : 170,
                    child: Center(
                      child: backAnimate?Icon(Icons.arrow_back,color: Colors.white,
                      ) : new Text("Back",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
