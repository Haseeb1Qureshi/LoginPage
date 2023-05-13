import 'dart:io';
class Calculator
{
  Calculator(int a, int b){

    var sum = a+b;
    stdout.writeln("Addition :$sum");
  }
}
void main(){
  Calculator(5,5);
}
