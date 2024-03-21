import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirst = true;

  void reload() {
    setState(() {
      isFirst = !isFirst;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), reload);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: AnimatedCrossFade(
        duration: Duration(seconds: 2),
        firstChild: Container(
          width: 200,
          height: 200,
          color: Colors.grey.shade200,
        ),
        secondChild: Image.asset('assets/image/1.JPG', width: 200, height: 200),
        crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
