
void main(){

  //syntax of map
  //example:
          //  var map_name = {'key1': 1, 'key2': "Haseeb" ......and, so on};
          // We can store different multiple dataTypes in the map.
      var map_name = {
          'key1': "Haseeb",
           'taking_number': 5,
            'trueorFalseCondition': true,
             'taking_double_data_type': 3.14
      };
            print(map_name);

            // What if we need to call a particular data?
            //in this case, simply do this:
            print(map_name['key1']); // This is how we can call a particular data in the map.

            // What if we need to override our data?
            //in this case, simply do this:
            map_name['trueorFalseCondition'] = "Sudani";  // This is how we replace/override the data with other.
            print(map_name);

            //what if we do this? -> map_name['name'] = "Faraz";
              //print(map_name);  -> This will create another key in the last index of the map because there is no such "name" variable assigned.



          // There is another way of doing above stuff too.
          // Here's how we can do this:

          var names = Map();
          names['Name'] = "Sudani";
          names['Age'] = 20;
          names['living_status'] = true;
          names['Salary'] = 50500;

          print(names);

          // Now, there are some operations that needs to be known:

          print(names.isNotEmpty);     //Checking if the map is empty. It will throw true because the map is not empty.
          print(names.isEmpty);       //It will throw false because map is not empty.
          print(names.length);        //It will print the total length of the map.
          print(names.keys);          //It will print total keys of the map.
          print(names.values);        //It will print total values of the keys in the map.
          print(names.remove('Salary'));    //It will print the removing data of the map.
          print(names.containsKey('Name'));     //It will check either the "name" data in the map is available or not. If it is available, if will throw true in the terminal.
          print(names.containsValue(30));    //It will check the "30" value in the map available or not. 30 is not available, so it will throw false in the terminal.

}