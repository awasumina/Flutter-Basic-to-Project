import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

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

    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      
 body : Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      'Current Time:${DateFormat('jms').format(time)}',
      style: TextStyle(
        fontSize: 50,
      ),
    ),
    ElevatedButton(
      onPressed: () {
        setState(() {
          // Code to update the time if necessary
        });
      },
      child: Text(
        'Refresh Time',
        style: TextStyle(
          fontSize: 23,
        ),
      ),
    ),
  ],
)

 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
