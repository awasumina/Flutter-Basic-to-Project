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
  var myOpacaity =1.0;
  bool visible=true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacaity, 
              duration:Duration(seconds: 1),
              curve: Curves.slowMiddle,
        
              child:Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              )
              ),


              SizedBox(
                height: 11,
              ),


              ElevatedButton(onPressed: (){
                myOpacaity=0.0;

                if(visible){
                  myOpacaity=0.0;
                  visible=false;
                }
                else{
                  myOpacaity=1.0;
                  visible=true;
                }

                setState(() {
                  
                });

              }, child: Text('Change Opacity'),
              )
          ],
        ),
      )
    );
  }
}
