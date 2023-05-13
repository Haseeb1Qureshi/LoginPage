
void main() {
  var a = 100;
  var b = 50;
  if (a > 50) { //This will check the condition, if it is true, it will print "Block-1. But if it is not true, it will print
    print("Block-1"); //Block "ELSE part".
  } else {
    print("ELSE part");
  }

  //Now, check the Nested if:
  if (a > 50) {
    print("Block-2");
    if (a >= 70) {
      print("Block-3");
      if (a == b) {
        print("Block-4");
        if (a == 100) {
          print("Block-5");

          //if condition is based on the True condition. If the above condition is True, it will never check the below conditions.
          //But if the above condition is false then it will come to check the next condition is true or false. If the condition is true,
          //it will print this true condition no matter if the next condition is also true.
          //if the compiler sees any true condition, it will ignore the rest of the code. So it's important to code conditional
          //programming series wise according to your work.
        }
      }
    }
  }
  // Now, let's check "else if":
  if (a == b) {
    print("Block-6");
  }
  else if (a <= 50) {
    print("Block-7");
  }
  else if (b > 40) {
    print("Block-8");
  }
  else {
    print("Else-if_ELSE Block");

    //In this conditions, only block-8 will execute because the above conditions are false.
  }

  //Now, let's look at && operator or and_get:
  //In this operator, we have multiple conditions in the same conditional block. If a single condition is false then the compiler
  //will false the rest the of the conditions.
  //example:
  if (a > 100 && b < 100) {
    print("Block-9");
  }
  else if (a == 100 && b > 40) {
    print("Block-10");
  } else {
    print("Block_&&_Operator_else");

    //Only Block-10 will execute because all conditions must be true at the same time and if block.
  }

  //Now, let's get straight to the || operator/ or_get:
  //In this operator, we have multiple conditions at the same time and in the same conditional block. So it will execute the whole
  // conditional block no matter if there is any false condition.
  //we use this operator when we write want to do same function but different condition.
  //example:
  if (a == b || b == 60) {
    print("Block-11");
  }
  else if (a == b || a < 120 || b > 100) {
    print("Block-12");
  } else {
    print("|| operator Else Block");

    //so there is no worry if there is any false condition written in the condtional block but any one condition must be true.
  }
}
