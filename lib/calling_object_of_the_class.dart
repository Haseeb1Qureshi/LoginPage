import 'dart:io';

import 'package:flutter/cupertino.dart';
class Human {
  //void Objectcall(name){
  void Objectcall({@required name = 'Sudani'}) {        //(We can create constructor as well) ->      Human(){
            //  |-> This is how we can also initialize in the method. The values you are intializing inside the curly braces are optional.
           //  If you'd not pass arguments in the main method, it will take this as an option, but
          // but if you pass something as an argument in the main method, it will print the parameters you passed argument in.
          // @required is a function which will show error if we don't pass the argument.
    stdout.writeln("Welcome, $name");
  }
}
class Constructor{

  Constructor(name){
    
    print("Hello Dart, $name");
  }
}
  void main() {
    var h = Human(); //(You can also create as well)  ->     Human();   OR   Human h=new Human();
    h.Objectcall(name: "Haseeb");    // we can also do this.
    Constructor("Sudani");
  }
