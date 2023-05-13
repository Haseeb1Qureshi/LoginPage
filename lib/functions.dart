import 'dart:io';

class Calculator
{
  int a=0;
  int b=0;
  Calculator(int a, int b){
    this.a=a;
    this.b=b;
  }
  void add(){
    int sum=a+b;
    print("Addition : $sum");
    return;
  }
  void sub(){
    int sum=a-b;
    print("Subtraction : $sum");
    return;
  }
  void mul(){
    int sum=a*b;
    print("Multiplication : $sum");
    return;
  }
  double div(){
    double sum=a/b;
    return sum;
  }
}
void main(){
  Calculator c=Calculator(5,5);   //new Calculator(5,5);   Calculator(); in case of parameters in the constructor method;
  c.add();
  c.sub();
  c.mul();
  double div=c.div();
  stdout.write("Division : $div");
}