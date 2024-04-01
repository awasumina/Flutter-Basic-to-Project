import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Basic Calculation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        color:Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller :no2Controller,
                  ),
              
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());   //we get number from textfield then it is in form text so converting to integer using int.parse
                          var no2 = int.parse(no2Controller.text.toString());
                          var sum = no1 + no2;
                          result = "The sum of $no1 and $no2 is $sum";
                          setState(() {});
                                
                        }, child: Text('Add'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white
                        ), ),
                                
                                
                                
                                
                     

                                
                                
                       child: Text('Multiply'),                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white
                        ), ),
                                
                        ElevatedButton(onPressed: (){
                          var no1=int.parse(no1Controller.text.toString());
                          var no2=int.parse(no2Controller.text.toString());

                          var div = no1/no2;
                          result = "The division of $no1 by $no2 is ${div.toStringAsFixed(2)}";
                          setState((){});
                                
                                
                                
                        }, child: Text('Division'),                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white
                        ), ),
                      ],
                    ),
                  ),
              
              
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(result,
                    style: TextStyle(
                      fontSize: 25, color:Colors.white),),
                  )
                ],
              
                
              ),
            ),
          ),
          ),

      )
    );
  }
}
