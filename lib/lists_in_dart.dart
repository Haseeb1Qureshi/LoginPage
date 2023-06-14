
void main(){

  var listNumbers = [10,20,30,40];   //OR we can write this as well -> var listNumbers = [10,20,30,40,50];
  listNumbers.add(50);    //we can also add it like this with the help of "add" function. It will directly add to the next index of the list.

  // what if we say that we wanna add all the data to another list?
  // Here we can do like this:

  var names = [];
  names.add("Haseeb");
  names.add("Rafaz");     // This is how we can store our data in lists.
  names.add("Sudani");
  names.addAll(listNumbers);   // with the help of "addAll" function, we can add any data we want.

  names.insert(2, "Maplooto");     //this function is quite useful, with the help of this function, we can insert any data in between any data that we stored.

  names.insertAll(2, listNumbers);  // here we are inserting the data we stored in "listNumbers". Now, we are printing this data in 2nd index of the list.

  //in order to update your data, we can do this;
  // if spelled wrong of the above data, instead of writing faraz, i wrote rafaz mistakenly. so here's how i can fix this or update this:

  print(names);   //checking without update.

  names[1] = "Faraz";

  print(names);

  //Now, what if we need to replace our data with other?
  // in this case, we do this;
  //example:
  print(listNumbers); // this is the data that hasn't changed yet.

  listNumbers.replaceRange(3, 5, [80,100]);   //this is a replace method, we can replace our data through this function.

  print(listNumbers); // this is the data that we have updated or replaced with new data.


  // Now, we have another function, which is, remove function:

  listNumbers.removeAt(2);    //remove by selecting index of the list.
  print(listNumbers);

  listNumbers.remove(100);    //remove by selecting the actual name of the data of the list.
  print(listNumbers);

  listNumbers.removeLast();   //it will remove the last data of the list.
  print(listNumbers);

  listNumbers.removeRange(0, 1);  // remove by selecting the starting and ending index of the list.
  print(listNumbers);

  // Now, here are some Operations that needs to be known:
  //example:
  
  print("Length : ${listNumbers.length}");    //checkig length of the list.
  print("Reverse : ${listNumbers.reversed}");     //It will reverse your data.
  print("Printing_first_element : ${listNumbers.first}");    //It will print the first element in the list.
  print("Printing_last-element : ${listNumbers.last}");    //It will print the last element in the list.
  print("Checking_the_list_is_empty_or_not : ${listNumbers.isEmpty}");   //It will check the list is empty or not. If it is empty, then "true" will print.
  print("Checking_the_list_is_empty_or_not : ${listNumbers.isNotEmpty}");  //It will print "true" because the list is not empty.
  print("print_any_data_we_want_in_the_list : ${listNumbers.elementAt(0)}");  //With the help of this operation, we can print any data from the list by selecting the index of the list.


}