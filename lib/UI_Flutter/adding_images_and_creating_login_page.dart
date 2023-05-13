import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/creating_button_with_alignment.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.light(brightness: Brightness.light),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginHomePage(),
    );
  }
}
class LoginHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            new Text("Welcome",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 28),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 30),
                          shape: StadiumBorder()),
                      child: new Text("Login",
                          style: TextStyle(
                              fontSize: 15)),
                      onPressed: (){
                    print("Login Successful");
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}








