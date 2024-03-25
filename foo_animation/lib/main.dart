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

  var _width=200.0;
  var _height = 100.0;

  bool flag=true;
  // Color bgcolor = Colors.blueGrey;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color:Colors.blueGrey,
    );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              // color: bgcolor,
              decoration: myDecor,
              curve: Curves.easeInBack,
              duration: Duration(seconds: 1),
              width: _width,
              height: _height,),
          ),

          SizedBox(
            height: 11,
          ),


            ElevatedButton(onPressed: (){
              if(flag==true){
              _width=100;
              _height=200;
              flag=false;
              // bgcolor= Colors.amber;
              myDecor=BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color:Colors.amber,
              );
              }
              else {
                _width=200;
                _height=100;
                flag=true;
                // bgcolor=Colors.grey;
                myDecor=BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color:Colors.grey,
              );

              }

              setState(() {
                
              });

            }, child: Text('Animate'),
            ),


        ],
      )
    );
  }
}
