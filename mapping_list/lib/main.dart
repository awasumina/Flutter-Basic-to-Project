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

  var arrData=[

    {'name': 'Abigail', 'mobno': '9876543210', 'unread': '3'},
    {'name': 'Aurora', 'mobno': '9876543211', 'unread': '1'},
    {'name': 'Angel', 'mobno': '9876543212', 'unread': '5'},
    {'name': 'Adrian', 'mobno': '9876543213', 'unread': '0'},
    {'name': 'Addison', 'mobno': '9876543214', 'unread': '2'},
    {'name': 'Alice', 'mobno': '9876543215', 'unread': '4'},
    {'name': 'Audrey', 'mobno': '9876543216', 'unread': '6'},
    {'name': 'Aaliyah', 'mobno': '9876543217', 'unread': '8'},
    {'name': 'Autumn', 'mobno': '9876543218', 'unread': '9'},
    {'name': 'Amari', 'mobno': '9876543219', 'unread': '7'},
    {'name': 'Aubrey', 'mobno': '9876543220', 'unread': '2'},
    {'name': 'Atlas', 'mobno': '9876543221', 'unread': '4'},
    {'name': 'Athena', 'mobno': '9876543222', 'unread': '1'},
    {'name': 'Archer', 'mobno': '9876543223', 'unread': '3'},
  ];




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing:CircleAvatar(
                child: Text(value['unread'].toString(),
                style: TextStyle(color: Colors.white),),
                radius: 12,
                backgroundColor: Colors.blue,
                ) ,
            );


          }).toList(),
        ),
      )
    );
  }
}
