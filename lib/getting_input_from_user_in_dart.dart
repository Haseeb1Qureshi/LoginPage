

import 'dart:io';

 void main() {
    stdout.writeln("Hello Dart");           //print('Hello Dart');

    stdout.write("Enter Your name");
    var name = stdin.readLineSync();

    stdout.write("Welcome, $name");        //print("Welcome, $name");
}