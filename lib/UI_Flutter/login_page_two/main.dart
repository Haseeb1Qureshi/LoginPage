import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/HomePageflutter.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';
import 'package:my_dummy_app/UI_Flutter/routes.dart';
import 'package:my_dummy_app/main.dart';
import 'package:my_dummy_app/UI_Flutter/proper_login_page_creation/app_routes.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: AppBarTheme(color: Colors.cyan),
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ),
      routes: {
        "homie": (context) => Homie(),
        "login": (context) => Login(),
      }
    );
  }
}
class Login extends StatefulWidget {
  @override
  State createState() => _LoginState();
}
class _LoginState extends State<Login> with SingleTickerProviderStateMixin {

  bool animateChange = false;

  final _loginformkey = GlobalKey<FormState>();

  late AnimationController _animationController;
  late Animation <double> _animation;

  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _animation = new CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );
    _animation.addListener(() => this.setState(() {}));
    _animationController.forward();
  }
  void movingForward(BuildContext context) async {
    if(_loginformkey.currentState!.validate()){
        setState(() {
          animateChange = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, "homie");
    }
    setState(() {
      animateChange = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/undraw_Teacher_re_sico.png',
              fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  new FlutterLogo(
                    size: _animation.value * 100,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 40,
                    child: Text("Welcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                      Form(
                        key: _loginformkey,
                      child: Theme(
                        data: ThemeData(
                          brightness: Brightness.dark,
                          primarySwatch: Colors.lightBlue,
                          inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Type email here",
                                  labelText: "Enter Email",
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "try input your email address";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                 hintText: "Type password here",
                                  labelText: "Enter Password",
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Try input your password";
                                  }
                                  else if(value.length < 6){
                                    return "Short Password(keyletters must be more than 6)";
                                  }
                                  return null;
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 50),
                              ),
                              Material(
                                color: Colors.lightBlue,
                                borderRadius: animateChange? BorderRadius.circular(30) : 
                                BorderRadius.circular(20),
                                child: InkWell(
                                  borderRadius: animateChange? BorderRadius.circular(30) :
                                  BorderRadius.circular(20),
                                 onTap: () => movingForward(context),

                                  child: Column(
                                    children: [
                                      AnimatedContainer(
                                        duration: Duration(seconds: 1),
                                        width: animateChange? 50 : 150,
                                        height: animateChange? 50 : 38,
                                        alignment: Alignment.center,
                                        child: animateChange? Icon(Icons.done_outline_sharp) :
                                        new Text("Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                           fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
        ],
      ),
    );
  }
}
class Homie extends StatelessWidget {
  @override

  final imageURL = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMEAraRxjkgWF7O2n3lTkUEBftpCrZUOJEIg&usqp=CAU";

  Widget build(BuildContext context){
    return Material(
      child:Scaffold(
          drawer: Drawer(
            width: 250,
            elevation: 50,
            backgroundColor: Colors.cyan.shade700,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountName: new Text("HASEEB QURESHI"),
                    accountEmail: new Text("haseebqureshi836@gmail.com"),

                    //currentAccountPicture: Image.network(imageURL),

                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageURL),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade700,
                      backgroundBlendMode: BlendMode.darken,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    await Future.delayed(Duration(milliseconds: 100));
                    await Navigator.pushNamed(context, "homie");
                  },
                  leading: Icon(CupertinoIcons.home,
                    color: Colors.black,
                  ),
                 title: Text("HOME",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                     letterSpacing: 15,
                   ),
                 ),
                ),
                ListTile(
                  onTap: () async {
                    await Future.delayed(Duration(milliseconds: 100));
                    await Navigator.pushNamed(context, "login");

                  },
                  leading: Icon(CupertinoIcons.profile_circled,
                    color: Colors.black,
                  ),
                  title: Text("PROFILE",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    await Future.delayed(Duration(milliseconds: 100));
                    await Navigator.pushNamed(context, "login");
                  },
                  leading: Icon(CupertinoIcons.mail,
                    color: Colors.black,
                  ),
                  title: Text("EMAIL",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 360,
                ),
                ListTile(
                  onTap: (){
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                  leading: Icon(CupertinoIcons.fullscreen_exit,
                    color: Colors.black,
                  ),
                  title: Text("EXIT",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: new Text("HOMEPAGE"),
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 600,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  elevation: 20,
                  shape: StadiumBorder(),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: new Text("BACK"),
                onPressed: () async {
                  await Future.delayed(Duration(milliseconds: 300));
                  await Navigator.popAndPushNamed(context, "login");
                },
              ),
            ],
          ),
        ),
    );
  }
}

