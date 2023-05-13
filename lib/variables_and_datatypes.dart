import 'dart:ffi';
import 'dart:io';
void main() {
  int  normalValue = 5464896486454896465;     //as Int;
    stdout.writeln(normalValue);

    try {
      BigInt longValue = BigInt.parse('5456465465456456456456456456456456456494651654646541654');   //as for Long Values;
      stdout.write(longValue);
    }catch(Exception){
      stdout.writeln("There is Exception in this program...$Exception");
    }
  String name = "Haseeb";       //as for all the String values;
      stdout.writeln(name);

  bool trueorFalse = false as bool;     //as for checking value if it is true or false;
      stdout.writeln(trueorFalse);

                  //Now difference between "var" and "dynamic";
  /*"var" is a varible which stores thea data and can automatically identify your datatype;
   example of "var";  */
    var naam = "haseeb";        //var automatically identified that there is String datatype;
      stdout.writeln(naam);

      /*"dynamic variable" is a variable which stores the mulitple data with multiple datatypes
       example of "dynamic";   */

    dynamic subject;     //  OR var subject;
      subject; "management";          //String datatype;

  subject = 10;                   //Int datatype;

  subject  = false;               //Boolean datatype;

      stdout.writeln(subject);
}