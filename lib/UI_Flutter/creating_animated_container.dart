import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/adding_images_and_creating_login_page.dart';
import 'creating_button_with_alignment.dart';
import 'routes.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

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
class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Long press detected!'),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate ()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              AppBar(
                backgroundColor: Colors.blueAccent.shade700,
                title: changeButton?new Text("Logged in",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold)):new Text("WELCOME",style: TextStyle(fontSize: 20)),
              ),
              SizedBox(
                height: 18,
              ),
              Image.asset("assets/images/login_page_image.png",fit: BoxFit.cover),
              SizedBox(
                height: 2,
              ),
              new Text("Login/SignIn $name",
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
                          ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Try using username";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {

                          });
                        },
                  ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                        labelStyle: TextStyle(color: Colors.blueAccent.shade700),
                        counterText: "Haseeb'sCreation",counterStyle: TextStyle(color: Colors.blueAccent.shade700,fontWeight: FontWeight.w600),
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Password must be entered";
                        }
                        else if(value.length <6){
                          return "Short Password";
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Colors.blueAccent.shade700,

                      // shape: changeButton?BoxShape.circle : BoxShape.rectangle, (We can also do this)
                      borderRadius: BorderRadius.circular(changeButton?30 :50),

                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () => moveToHome(context),
                        splashColor: Colors.blue.shade900,

                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),

                          height: 50,
                          width: changeButton?50 : 150,
                          alignment: Alignment.center,
                          child: changeButton?Icon(Icons.done,color: Colors.white):new Text("Login",style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                   ),
                  ),
                      ),
                    ),
                    SizedBox(
                      child: changeButton?Text("Signed in",style: TextStyle(fontWeight: FontWeight.bold)
                      ):new Text("Signing in",style: TextStyle(fontWeight: FontWeight.w600,height: 1.5)),
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
