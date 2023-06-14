
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/practice_Elevated_Button.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';

class signupflutter extends StatefulWidget {
  @override
  State<signupflutter> createState() => _signupflutterState();
}
class _signupflutterState extends State<signupflutter> {
  @override

  bool doneAnimate = false;


  final _signUpKey = GlobalKey<FormState>();

  signUpMethod(BuildContext context) async {
    if (_signUpKey.currentState!.validate()) {
      setState(() {
        doneAnimate = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.popAndPushNamed(context, MyAppRoutes.loginRoute);
      setState(() {
        doneAnimate = false;
      });
    }
  }



  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _signUpKey,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/signup.png',
              width: 800,
              fit: BoxFit.cover,
            ),
            new Center(child: doneAnimate?Text("Signed Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.pink.shade900,
              ),
            ) : Text ("Sign Up",
              style: TextStyle(
                color: Colors.pink.shade900,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 28),
                child: Column(
                  children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your email id",
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.pink.shade900,
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "Create your email to signUp";
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
                      color: Colors.pink.shade900,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password must not be empty";
                    }
                    else if(value.length < 6){
                      return "short password";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Re-type Password",
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(
                      color: Colors.pink.shade900,
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Confirm your password to further proceed the process";
                    }
                    else if(value.length < 6){
                      return "short Password";
                    }
                    return null;
                  },
                ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter mobile no:",
                        labelText: "Mobile no:",
                        labelStyle: TextStyle(
                          color: Colors.pink.shade900,
                        ),
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Enter mobile number";
                        }
                        else if(value.length < 11){
                          return "Try entering authentic mobile number";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Colors.pink.shade800,
                      borderRadius: doneAnimate?BorderRadius.circular(30) : BorderRadius.circular(20),

                      child: InkWell(
                        onTap: () => signUpMethod(context),

                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              height: doneAnimate?40 : 50,
                              width: doneAnimate?50 : 150,
                              alignment: Alignment.center,
                              child: doneAnimate?Icon(Icons.assured_workload,color: Colors.white,size: 30,
                              ) : new Text("Done",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 350,
                    ),
                    SizedBox(
                      child: doneAnimate?new Text("Thanks for Signing Up",
                        style: TextStyle(
                          color: Colors.pink.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ) : new Text("Try Signing Up your account",
                        style: TextStyle(
                          color: Colors.pink.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
          ],
        ),
              ),
        ),
    ],
        ),
      ),
    );
  }
}
