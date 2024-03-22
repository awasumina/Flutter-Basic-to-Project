import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.orange.shade100,
                Colors.purple.shade400,
              ],
              begin: FractionalOffset(1.0,0.5),
              end:FractionalOffset(0.0,1.0),
              stops: [0.5,1.0] )
          ),
          child: SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius:BorderRadius.all(Radius.circular(30)) ,
              child: Image.asset('assets/images/Capture.PNG'),
            ),
          ),
        ),
      )
    );
  }
}
