import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),



    //decoration on box border
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.blue.shade50,
        child :Center(
          child: Container(
            width: 100,
            height: 100,

            decoration: BoxDecoration(
              color: Colors.blueGrey,
              // borderRadius: BorderRadius.circular(11),
              
              border: Border.all(
                width: 10,
                color: Colors.yellowAccent,
              ),

              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: const Color.fromARGB(255, 19, 95, 149),
                  spreadRadius: 7,               
                )
              ],
              
              shape: BoxShape.circle,
              
            ),
          ),
        )
      )




    );
  }
}
