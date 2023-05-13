
void main() {


  final name = "Haseeb";    // OR final String name = "Haseeb";

   // name = "Sudani";  -> i can not do this because the final variable can only be set once.

  //final var number  = 20;   -> we can not write var with final because var overrides the particular values in the same datatype.

  // we can also do this:
        final int number;
        number = 20;
        //number = 50; -> now, i can not do this because final variale can only be set once. It does not override.
        print(name+' '+'$number');    // OR   print(name+' '+'\n$number');

          //what if we add values to the final variable:

        final modifying_it = [
          50,
          30,
          40
        ];
        modifying_it.add(100);   // Although we can not assign the values to the final but we can add or modify it. We can not do this in const.
        print(modifying_it);


  //Now, move on to the second keyword, which is, "const" means, constant.

    //const can only be assigned at the beginning.

    const names = [
        "Haseeb",
        "Sudani",
        "Faraz"
    ];
    print(names);  //the const values now can not be changed. Unlike final values, const values can not be modified or we can not add values in the run-time.

  // names.add("Rafaz"); -> If i do this, it will throw me an exception.
}

    //let's check what if we don't assign values at the beginning in the const:
    /*    const numbers;
        numbers [               ->this is the example of const for not being initialized at the beginning. It must be intialized at the beginning.
          "Haseeb",
          "Sudani",
          "Faraz"
        ];    */

