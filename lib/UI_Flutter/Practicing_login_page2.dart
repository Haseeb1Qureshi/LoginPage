
import 'package:flutter/material.dart';

import 'routes.dart';
class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
       child: Column(
          children: [
           AppBar(
             backgroundColor: Colors.blueAccent.shade700,
             title: new Text("WELCOME",style: TextStyle(fontSize: 20)),
           ),
            SizedBox(
              height: 18,
            ),
            Image.asset("assets/images/login_page_image.png",fit: BoxFit.cover),
             SizedBox(
               height: 2,
             ),
            new Text("Login/SignIn",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade700,
                )),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 35),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "username",labelStyle: TextStyle(color: Colors.blueAccent.shade700),
                      )),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "password",
                      labelStyle: TextStyle(color: Colors.blueAccent.shade700),
                      counterText: "Haseeb'sCreation",counterStyle: TextStyle(color: Colors.blueAccent.shade700,fontWeight: FontWeight.w600),

                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      backgroundColor: Colors.blueAccent.shade700,
                      shape: StadiumBorder(side: BorderSide(color: Colors.black12)),
           ),
                    child: new Text("Signing in",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  SizedBox(
                    child: new Text("SignUp",style: TextStyle(fontWeight: FontWeight.w600,height: 1.5)),
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
