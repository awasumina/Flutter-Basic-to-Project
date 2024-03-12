
//basic program using dart
void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  
  String names = 'hello';
  
  print(names.isNotEmpty);
  
  names = '$names ok';
  print(names);
  }
}
  
  
  
  
  
//   //assignment 1
// void main(){  
//   String destinationZone = 'ABC';
//   int wt = 5;
  
//   switch (destinationZone){
//     case 'XYZ':
// //       print("the shipping ccost is ");
// //       print(5*5);
      
//       print('cost is ${wt*5}');
      
//     case 'ABC' :
//       print('cost is ${wt*7}');
      
//     case ' PQR':
//       print('cost is ${wt*10}');
      
//     default:
//       print("error");
      
//   }
//  }
  
  
// //for loop
// void main(){
//   String value = 'hello';
  
// //   for(int i=0;i<value.length; i++){
// //     print(value[i]);
// //     }
// //    print('the length is ${value.length}');
  
  
//   for(int i =0;i<value.length;i++){
//     if(i==1|| i==2||i==3){
//       continue;
//     }
//     print("print ${value[i]}");
//   }
   
// }


// //functions
// void main(){
//   addNumeber(2,3);
  
// }

// void addNumeber(a,b){
//   print(a+b);
// }




// void main(){
//   String name= printName();
//   print(name);
//   var age = printAge();
//   print(age.$2);
  
//   var(number,value) = printAge();
//   print(number);
//   print(value);
// }

// String printName(){
//   return ('ok');
// }

// (int,String) printAge(){
//   return(5,'tt');
// }



// //named argument
// void main(){
//   String namePerson ='ram';
//   printDetails( age: 12,name: namePerson);
// }

// void printDetails({required String name, required int age}){
//   print('$name  $age');
// }


// //pass null value with reuired value and normal arguments
// void main(){
//   String namePerson ='ram';
//   printDetails(false,name: namePerson);
// }

// void printDetails(bool value, {required String name,int? age}){
//   print('$name  $age $value');
// }




// //return and get the required type value
// void main(){
//   final stuff = printStuff();
  
//   print(stuff.name);
//   print(stuff.age);
    
// }

// ({int age, String name}) printStuff(){
//   return(age:12,name:'ok bye haha');
// }



// //return function from function
// void main(){
//   final value = printStuff();
//   value();
//   (){
//     print('yo');
//     }();
// }

// Function printStuff(){
//   return() {
//     print("yoo");
//   };
// }


// //use of arrow function
// void main(){
//   final value = printStuff();
//     print(value);
// }

// String printStuff() => 'Sumina';




// //use of arrow function not to return any value
// void main(){
//      printStuff();
//    }
// void printStuff()=> print('awa');














// //class that create many instances
// void main(){
//   print(Cookie().shape);
//   Cookie().baking();
// }

// class Cookie{
//   String shape = 'circle';
  
//   void baking(){
//     print("it is baking");
//   }
  
// }




// //class that create single instances
// void main(){
// //   final c = Cookie();    //it give immutable type variable c
//   Cookie c = Cookie();
//   print(c.shape);
//   c.baking();
// }

// class Cookie{
//   String shape = 'circle';
  
//   void baking(){
//     print("it is baking");
//   }
  
// }




// //constructos
// void main(){
//   final c = Cookie('rectangle');
//   c.baking();
// }

// class Cookie{
//   String shape;
//   Cookie(this.shape){
//     print('constructor is called');
//     baking();
//   }
  
//   void baking(){
//     print("it is baking");
//   }
  
// }





// //parameterized constructor with use of required
// void main(){
//   final c = Cookie(shape : 'rectangle');
//   c.baking();
// }

// class Cookie{
//   String shape;
//   Cookie({required this.shape}){
//     print('constructor is called');
//     print(shape);
//     baking();
//   }
  
//   void baking(){
//     print("it is baking");
//   }
  
// }





// //private variables -  can only be private to file not class
// //getter can be modified only at class, other are it is read only
// //setter allows to modify
// void main(){
//   final c = Cookie(shape : 'rectangle');
//   c.setWt = 15;
//   print(c.wt);
// }

// class Cookie{
//   String shape;
//   int _wt = 6;    
//   Cookie({required this.shape}){
//     print(shape);
//   }
  
//   //getter
//   //wt is made a getter and cant be modified outside
//   int get wt => _wt;
//   //setter
//   //to modify the private variable of getter from outside
//   set setWt(int weight){
//     _wt=weight;
//   } 
// }




// //static variable and function
// //constructor wont be called because static doesnt create the difference object
// void main(){
//   print(Constants.greeting);
//   print(Constants.bye);
//   print(Constants.givemeSomeValue());
  
// }


// class Constants{
//   Constants(){
//     print("constructor wont be called because static doesnt create the difference object");
//   }
//   static String greeting = 'hellow,how r u';
//   static String bye = "bye";
  
//   static int givemeSomeValue(){
//     return 10;
//     //here only static variable is accessed
//   }
// }





// //inheritance

// void main(){
//   dynamic value = 10; //use of as
//   print(value as int); 
  
//   final c=Car();
//   print(c.wheels);
  
//   final v = Vehicle();
//   print(v.accelerate());
// }
// class Vehicle{
//   int speed = 10;
//   bool isEngineWorking = false;
  
//   int accelerate(){
//     speed+=10;
//     print(speed);
//     return speed++;
//   }
// }


// class Car extends Vehicle{
//   int wheels=4;
// }









// //inheritance with use of override
// void main(){
//   final c=Car();
//   c.accelerate();
//   print(c.speed);
  
// }
// class SuperClass{
//   int speed = 15;

//   void accelerate(){
//     speed+=20;
//   }
// }
// class Vehicle extends SuperClass{
//   bool isEngineWorking = false;
// @override
//   void accelerate(){
//     speed+=10;
//   }
// }

// class Car extends Vehicle{
//   int wheels=4;
// }





// //implement keyword 
// //if use implement have to override all variable and methods
// //when implementing all is set on own and can't call the function form the base
// //can extend and implement same class but can do diff class togetherly


// void main(){
//   final v = Vehicle();
//   v.engineWorking;
//   v.stop();
//     print(v.engineWorking);
// }

// class Vehicle{
//   bool engineWorking = false;
//   bool lightOn = true;
//   int wheels = 10;
  
//   void accelerate(){
//     print('accelerating');
//   }
  
//     void stop(){
//     print('stopped');
//   }
// }

// class Car implements Vehicle{
//   @override
//    bool engineWorking = true;
//     @override
//   bool lightOn = true;
//     @override
//   int wheels = 4;
  
//     @override  
//     void accelerate(){
//     print('accelerating Car');
//   }
  
//   @override
//       void stop(){
//     print('not stopped');
//   }
  

// }

// class Bike extends Vehicle{
//        void stop(){
//          super.stop();
//        }
// }




// // abstract class
// void main(){
//   final car = Car();
//   car.accelerate();
// }

// abstract class Vehicle{
//   void accelerate();
//   int wheels = 10;
// }

// class Car extends Vehicle{
//   @override
//   void accelerate(){
//     print('accelerating $wheels');
//   }
// }






// //use of date tim
// void main(){
//   final date = DateTime.now();
//   print(date);
// }



// //oop concepts
// //polymorphism
// void main(){
//   Animal cat = Cat();
//   cat.sound();
//   cat = Dog();        //possible coz the dog extends from animal
//   cat.sound();  
// }

// class Animal{
//   void sound(){
//     print('animal make sound');
//   }
// }
// class Cat extends Animal{
//   @override
//   void sound(){
//     print('Cat make sound');
//   }
// }

// class Dog extends Animal{
//   @override
//   void sound(){
//     print('Dog make sound');
//   }
// }




// //mixin
// void main(){
//   final a = Animal();
//   a.fn();
// }

// mixin Jump{
//   int jumping = 10;
// }

// class Animal with Jump{
//   void fn(){
//     print(jumping);
//   }
// }



// //class modifiers
// //sealed class
// void main(){
//   Animal animal = Cat();
  
//   switch (animal){
//     case Dog():
//       print('dog');
//     case Cat():
//       print('cat');
//     case Human():
//         print('human');
//   }
// }

// sealed class Animal{}
// class Human implements Animal{}
// class Dog implements Animal{}
// class Cat extends Animal{}



//  // final modifiers - sealed class cant have contructor but final class can have and it dont give error when swich class dont have all values
//  // syntax - final class Animal{}



//  //List - abstract class  - can include any data type values
// void main(){
//   List a = [10,20,30,'ok'];
//   print(a);
//   print(a[2]);
//   print(a[3]);
  
//   //to avoid all type of data types
//   List<int> marks = [10,20,40,50];
//   print(marks[3]);
// }



// //it create a T - int type of Student 
// void main(){
//   final student = Student(20);
//   print(student.name);     
// }
// class Student<T>{
//   final T name;
//   Student(this.name);
// }






// //creat a customizable list of class
// void main(){
//   List <Student> studentList = [
//     Student('aa'),
//     Student('bb'),
//     Student('cc'),
//   ];
//   print(studentList[1].name);

//   final student2 = studentList[2];
//   if(student2 is Student){
//         print(student2.name);
//   }
//   }

// class Student{
//   final String name;
//   Student(this.name);
// }




// //customize in list of Student class
// void main(){
//   final bbToRemoveFromList = Student('bb');
//   List <Student> studentList = [
//     Student('aa'),
//     bbToRemoveFromList,
//     Student('cc'),
//   ];
  
//   print(studentList);
  
//   //to replace in the list
//   studentList[2] = Student('dd');
//   print(studentList);
  
  
//   //to add in the list
//   studentList.add(Student('new added'));    //any thing to add must be of type Student not of string
//   print(studentList);
  
//   //to add at speicific location
//   studentList.insert(0,Student('added at location 0'));
//   print(studentList);
  
  
//   //to remove
//   //studentList.remove(Student('bb'));    //only it is not enough coz this bb is diff than bb from the list
//   studentList.remove(bbToRemoveFromList);     //from this same instance is accessed
//   print(studentList);
  
  
//   //to reverse
//   print(studentList.reversed.toList()); // to reverse and covert into list back

//   //contains - to know if list contain sth or now
//   print(studentList.contains(Student('aa')));
  
// }

// class Student{
//   final String name;
//   Student(this.name);
  
  
//   //overriding the existing list into string coz it give output as instance of class rather than the name of student
//     @override
//   String toString() => 'Student: $name';
// }









// //customize in list of Student class - to filter using for loop
// void main(){
//   List <Student> studentList = [
//     Student('aa',20),
//     Student('bb',10),
//     Student('cc',30),
//   ];
  
//   print(studentList);
  
  
//   //to filter according to marks
// //   1. create a new list of empty student
// //   2. run for loop
// //   3. check conditiom
// //   4. if true add in new list
// //   5. print
//   List <Student> filtered = [];
  
//   for(int i=0;i<studentList.length;i++){
//     if(studentList[i].marks>=20){
//     filtered.add(studentList[i]);
//     }
//   }
//   print(filtered);
  
// }

// class Student{
//   final String name;
//   final int marks;
//   Student(this.name, this.marks);
  
  
//   //overriding the existing list into string coz it give output as instance of class rather than the name of student
//     @override
//   String toString() => 'Student: $name';
// }







// //filtereing list of Student class 
// void main(){
//   List <Student> studentList = [
//     Student('aa',20),
//     Student('bb',10),
//     Student('cc',30),
//   ];
  
//   print(studentList);
  
  
//   //- to filter using foreign loop
// //   List <Student> filtered = [];  
// //   for(final student in studentList){    //to get acces to student class directly, can use final or Student
// //     if(student.marks>=20){
// //     filtered.add(student);
// //     }
// //   }
// //   print(filtered);
  
  
//   //- without using foreign loop
//   final filtered = studentList.where((studentList) =>studentList.marks >=20);
  
//   print(filtered);    //it is Iterable<Student>
//   print(filtered.runtimeType);    //it shows that it is Iterable<Student>
//   print(filtered.toList());     //it is list type i.e List<Student>
  
// }

// class Student{
//   final String name;
//   final int marks;
//   Student(this.name, this.marks);
  
  
//   //overriding the existing list into string coz it give output as instance of class rather than the name of student
//     @override
//   String toString() => 'Student: $name';
// }









// //sets - cant have repeated elements i.e even have repeated then it remove the duplicate elements

// void main(){
//   final studentAa= Student('aaa');
    
//     Set<Student> studentSet = {
//   Student('bb'),
//   Student('cc'),
//   studentAa,
//   studentAa,
//     };

//     print(studentSet);
    
//     //can use .toSet() to convert into set from other type
//     }
// class Student{
//   final String name;
//   Student(this.name);
  
//   @override
//   String toString()=> '$name';
  
// }




// //map - key value pair where every pais is unique
// //'key' = 'value';
// //key must be unique , value can or cannot
// //used to store and retrieve data

// void main(){
//   Map marks = {
//       'aa':10,
//       'bb':20,
//       'cc':30,
//   };
//   print(marks);
//   print(marks['aa']);     //pass key here
  
  
//   Map<String,int> details ={      //shows string int pair
//       'aa':10,
//       'bb':20,
//       'cc':30,    
//   };
//   print(details['aa']?.isOdd);    //so that null value nahoss
//   }



// class Student{
//   final String name;
//   Student(this.name);
  
// }







// //operation on map
// void main(){
//   Map<String,int> details ={      //shows string int pair
//       'aa':10,
//       'bb':20,
//       'cc':30,    
//   };
 
//   //add to map
//   details['dd'] = 40;
//   print(details);
  
//   //or add by property
//   details.addAll({
//     'ee': 60,
//     'ff': 90,
//   });
//   print(details);
  
//   //to upadete or edit value
//   details['aa'] = 50;
//   print(details);
  
  
//   //to remove
//   details.remove('aa');
//   print(details);

  
//   //using for loop
//   for(int i=0;i<details.length;i++){
//     print(details.keys.toList()[i]);      //need to convert to list to access [i] type data, can't do keys[i]

//   }
  
//   //can loop through using map details.map()
    
//    //can also use foreach
//   details.forEach((key,val){
//     print('$key : $val');
//   });

// }

// class Student{
//   final String name;
//   Student(this.name); 
// }




// //list of maps

// void main(){
//   List<Map<String, int>> marks = [{
//     'Math' : 25,
//     'cs' : 14,
//     'English' : 20,
//   },
                                  
//   {
//     'Math' : 22,
//     'cs' : 11,
//    'English' : 21,
//   },
//      {
//     'Math' : 12,
//     'cs' : 18,
//    'English' : 21,
//      }
//    ];
  
//   marks.map((e){    //map ti iterate
//     print(e);         //output - {Math: 25, cs: 14, English: 20}
//     e.forEach((key,val){
//       print('$key : $val');   //coz foreach ma ni key val vanne nai variable used xa
//                                 // output Math : 25
//                                 //         cs : 14
//                                 //         English : 20
//     });
//   }).toList();      //it is iterable type so converted to list
  
// }

// class Student{
//   final String name;
//   Student(this.name); 
// }





// //enums- enumerations -  globally declared
// //such that is employee type will be of definte type so to get definite value used enum
// void main(){
//   final employee1 = Employee('aa',EmployeeType.admin);
//   final employee2 = Employee('bb',EmployeeType.user1);
//   final employee3 = Employee('cc',EmployeeType.user2);
//   employee1.fn();
// }

// enum EmployeeType{
//   admin,
//   user1,
//   user2
// }


// class Employee{
//   final String name;
//   final EmployeeType type;
  
//   Employee(this.name,this.type);
  
//   void fn(){
//     switch(type){
//       case EmployeeType.admin:
//           print('admin');
//       case EmployeeType.user1:
//           print('user1');
//       case EmployeeType.user2:
//           print('user2');
//                         //defualt not needed co enum allow specific value only
//     }
//   }
// }





// //enhanced enum ( newly introduced)  - use contructor
// void main(){
//   final employee1 = Employee('aa',EmployeeType.admin);
//   final employee2 = Employee('bb',EmployeeType.user1);
//   final employee3 = Employee('cc',EmployeeType.user2);
//   employee1.fn();
// }

// enum EmployeeType{
//   admin(200000),
//   user1(100000),
//   user2(100000);
  
//   final int salary;
//   const EmployeeType(this.salary);
// }


// class Employee{
//   final String name;
//   final EmployeeType type;
  
//   Employee(this.name,this.type);
  
//   void fn(){
//     switch(type){
//       case EmployeeType.admin:
//             print(type.name);
//             print(type.salary);
//       case EmployeeType.user1:
//             print(type.name);
//           print(type.salary);
//       case EmployeeType.user2:
//             print(type.name);     
//         print(type.salary);
//                         //defualt not needed co enum allow specific value only
//     }
//   }
// }







// //exception handling
// void main(){
//   print(10~/3);       //10/3 = 3.333 -> 3
//   print(10/0);      //output is infinity

  
//   try{
//       print(10~/0);     //gives error
//   }catch(e){             //e= exception
//     print(e);           //output - Unsupported operation: Result of truncating division is Infinity: 10 ~/ 0
//   }
  
//   //the code here can run even iff there was error in code inside try block

  
//   //use of finally
//   try{
//       print(10~/0);     //gives error
//   }catch(e){             //e= exception
//     print(e);           //output - Unsupported operation: Result of truncating division is Infinity: 10 ~/ 0
//   }finally{
//     print('it gets executed i.e finally executed even if try code or catch code run');
//   }
  

//       //use of on
//     try{
//       print(10~/0);     
//   }on Exception catch(e){           //on allows to catch specific instruction like Exception or FormatException or other     
//     print(e);        
//   } catch(e){
//       print('an error occured');      // output is an error occured
//     }

// }






// //futures - in js it is promises -  a class that represent sthm is completed in future
// // asynchrounous programming
// //allows to run the ask withour blocking
// //when any request is sent, the  program doesnt wait to finish getting the response
// void main() async{
//   print('hello');
//   final result = await giveResultAfter2Sec();
//   print(result);
//   print('bye');
// }

// Future<String> giveResultAfter2Sec(){   //it is asynchrounous func, after 2 sec the result is string
//   return Future.delayed(Duration(seconds:2),() async{   //Duration is the built in class that takes - duration and computational string i.e. one to return
//    return 'hey!';  
//   });
// }    
// //output : Console
// // hello
// // hey! (after 2 sec gets printed)
// // bye





// //dont use async wait when used then, both does similar works
// void main() {
//   print('hello');
//   giveResultAfter2Sec().then((val){
//     print(val);
//   });
//   print('bye');
// }

// Future<String> giveResultAfter2Sec(){   //it is asynchrounous func, after 2 sec the result is string
//   return Future.delayed(Duration(seconds:2),() async{   //Duration is the built in class that takes - duration and computational string i.e. one to return
//    return 'hey!';  
//   });
// }    

// //output Console
// // hello
// // bye
// // hey!     (gets printed after 2 sec)  -  this is what then does







// //using dependencies
// //using https://pub.dev/packages/http
// //using dartpad.dev to code
// //det some data from the service is 
// // to know more avout the import https://github.com/dart-lang/http/blob/master/pkgs/http/lib/http.dart

// import 'package:http/http.dart' as http;
// void main() async {
//   var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');      //(authority, path)
//   final response = await http.get(url);     //.get requires a url
 
//   print(response.body);   //respond gives all data as header, status code so response.body
  
  
// }
// //this way successfully fetched data from https://jsonplaceholder.typicode.com/users/1
// // output
// //   {
// //   "id": 1,
// //   "name": "Leanne Graham",
// //   "username": "Bret",
// //   "email": "Sincere@april.biz",
// //   "address": {
// //     "street": "Kulas Light",
// //     "suite": "Apt. 556",
// //     "city": "Gwenborough",
// //     "zipcode": "92998-3874",
// //     "geo": {
// //       "lat": "-37.3159",
// //       "lng": "81.1496"
// //     }
// //   },
// //   "phone": "1-770-736-8031 x56442",
// //   "website": "hildegard.org",
// //   "company": {
// //     "name": "Romaguera-Crona",
// //     "catchPhrase": "Multi-layered client-server neural-net",
// //     "bs": "harness real-time e-markets"
// //   }
// // }




// //to access specific value
// import 'package:http/http.dart' as http;
// import 'dart:convert';      //built in dart - to convert string intp map
// void main() async {
//   var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');      //(authority, path)
//   final response = await http.get(url);  
 
//   print(jsonDecode(response.body)['name']);   //its taking string and returning dynamic  
// }

// // output - Leanne Graham






// //streams
// //asynchrounous generator that continuously listen/ get the user output while in future send request and get some value back
// //like geeting updates
// import 'dart:async';
// void main() async{
//   print(await countDown().first);    //get first value from stream i.e.5
//   countDown().listen((val){     //listen for the value, is new value comes
//     print(val);
//   });
  
//     countDown2().listen((val){     //listen for the value, is new value comes
//     print(val);
//   });
// }


// Stream<int> countDown() async*{
//   for(int i=5;i>0;i--){
//     yield i;      //can't use return coz async* present
//     await Future.delayed(Duration(seconds :1)); //to get value 5 4 3 2 1 slowly
//   }
// }


// Stream<int> countDown2(){
//   final controller = StreamController();      //to have control on the stream
//   controller.sink.add(100);
//   controller.sink.close;        //to close sink - nice habit
  
//   return Stream.periodic(Duration(seconds :1),(val){   //it prints 0 1 2 3 to infinity on periodically value 1 sec
//     return val;
//   });
  
//   controller.close();     //to close - good habit
// }







// //records - immutable
// // records are rela values. u can store them in variables, pass then to and from functions and store then in lists.
// void main(){
//   final rec = (4.5,'hi',true,2);
//   print(rec.$2);    //$2 are getters, record have no setter so can;t do records.$2 = 5
//   print(rec);
// }

// ({double point, String greeting}) giveMeSomeDoubles(){
//   return (point:4.5,greeting:'Hi!!!!');
// }

// //output - 
// //hi
// //(4.5, hi, true, 2)







// patterns and patterns matching
// void main(){
//   final list = [1,2,3,4,5,6,7,8,9];
//   final [a,b,c, ...] = list;     //this ... can contain other value from 4 to 9 whic 1 2 3 is contained in a b c
//   print('$a $b $c');            //output - 1 2 3
  
//   final [x,y,z,...m] = list;
//   print('$x $y $z $m');       //output - 1 2 3 [4, 5, 6, 7, 8, 9
// }






// //using class for pattern matching
// void main(){
//   final human = Human('Nice Name',2);
  
// //   print(human.name);
// //   print(human.age);
//   //instead of above we can do is
  
//   final Human(:name, :age) = human;   // : is used for renaming so we can do is name : nameeee and next time use is nameeee to access
//   print(name);    //output - nice Name    
// }

// class Human{
//   final String name;
//   final int age;
//   Human(this.name, this.age);
// }







// // Extension
// void main(){
//   String motivation = 'this is nice';
// //     final motivationss = motivation[0].toUpperCase() + motivation.substring(1,12);    //output - This is nice
// //   print(motivationss);
//   motivation = motivation.capitaliseFirstLetter();
//   print(motivation);
  
//   String name = 'sumina';
//   name = name.capitaliseFirstLetter();
//   print(name);
// }

// extension CapitaliseFirstLetter on String{
//   String capitaliseFirstLetter(){
//     return this[0].toUpperCase() + this.substring(1);    //or -  return this[0].toUpperCase() + .substring(1);  
// //     substring(start,end);   here if only starting value is kept - it means till the end of string
//   }
// }





























