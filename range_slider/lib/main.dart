import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Range Slider',
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
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels =RangeLabels(values.start.toString(),values.end.toString()); 

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          activeColor: Colors.green,
          divisions: 10,  //0 to 1 into 10 divisions
          onChanged: (newValue){
            values = newValue;
            print('${newValue.start},${newValue.end}');
            setState(() {
              
            });

          },
          
        ),
      )
    );
  }
}
