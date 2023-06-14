

import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/HomePageflutter.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';

class LoginPageflutter extends StatefulWidget {
  @override
  State<LoginPageflutter> createState() => _LoginPageflutterState();
}
class _LoginPageflutterState extends State<LoginPageflutter> {
  @override

  bool loginAnimate = false;

  final String _email = "@";

  final _formKey = GlobalKey<FormState>();


  moveToHomp(BuildContext Context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        loginAnimate = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyAppRoutes.homeRoute);
      setState(() {
        loginAnimate = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Material(
     color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/loginpageflutter.png',fit: BoxFit.cover),

            SizedBox(
              height: 15,
            ),
            loginAnimate?Icon(Icons.done_outline_sharp,color: Colors.blue.shade500,
              size: 35,
            ) : new Text("Account Login",style: TextStyle(
                color: Colors.blue.shade500,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Colors.blue.shade500,
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enter your username";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.blue.shade500,
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Try Entering your password";
                      }
                      else if(value.length < 6){
                        return "password must be of 6 keyletters";
                      }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Material(
                    color: Colors.blue.shade500,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      borderRadius: loginAnimate?BorderRadius.circular(50) : BorderRadius.circular(30),
                      onTap: () => moveToHomp(context),

                      child: AnimatedContainer(
                        height: loginAnimate?40 : 48,
                        width: loginAnimate?85 : 150,
                        alignment: Alignment.center,
                        child: loginAnimate?new Text("loading...",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        ) : new Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        duration: Duration(seconds: 1),

                      ),
                    ),
                  ),
                  SizedBox(
                    child: TextButton(
                      child: loginAnimate?new Text("Signed in",
                        style: TextStyle(
                          color: Colors.blue.shade500,
                          fontWeight: FontWeight.w600,
                        ),
                      ) : new Text("Sign Up",
                        style: TextStyle(
                          color: Colors.pink.shade900,
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () async{
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyAppRoutes.signupRoute);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
