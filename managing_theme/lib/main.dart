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
        primarySwatch: Colors.amber,
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 193, 183, 11)),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontSize: 14),
        )
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
      body: Column(
        children: [
          Text('Hello world',style:Theme.of(context).textTheme.displayLarge!.copyWith(color:Colors.brown) ),//use copyWith to ad addional with the theme of displayLarge. Use of ! is to prevent null

          Text('Bye world',style: Theme.of(context).textTheme.bodySmall),

        ]
      )
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
