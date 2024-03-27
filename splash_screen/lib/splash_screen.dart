import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/introscreen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
} 

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {  
    super.initState();

    Timer(Duration(seconds: 3), () { //replacing  the current splash screen with home page after 1 second such that home page bata back garda splash screen na awos
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=>Introscreen(),
      ) );   
      

     });


  }

  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        color:Colors.blue,
        child: Center(
          child: Text('Wait for a while',
          style: TextStyle(fontSize: 34,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          ),
          )
          ),
      ),

    ); 
  }
}