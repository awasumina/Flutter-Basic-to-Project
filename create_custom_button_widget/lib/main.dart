import 'package:create_custom_button_widget/widgets/rounded_button.dart';
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: RoundedButton(
                btnName: 'Login',
                icon: Icon(Icons.lock),
                callback: (){
                  print('logged in');
                },
                textStyle: TextStyle(
                  fontSize: 24,
                )
              
              ),
            ),


          Container(
            height: 20,
          ),

            SizedBox(
          width: 100,
          child: RoundedButton(
            btnName: 'Press',
            callback: (){
              print('Playing');
            },
            bgColor: Colors.green,
            textStyle: TextStyle(
              fontSize: 24,
            )
          
          ),
        ),
      


          ],
        ),
      
      )
      );
    
  }
}
